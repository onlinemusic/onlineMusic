package web;

import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.*;
import utils.EMailTool;
import utils.Encryption;
import utils.Message;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.net.URLDecoder;
import java.util.Date;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    private static Message message=new Message();

    //注册用户
    @PostMapping(value="/registerUser")
    public String registerUser(User user, HttpServletRequest request,HttpSession session){
        user.setRegisterDate(new Date());
        Integer result=userService.checkUser(user);
        if(result == 1){ //用户不存在
            userService.addUser(user);
            session.setAttribute("user",user);

            return "frontdesk/indexall";  //返回首页
        }else if(result == 0){ //用户已存在
            message.setMessage("用户已经存在");
        }else{
            message.setMessage("服务器响应失败，请稍后重试");
        }
        request.setAttribute("message", message);
        return "frontdesk/message";
    }

    //登录
    @PostMapping("/login")
    public String login(User user,HttpServletRequest request,HttpSession session){
        Integer result=userService.logIn(user);
        if(result == 0) { //用户不存在
            message.setMessage("用户不存在");
        }else if(result == 1){
            message.setMessage("账号密码错误");
        }else if(result == 3){
            session.setAttribute("user",userService.findUser(user.getEmail()));
            return "WEB-INF/jsp/admin/index";
        }else if(result == 2){
            session.setAttribute("user",userService.findUser(user.getEmail()));
            return "frontdesk/indexall";
        } else {
            message.setMessage("服务器响应失败，请稍后重试");
        }
        request.setAttribute("message", message);
        return "frontdesk/message";
    }

    //退出登录
    @GetMapping(value="/userlogout")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "frontdesk/indexall";
    }

    //发送邮箱验证码
    @PostMapping(value="/sendemail")
    @ResponseBody
    public JSONObject sendEmail(@RequestBody String toEmail, HttpSession session) throws Exception {
        JSONObject jsonObject = new JSONObject();
        //截取Json字符串
        toEmail=URLDecoder.decode(toEmail,"utf-8");
        toEmail=toEmail.substring((toEmail.indexOf('='))+1);

        User user =userService.findUser(toEmail);
        if(user == null) { //用户不存在
            jsonObject.put("result",0);
        }else{
            //随机生成6为验证码
            Integer rand=(int)((Math.random()*9+1)*100000);
            session.setAttribute("code",rand);
            EMailTool.sendReturnPassword(toEmail,rand);
            jsonObject.put("result",1);
        }
        return jsonObject;
    }

    //修改密码
    @PostMapping(value = "/changepassword")
    public String changePassword(User user,@RequestParam(value = "code") String code,HttpSession session,HttpServletRequest request){
        String codeTrue= ((Integer) session.getAttribute("code")).toString();
        if(codeTrue.equals(code)){
            Encryption.encryptPasswd(user);
            userService.updatePassword(user);
            session.removeAttribute("code");
            return "frontdesk/signin";
        }else{
            message.setMessage("验证码不正确");
        }
        request.setAttribute("message", message);
        return "frontdesk/message";
    }

}

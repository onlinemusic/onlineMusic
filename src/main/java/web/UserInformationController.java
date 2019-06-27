package web;

import domain.User;
import domain.UserInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import service.UserInfomationService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
@RequestMapping(value="/vip")
public class UserInformationController {

    @Autowired
    UserInfomationService userInfomationService;

    //获取vip信息
    @GetMapping(value="/{userId}")
    public String showvip(@PathVariable Integer userId, HttpServletRequest request){
        UserInformation userInformation=userInfomationService.showvip(userId);

        request.setAttribute("userInforamtion",userInformation);
        return "frontdesk/mymember";
    }

    //充值会员
    @PostMapping
    public String addvip(@RequestParam(value="monthnumber") Integer monthnumber,
                         @RequestParam(value="yearnumber") Integer yearnumber,
                         @RequestParam(value="id") Integer id,
                         HttpServletRequest request) throws Exception {
        Calendar calendar = Calendar.getInstance();
        UserInformation userInformation=userInfomationService.showvip(id);
        if(monthnumber !=0 || yearnumber !=0) {
            userInformation.setVip(1);
            if (userInformation.getVip() == 0) { //重新购买的
                Date date = new Date();
                calendar.setTime(date); //设置起时间

                userInformation.setVsTime(date);  //会员开始时间

                calendar.add(Calendar.MONTH, monthnumber);
                calendar.add(Calendar.YEAR, yearnumber);
                userInformation.setVeTime(calendar.getTime()); //会员结束时间
            } else { //续费的
                Date date = userInformation.getVeTime();
                calendar.setTime(date); //设置起时间

                calendar.add(Calendar.MONTH, monthnumber);
                calendar.add(Calendar.YEAR, yearnumber);
                userInformation.setVeTime(calendar.getTime()); //会员结束时间
            }
            userInfomationService.updatevip(userInformation);
        }
        request.setAttribute("userInforamtion",userInformation);
        //重定向
        return "redirect:/vip/"+id;

    }
}

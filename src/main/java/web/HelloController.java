package web;

import dao.UserDao;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @Autowired
    UserDao userDao;
    @RequestMapping("/hello")
    public String hello(){
        return "index";
    }

    @RequestMapping("/test")
    public User test(){
        User user = userDao.findByUserID("1");
        return user;
    }
}

package service;

import domain.User;
import org.springframework.stereotype.Service;


public interface UserService {

    //判断是否已存在用户(1-代表没有,0-代表存在)
    public Integer checkUser(User user);

    //添加用户
    public void addUser(User user);

    //登录
    public Integer logIn(User user);

    //找用户，然后返回
    public User findUser(String email);

    //修改密码
    public void updatePassword(User user);
}

package service.impl;

import dao.UserDao;
import domain.User;
import domain.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.UserService;
import utils.Encryption;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Integer checkUser(User user) {
        try {
            User usercheck=userDao.findByEmail(user.getEmail());
            if(usercheck == null) return 1;
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public void addUser(User user) {
        try {
            // 根据密码生成盐和加密密码
            Encryption.encryptPasswd(user);
            userDao.save(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Integer logIn(User user) {
        try {
            User usercheck=userDao.findByEmail(user.getEmail());
            if(usercheck == null){  //不存在用户
                return 0;
            }else{  //存在用户
                if(Encryption.checkPassword(usercheck,user.getPassword())){
                    if(usercheck.getType() == UserType.user) return 2; //普通用户
                    else return 3; //管理员
                }else{
                    return 1;  //密码错误
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public User findUser(String email) {
        try {
            return userDao.findByEmail(email);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void updatePassword(User user) {
        try {
            userDao.updatePassword(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

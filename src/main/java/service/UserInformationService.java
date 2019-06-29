package service;

import domain.User;
import domain.UserInformation;

public interface UserInformationService {

    //获取用户信息
    public UserInformation showvip(Integer userId);

    //更新vip
    public void updatevip(UserInformation userInformation);
}

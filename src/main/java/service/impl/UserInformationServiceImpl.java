package service.impl;


import dao.UserInformationDao;
import domain.User;
import domain.UserInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.UserInfomationService;

@Service
@Transactional
public class UserInformationServiceImpl implements UserInfomationService {

    @Autowired
    private  UserInformationDao userInformationDao;

    @Override
    public UserInformation showvip(Integer userId) {
        try {
            return userInformationDao.findUserInformation(userId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void updatevip(UserInformation userInformation) {
        try {
            userInformationDao.save(userInformation);
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}

package dao;

import domain.User;
import domain.UserInformation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInformationDao extends JpaRepository<UserInformation, Integer> {

    @Query(nativeQuery = true,value = "select * from user,userinformation " +
            "where user.userInformation_userInformationId=userinformation.userInformationId " +
            "and user.userId = ?1")
    //获取用户信息
    public UserInformation findUserInformation(Integer userId);
}

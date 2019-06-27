package dao;

import domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends JpaRepository<User, Integer> {
    //检测用户是否存在
    public User findByEmail(String email);

    //修改密码
    @Modifying
    @Query(value = "update user u set u.password = :#{#user.password} ,u.salt = :#{#user.salt} where u.email= :#{#user.email}", nativeQuery = true)
    public void updatePassword(@Param("user") User user);
}

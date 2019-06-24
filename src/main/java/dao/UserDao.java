package dao;

import domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
@Component
public interface UserDao extends JpaRepository<User,String> {
    public User findByUserID(String userId);
}

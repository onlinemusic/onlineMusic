package domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;  //用户id
    @Column(nullable = false, length = 20)
    @Enumerated(EnumType.STRING)
    private UserType type;  //用户类型
    @Column(nullable = false, length = 50)
    private String userName; //用户名
    @Column(nullable = false)
    private String email;  //邮箱(账号)
    @Column(nullable = false)
    private String password;  //密码
    @Temporal(TemporalType.DATE)
    private Date registerDate;  //注册日期
    @Column(nullable = false, columnDefinition = "varchar(20) default 'use'")
    private String enable;  //可用性
    @Column(nullable = false)
    private String salt;  //盐
    @OneToOne(cascade = CascadeType.ALL)  //一对一
    private UserInformation userInformation;

    public User() {
        userInformation=new UserInformation();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public UserType getType() {
        return type;
    }

    public void setType(UserType type) {
        this.type = type;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String getEnable() {
        return enable;
    }

    public void setEnable(String enable) {
        this.enable = enable;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public UserInformation getUserInformation() {
        return userInformation;
    }

    public void setUserInformation(UserInformation userInformation) {
        this.userInformation = userInformation;
    }
}

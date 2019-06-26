package domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "userinformation")
public class UserInformation {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer userInformationId;  //用户信息表id
    @Column(nullable = false, columnDefinition = "int(5) default 0")
    private Integer vip=0;   //是否为vip(1-是,0-否)
    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private Date vsTime;  //vip开始日期
    @Column(nullable = true)
    @Temporal(TemporalType.DATE)
    private Date veTime;  //vip结束日期

    public Integer getUserInformationId() {
        return userInformationId;
    }

    public void setUserInformationId(Integer userInformationId) {
        this.userInformationId = userInformationId;
    }

    public Integer getVip() {
        return vip;
    }

    public void setVip(Integer vip) {
        this.vip = vip;
    }

    public Date getVsTime() {
        return vsTime;
    }

    public void setVsTime(Date vsTime) {
        this.vsTime = vsTime;
    }

    public Date getVeTime() {
        return veTime;
    }

    public void setVeTime(Date veTime) {
        this.veTime = veTime;
    }

}

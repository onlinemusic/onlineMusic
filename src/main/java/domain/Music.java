package domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "music")
public class Music {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length = 20)
    private String musicName;
    @Column(length = 20)
    private String singer;
    @Column(columnDefinition="varchar(255) COMMENT 'mp3地址'")
    private String src;
    @Column(columnDefinition="varchar(255) COMMENT '封面地址'")
    private String pictureSrc;
    @Column(columnDefinition="int(11) default '0' COMMENT '是否是VIP歌曲，1-是，0-否'")
    private Integer vip;
    @Column(columnDefinition="date COMMENT '上传时间'")
    @Temporal(TemporalType.DATE)
    private Date uploadDate;
    @ManyToOne(cascade=CascadeType.MERGE,fetch=FetchType.EAGER )
    private MusicType musicType; //外键

    public String getPictureSrc() { return pictureSrc; }

    public void setPictureSrc(String pictureSrc) { this.pictureSrc = pictureSrc; }

    public MusicType getMusicType() {
        return musicType;
    }

    public void setMusicType(MusicType musicType) {
        this.musicType = musicType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public Integer getVip() {
        return vip;
    }

    public void setVip(Integer vip) {
        this.vip = vip;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }
}

package domain;

import javax.persistence.*;

@Entity
@Table(name = "musictype")
public class MusicType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer musicTypeId;
    @Column(length = 200)
    private String typeName;  //分类名

    public Integer getMusicTypeId() {
        return musicTypeId;
    }

    public void setMusicTypeId(Integer musicTypeId) {
        this.musicTypeId = musicTypeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}

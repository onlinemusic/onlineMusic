package dao;

import domain.Music;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MusicDao extends JpaRepository<Music, Integer> {

    @Query(nativeQuery = true, value = "select * from music order by music.uploadDate desc limit ?1,?2")
    public List<Music> showmusic(Integer start,Integer end);

    @Query(nativeQuery = true, value = "select * from music where music.id=?1")
    public Music findByMusicId(Integer Id);
}

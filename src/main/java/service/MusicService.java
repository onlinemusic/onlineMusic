package service;

import domain.Comment;
import domain.Music;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

public interface MusicService {

    //取歌曲
    public List<Music> showmusic(Integer start,Integer end);

    //取单首歌曲
    public Music singlemusic(Integer Id);

    //分类取歌曲
    public Page<Music> typemusic(Specification<Music> spec, Pageable pageable);
}

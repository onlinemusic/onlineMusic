package service;

import domain.Music;

import java.util.List;

public interface MusicService {

    //取歌曲
    public List<Music> showmusic(Integer start,Integer end);

    //取单首歌曲
    public Music singlemusic(Integer Id);
}

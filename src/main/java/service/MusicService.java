package service;

import domain.Music;

import java.util.List;

public interface MusicService {

    //取歌曲
    public List<Music> showmusic(Integer start,Integer end);
}

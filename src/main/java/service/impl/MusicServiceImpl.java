package service.impl;

import dao.MusicDao;
import domain.Music;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.MusicService;

import java.util.List;

@Service
@Transactional
public class MusicServiceImpl implements MusicService {

    @Autowired
    private MusicDao musicDao;

    @Override
    public List<Music> showmusic(Integer start,Integer end) {
        try {
            return musicDao.showmusic(start,end);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

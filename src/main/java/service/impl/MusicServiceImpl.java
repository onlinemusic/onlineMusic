package service.impl;

import dao.MusicDao;
import domain.Music;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
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

    @Override
    public Music singlemusic(Integer Id) {
        try {
            return musicDao.findByMusicId(Id);
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Page<Music> typemusic(Specification<Music> spec, Pageable pageable) {
        try {
            return musicDao.findAll(spec,pageable);
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

package service.impl;

import dao.MusicTypeDao;
import domain.MusicType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MusicTypeService;

import java.util.List;

@Service
public class MusicTypeServiceImpl implements MusicTypeService {

    @Autowired
    private MusicTypeDao musicTypeDao;

    @Override
    public List<MusicType> alltype() {
        try {
            return musicTypeDao.findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

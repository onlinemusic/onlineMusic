package service.impl;

import dao.CommentDao;
import domain.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public Page<Comment> commentbypage(Specification<Comment> spec, Pageable pageable) {
        try {
            return commentDao.findAll(spec,pageable);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}


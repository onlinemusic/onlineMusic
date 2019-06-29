package service;

import domain.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

public interface CommentService {

    //按页数展示展示评论
    public Page<Comment> commentbypage(Specification<Comment> spec, Pageable pageable);
}

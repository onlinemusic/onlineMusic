package web;

import domain.Comment;
import domain.Music;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import service.CommentService;
import service.MusicService;
import service.UserInformationService;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MusicController {

    //评论单页条数
    private Integer size = 2;

    @Autowired
    private MusicService musicService;

    @Autowired
    private UserInformationService userInformationService;

    @Autowired
    private CommentService commentService;

    //取出12首最新歌曲(用于展示)
    //由于字段原因，展示规则--热门推荐(从其中取8首),排行榜(从其中取5首)
    @GetMapping(value = "/index")
    public String showmusic(HttpServletRequest request) {
        List<Music> musicList = musicService.showmusic(0, 12);

        //application范围 全局访问
        request.getSession().getServletContext().setAttribute("musicList", musicList);
        return "frontdesk/indexall";
    }

    //刷新部分页面
    @GetMapping(value = "/part")
    public String musicpart(HttpServletRequest request){
        List<Music> musicList = musicService.showmusic(0, 12);

        //application范围 全局访问
        request.getSession().getServletContext().setAttribute("musicList", musicList);
        return "frontdesk/indexpart";
    }

    //单页展示
    @GetMapping(value = "/single/{Id}/{pageNumber}")
    public String singlemusic(@PathVariable final Integer Id, @PathVariable final Integer pageNumber, HttpServletRequest request, HttpSession session) {
        Music music = musicService.singlemusic(Id);

        //获取评论信息
        Sort sort = Sort.by(Sort.Direction.DESC, "commentDate");
        //数据库从0开始页码
        Pageable pageable = PageRequest.of(pageNumber-1, size, sort);
        Specification<Comment> spec = new Specification<Comment>() {
            public Predicate toPredicate(
                    Root<Comment> root
                    , CriteriaQuery<?> query
                    , CriteriaBuilder cb) {
                Predicate predicate1 = cb.equal(root.get("music").get("id").as(Integer.class), Id);
                query.where(
                        predicate1
                );
                return query.getRestriction();

            }
        };

        Page<Comment> pages=commentService.commentbypage(spec,pageable);

        //页码（从零开始）
        request.setAttribute("pageNumber",pages.getNumber()+1);
        //评论内容
        request.setAttribute("contentList",pages.getContent());
        //总页数
        request.setAttribute("totalPage",pages.getTotalPages());

        request.setAttribute("music", music);

        return "frontdesk/track-detail";
    }
}

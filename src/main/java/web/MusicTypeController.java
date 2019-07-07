package web;

import domain.Comment;
import domain.Music;
import domain.MusicType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.MusicService;
import service.MusicTypeService;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value="/musictype")
public class MusicTypeController {

    @Autowired
    private MusicTypeService musicTypeService;

    @Autowired
    private MusicService musicService;

    private Integer size = 12;

    //展示所有类型
    @GetMapping
    public String alltype(HttpServletRequest request) {
        List<MusicType> allmusictype = musicTypeService.alltype();

        //application范围 全局访问
        request.getSession().getServletContext().setAttribute("musicType", allmusictype);

        //转发到另一个controller
        return "redirect:/musictype/1/1";
    }

    //同一类型的歌曲
    @GetMapping("/{Id}/{pageNumber}")
    public String typemusic(@PathVariable final Integer Id, @PathVariable final Integer pageNumber,HttpServletRequest request) {

        Pageable pageable = PageRequest.of(pageNumber - 1, size);
        Specification<Music> spec = new Specification<Music>() {
            public Predicate toPredicate(
                    Root<Music> root
                    , CriteriaQuery<?> query
                    , CriteriaBuilder cb) {
                Predicate predicate1 = cb.equal(root.get("musicType").get("musicTypeId").as(Integer.class), Id);
                query.where(
                        predicate1
                );
                return query.getRestriction();

            }
        };

        Page<Music> pages=musicService.typemusic(spec,pageable);

        //页码（从零开始）
        request.setAttribute("pageNumber",pages.getNumber()+1);
        //总页数
        request.setAttribute("totalPage",pages.getTotalPages());
        //分类音乐
        request.setAttribute("musicList", pages.getContent());

        return "frontdesk/genres";
    }
}

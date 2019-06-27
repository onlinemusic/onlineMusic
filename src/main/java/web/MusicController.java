package web;

import domain.Music;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import service.MusicService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MusicController {

    @Autowired
    private MusicService musicService;

    //取出12首最新歌曲(用于展示)
    //由于字段原因，展示规则--热门推荐(从其中取8首),排行榜(从其中取5首)
    @GetMapping(value="/index")
    public String showmusic(HttpServletRequest request){
        List<Music> musicList=musicService.showmusic(0,12);

        request.setAttribute("musicList",musicList);
        return "frontdesk/index";
    }
}

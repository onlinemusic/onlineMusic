package web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping("/index")
    public String adminIndex(){
        return "WEB-INF/jsp/admin/index";
    }
}

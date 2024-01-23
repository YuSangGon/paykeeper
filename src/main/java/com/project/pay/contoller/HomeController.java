package com.project.pay.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {


    @RequestMapping("/")
    public String home(Model model) {
        model.addAttribute("data", "HI");
        return "mainPage";
    }

    @RequestMapping("/myPage")
    public String myPage() {
        return "MyPage";
    }


}

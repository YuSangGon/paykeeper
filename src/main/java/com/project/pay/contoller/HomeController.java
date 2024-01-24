package com.project.pay.contoller;

import com.project.pay.service.GeolocationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final GeolocationService geolocationService;

    @RequestMapping("/")
    public String home(Model model) {
//        model.addAttribute("data", "HI");
        model.addAttribute("geolocations", geolocationService.findAll());
        return "index";
    }

    @RequestMapping("/myPage")
    public String myPage() {
        return "MyPage";
    }


}

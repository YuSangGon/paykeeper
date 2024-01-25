package com.project.pay.contoller;

import com.project.pay.config.PrincipalDetails;
import com.project.pay.domain.User;
import com.project.pay.service.GeolocationService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("/userDetails")
    @ResponseBody
    public PrincipalDetails userDetails(Authentication authentication){
        return (PrincipalDetails)authentication.getPrincipal();
    }

    // @AuthenticationPrincipal 을 사용하여 로그인한 사용자 정보 주입받을수 있다.
    // org.springframework.security.core.annotation.AuthenticationPrincipal
    @RequestMapping("/user")
    @ResponseBody
    public User username(@AuthenticationPrincipal PrincipalDetails userDetails){
        return (userDetails != null) ? userDetails.getUser() : null;
    }


}

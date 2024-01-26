package com.project.pay.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public String login() {
        return "user/login";
    }

    @RequestMapping("/logout")
    @ResponseBody
    public String logout() {
        return "logout";
    }

    @RequestMapping("/register")
    public String register() {
        return "user/register";
    }

    @RequestMapping("/checkEmailForPW")
    public String forgot() {
        return "user/checkEmailForPW";
    }

}

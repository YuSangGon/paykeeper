package com.project.pay.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployerController {

    @RequestMapping("/employer")
    public String employeePage() {
        return "Employer";
    }

}

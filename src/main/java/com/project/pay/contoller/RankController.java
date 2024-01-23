package com.project.pay.contoller;

import com.project.pay.domain.Company;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RankController {

    @RequestMapping("/rank")
    public String employeePage() {
        return "Rank";
    }

}

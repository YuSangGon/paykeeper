package com.project.pay.contoller;

import com.project.pay.domain.Company;
import com.project.pay.service.EmployerService;
import com.project.pay.support.RandomGenerator;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class EmployerController {

    private final RandomGenerator randomGenerator;
    private final EmployerService employerService;

    @RequestMapping("/employer")
    public String employeePage() {
        return "Employer";
    }


    // 랜덤 코드를 생성하여 반환하는 Controller
    @GetMapping("/employer/createCode")
    @ResponseBody
    public String createCode() {
        return randomGenerator.generateRandomUniqueCode();
    }

    @PostMapping("/employer/saveCompany")
    @ResponseBody
    public int saveCompany(
            @RequestBody Company company
            ) {
        return employerService.saveCompany(company, 1L);
    }

}

package com.project.pay.service;

import com.project.pay.domain.Company;
import com.project.pay.domain.User;
import com.project.pay.repository.CompanyRepository;
import com.project.pay.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmployerService {

    private final CompanyRepository companyRepository;
    private final UserRepository userRepository;

    public int saveCompany(Company company, Long userId) {

        int result = 0;
        User user = userRepository.findById(userId).orElse(null);

        if(user != null) {
            company.addUsers(user);
            company = companyRepository.save(company);

            user.addCompanies(company);
            userRepository.save(user);

            if(company.getId() != null) result = 1;
        }
        return result;
    }

}

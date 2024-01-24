package com.project.pay.support;

import com.project.pay.repository.CompanyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.security.SecureRandom;

@Component
@RequiredArgsConstructor
public class RandomGenerator {

    private final CompanyRepository companyRepository;

    public String generateRandomUniqueCode() {
        int codeLength = 6;

        String randomCode = generateRandomCode(codeLength);

        while (isCodeExistsInDatabase(randomCode)) {
            randomCode = generateRandomCode(codeLength);
        }

        return randomCode;
    }

    private String generateRandomCode(int length) {
        String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        SecureRandom random = new SecureRandom();
        StringBuilder code = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(characters.length());
            char randomChar = characters.charAt(randomIndex);
            code.append(randomChar);
        }

        return code.toString();
    }

    private boolean isCodeExistsInDatabase(String code) {
        return companyRepository.isExistByCode(code) == 1;
    }

}

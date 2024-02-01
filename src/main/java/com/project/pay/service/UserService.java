package com.project.pay.service;

import com.project.pay.domain.User;
import com.project.pay.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.time.Duration;
import java.util.Random;

@Service
@Transactional
@RequiredArgsConstructor
public class UserService {

    @Value("${spring.mail.auth-code-expiration-millis}")
    private long authCodeExpirationMillis;

    private final UserRepository userRepository;

    private static final String AUTH_CODE_PREFIX = "AuthCode";
    private final MailService mailService;
    private final RedisService redisService;

    public User findByUsername(String username) {
        return userRepository.findUserByUsername(username);
    }

    public int isDuplicated(String username) {

        if (userRepository.findUserByUsername(username) != null) {
            return 1;
        }
        return 0;
    }


    // 회원가입시 이메일 인증 관련 코드
    public Boolean sendCodeToEmail(String toEmail) {

        if(this.checkDuplicatedEmail(toEmail)) {
            return false;
        }

        String title = "PayKeeper 이메일 인증 번호";
        String authCode = this.createCode();
        mailService.sendEmail(toEmail, title, authCode);
        // 이메일 인증 요청 시 인증 번호 Redis에 저장 ( key = "AuthCode " + Email / value = AuthCode )
        redisService.setValues(AUTH_CODE_PREFIX + toEmail,
                authCode, Duration.ofMillis(this.authCodeExpirationMillis));

        return true;
    }

    private boolean checkDuplicatedEmail(String email) {
        User user = userRepository.findUserByEmail(email);
        return user != null;
    }

    private String createCode() {
        String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        SecureRandom random = new SecureRandom();
        StringBuilder code = new StringBuilder();

        for (int i = 0; i < 6; i++) {
            int randomIndex = random.nextInt(characters.length());
            char randomChar = characters.charAt(randomIndex);
            code.append(randomChar);
        }

        return code.toString();
    }

    public Boolean verifiedCode(String email, String authCode) {

        if(this.checkDuplicatedEmail(email)) {
            return false;
        }

        String redisAuthCode = redisService.getValues(AUTH_CODE_PREFIX + email);

        return redisService.checkExistsValue(redisAuthCode) && redisAuthCode.equals(authCode);
    }

}

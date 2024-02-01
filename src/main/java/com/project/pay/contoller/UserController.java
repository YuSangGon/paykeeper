package com.project.pay.contoller;

import com.project.pay.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.NoSuchAlgorithmException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

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
    public String checkEmailForPW() {
        return "user/checkEmailForPW";
    }

    @RequestMapping("/setNewPW")
    public String setNewPW() {
        return "user/setNewPW";
    }

    @GetMapping("/isDuplicated/{username}")
    @ResponseBody
    public ResponseEntity<?> isDuplicated(
            @PathVariable String username
    ) {
        // 1 : 중복된 아이디
        // 0 : 사용가능한 아이디
        return new ResponseEntity<>(userService.isDuplicated(username), HttpStatus.OK);
    }

    @PostMapping("/verification-requests")
    public ResponseEntity<?> sendMessage(
            @RequestParam("email") String email
    ) {
        return new ResponseEntity<>(userService.sendCodeToEmail(email), HttpStatus.OK);
    }

    @GetMapping("/verifications")
    public ResponseEntity<?> verificationEmail(
            @RequestParam("email") String email,
            @RequestParam("code") String code
    ) {
        return new ResponseEntity<>(userService.verifiedCode(email, code), HttpStatus.OK);
    }

}

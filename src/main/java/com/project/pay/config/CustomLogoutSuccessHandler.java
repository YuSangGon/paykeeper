package com.project.pay.config;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import java.io.IOException;
import java.time.LocalDateTime;

public class CustomLogoutSuccessHandler implements LogoutSuccessHandler {
    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        System.out.println("### 로그아웃 성공 : CustomLogoutSuccessHandler 동작 ###");

        String redirectUrl = "/user/login?logoutHandler";

        // ret_url 파라미터가 있는 경우 logout 하고 해당 url 로 redirect
        if(request.getParameter("ret_url") != null){
            redirectUrl = request.getParameter("ret_url");
        }

        // redirect
        response.sendRedirect(redirectUrl);
    }
}

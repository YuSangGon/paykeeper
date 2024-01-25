package com.project.pay.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    // request 가 security filter 를 거쳐서 들어옴.
    // 이 때, 로그인이 되어 있지 않은 경우에 어떤 동작을 진행할 것인지를 설정
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
//        return httpSecurity
//                .csrf(csrf-> csrf.disable())
//                .formLogin(form -> form
//                        .loginPage("/user/login")   // 로그인이 필요할 경우, 해당 페이지로 넘어감
//                        .loginProcessingUrl("/user/login")
//                        .defaultSuccessUrl("/")   // 로그인 성공시, 지정한 url이 없으면 해당 url로 넘어감
//                        .successHandler(new CustomLoginSuccessHandler("/"))  // 로그인 성공 시 핸들러
//                        .failureHandler(new CustomLoginFailureHandler())  // 로그인 실패시 핸들러
//                )
//                .logout(logout -> logout
//                        .logoutUrl("/user/logout")   // 로그아웃 요청시 넘어가는 페이지
//                        .logoutSuccessUrl("/")    // 로그 아웃 성공 시 넘어가는 페이지
//                )
//                .build();

        // 모든 요청을 허락 => security 동작 시키지 않고 싶을 때 사용
        return httpSecurity
                .csrf(csrf-> csrf.disable())
                .authorizeHttpRequests(authorizeHttpRequests -> authorizeHttpRequests
                        .requestMatchers(new AntPathRequestMatcher("/**")).permitAll())
                .build();
    }

}

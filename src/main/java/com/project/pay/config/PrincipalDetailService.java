package com.project.pay.config;

import com.project.pay.domain.User;
import com.project.pay.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

// UserDetailsService
// 컨테이너에 등록한다.
// 시큐리티 설정에서 loginProcessingUrl(url) 을 설정해 놓았기에
// 로그인시 위 url 로 요청이 오면 자동으로 UserDetailsService 타입으로 IoC 되어 있는
// loadUserByUsername() 가 실행되고
// 인증성공하면 결과를 UserDetails 로 리턴
@Service
@RequiredArgsConstructor
public class PrincipalDetailService implements UserDetailsService {

    private final UserService userService;

    // 등록한 ID로 User를 찾고 없을 경우 Exception 발생
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        
        // DB 조회
        User user = userService.findByUsername(username);

        // Uesr 가 있으면 UserDetails 리턴
        if(user != null) {
            PrincipalDetails userDetails = new PrincipalDetails(user);
            userDetails.setUserService(userService);
            return userDetails;
        }
        
        // 없으면 UsernameNotFoundException 을 throw
        throw new UsernameNotFoundException(username);
        
        // return null 해주면 예외가 발생함
//        return null;
    }
}

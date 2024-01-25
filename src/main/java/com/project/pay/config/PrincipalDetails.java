package com.project.pay.config;

import com.project.pay.domain.User;
import com.project.pay.service.UserService;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

public class PrincipalDetails implements UserDetails {

    @Setter
    private UserService userService;

    @Getter
    private User user;

    public  PrincipalDetails(User user) {
        this.user = user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    // 계정이 만료되지 않았는지
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    // 계정이 잠긴건 아닌지
    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    // 계정 credential 이 만료된건 아닌지
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    // 계정이 활성화되었는지
    @Override
    public boolean isEnabled() {
        return true;
    }
}

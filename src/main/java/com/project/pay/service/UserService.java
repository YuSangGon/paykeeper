package com.project.pay.service;

import com.project.pay.domain.User;
import com.project.pay.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public User findByUsername(String username) {
        return userRepository.findUserByUsername(username);
    }

}

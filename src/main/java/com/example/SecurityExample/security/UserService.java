package com.example.SecurityExample.security;

import com.example.SecurityExample.UserRegisterRequest;
import com.example.SecurityExample.domain.User;
import com.example.SecurityExample.domain.UserRole;
import com.example.SecurityExample.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Set;

@Service
public class UserService {

    private static final Set<UserRole> DEFAULT_USER_ROLES = Collections.singleton(UserRole.ROLE_USER);

    private UserRepository userRepository;
    private PasswordEncoder passwordEncoder;

    @Autowired
    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void save(UserRegisterRequest userRegisterRequest) {
        User user = new User();
        user.setEmail(userRegisterRequest.getEmail());

        user.setUsername(userRegisterRequest.getUsername());
        user.setRoles(DEFAULT_USER_ROLES);

        String encodePassword = passwordEncoder.encode(userRegisterRequest.getPassword());
        user.setPassword(encodePassword);

        userRepository.saveAndFlush(user);
    }
}

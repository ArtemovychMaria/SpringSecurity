package com.example.SecurityExample.security;

import com.example.SecurityExample.domain.User;
import com.example.SecurityExample.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Autowired
    public CustomUserDetailsService(UserRepository userRepository){
        this.userRepository=userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User>userMaybe=userRepository.findByUsername(username);
        return userMaybe
                .map(CustomUserDetails::new)
                .orElseThrow(()-> new UsernameNotFoundException("No user present with username:" + username));
    }
}

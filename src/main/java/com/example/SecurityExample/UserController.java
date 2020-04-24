package com.example.SecurityExample;

import com.example.SecurityExample.security.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping("/create")
    public String create(@ModelAttribute UserRegisterRequest userRegisterRequest, HttpServletRequest req){
        userService.save(userRegisterRequest);
        return "redirect:/login";
    }
}

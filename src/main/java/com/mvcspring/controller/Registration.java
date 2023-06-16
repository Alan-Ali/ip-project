package com.mvcspring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Registration {

    @GetMapping("/userLogin")
    protected ModelAndView login() {
        ModelAndView model = null;

        return model;
    }

    @PostMapping("/userSignup")
    protected ModelAndView singup() {
        ModelAndView model = null;

        return model;
    }

}

package com.mvcspring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Registration {

    @RequestMapping("/login")
    protected ModelAndView login() {
        ModelAndView model = null;

        return model;
    }

    @RequestMapping("/signup")
    protected ModelAndView singup() {
        ModelAndView model = null;

        return model;
    }

}

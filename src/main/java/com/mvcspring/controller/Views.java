package com.mvcspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



// MAKE LINKS TO THE VIEWS USING THIS CLASS
@Controller
public class Views {

    @RequestMapping("/imageUploadTest")
    public ModelAndView imageUploadTest() {
        return new ModelAndView("pages/tests/imageUploadTest");
    }


    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("pages/login");
    }

    @RequestMapping("/signup")
    public ModelAndView signup() {
        return new ModelAndView("pages/signup");
    }


}

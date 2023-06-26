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

    @RequestMapping("/about")
    public ModelAndView about() {
        return new ModelAndView("pages/about");
    }

    @RequestMapping("/form")
    public ModelAndView form() {
        return new ModelAndView("pages/form");
    }

    @RequestMapping("/form")
    public ModelAndView hotels() {
        return new ModelAndView("pages/form");
    }

    @RequestMapping("/main")
    public ModelAndView main() {
        return new ModelAndView("pages/main");
    }


    @RequestMapping("/greetings")
    protected ModelAndView Greeting(){

        ModelAndView model = new ModelAndView();

        model.addObject("Greetings", "Welcome to the testing part of the project");
        model.setViewName("pages/tests/test");

        return model;
    }


}



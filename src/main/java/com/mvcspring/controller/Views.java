package com.mvcspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


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

    @RequestMapping("/profile")
    public ModelAndView profile() {
        return new ModelAndView("pages/profile");
    }

    @RequestMapping("/profile-edit")
    public ModelAndView profileEdit() {
        return new ModelAndView("pages/profileEdit");
    }

    @RequestMapping("/hotels")
    public ModelAndView hotels() {
        return new ModelAndView("pages/form");
    }

    @RequestMapping("/main")
    public ModelAndView main() {
        return new ModelAndView("pages/main");
    }
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        return new ModelAndView("pages/login");
    }



    @RequestMapping("/greetings")
    protected ModelAndView Greetings(){

        ModelAndView model = new ModelAndView();

        model.addObject("Greetings", "Welcome to the testing part of the project");
        model.setViewName("pages/tests/test");

        return model;
    }


}



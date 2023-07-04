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



    // USER PAGES
    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("pages/user/login");
    }
    @RequestMapping("/signup")
    public ModelAndView signup() {
        return new ModelAndView("pages/user/signup");
    }

    @RequestMapping("/about")
    public ModelAndView about() {
        return new ModelAndView("pages/user/about");
    }

    @RequestMapping("/form")
    public ModelAndView form() {
        return new ModelAndView("pages/user/form");
    }

    @RequestMapping("/profile")
    public ModelAndView profile() {
        return new ModelAndView("pages/user/profile");
    }

    @RequestMapping("/profile-edit")
    public ModelAndView profileEdit() {
        return new ModelAndView("pages/user/profileEdit");
    }

    @RequestMapping("/hotels")
    public ModelAndView hotels() {
        return new ModelAndView("pages/user/hotels");
    }

    @RequestMapping("/main")
    public ModelAndView main() {
        return new ModelAndView("pages/user/main");
    }
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        return new ModelAndView("pages/user/login");
    }

    // ADMIN PAGES
    @RequestMapping("/admin-login")
    public ModelAndView adminLogin() {
        return new ModelAndView("pages/admin/adminLogin");
    }

    @RequestMapping("/admin-add-hotel")
    public ModelAndView adminAddHotel() {
        return new ModelAndView("pages/admin/adminAddHotel");
    }

    @RequestMapping("/user-manager")
    public ModelAndView userManager() {
        return new ModelAndView("pages/admin/manager");
    }



    @RequestMapping("/greetings")
    protected ModelAndView Greetings(){

        ModelAndView model = new ModelAndView();

        model.addObject("Greetings", "Welcome to the testing part of the project");
        model.setViewName("pages/tests/test");

        return model;
    }


}



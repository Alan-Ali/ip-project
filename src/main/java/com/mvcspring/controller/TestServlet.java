package com.mvcspring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestServlet {

    @RequestMapping("/greetings")
    protected ModelAndView Greeting(){

        ModelAndView model = new ModelAndView("test");

        model.addObject("Greetings", "Welcome to the testing part of the project");
//        model.setViewName("test");

        return model;
    }

}

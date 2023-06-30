package com.mvcspring.controller;


import com.mvcspring.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@RestController
public class Registration {

    @Autowired
    private UserController userController;

    @GetMapping("/userLogin")
    protected ModelAndView login(@ModelAttribute User user, HttpSession session) {


        List<User> users = userController.getAll();
        User foundUser = null;
        for (User user_ : users) {
            if (Objects.equals(user_.getEmail(), user.getEmail())) {
                foundUser = user_;
                // Set attribute in session
                session.setAttribute("login", foundUser);
                return new ModelAndView("pages/main");
            }
        }

        System.out.println("not found");


        return new ModelAndView("pages/login");
    }

    @PostMapping("/userSignup")
    protected ModelAndView singup(@ModelAttribute User user) {

        ModelAndView model = null;

        int user_ = userController.add(user);

        if(user_ > 0){
            model = new ModelAndView("pages/login");
        }else{
            model = new ModelAndView("pages/signup");
        }

        return model;
    }

}

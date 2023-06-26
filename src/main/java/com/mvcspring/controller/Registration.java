package com.mvcspring.controller;


import com.mvcspring.models.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Objects;

@RestController
public class Registration {
    private UserController userController;


    @GetMapping("/userLogin")
    protected ModelAndView login(@RequestBody User user) {

        ModelAndView model = null;

        return model;
    }

    @PostMapping("/userSignup")
    protected ModelAndView singup(@ModelAttribute User user) {

        User user_ =  userController.add(user);
        System.out.println(user_);

        ModelAndView model = new ModelAndView("pages/login");
        model.addObject(user);

        return model;
    }

}

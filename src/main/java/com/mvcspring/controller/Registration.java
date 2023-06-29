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
    protected ModelAndView login(HttpSession session, @ModelAttribute User user) {


        List<User> users = userController.getAll();
        User foundUser = null;
        for(User user_ : users){
            if(Objects.equals(user_.getEmail(), user.getEmail())){
                foundUser = user_;
                break;
            }
        }

        // Set attribute in session
        session.setAttribute("login", foundUser);

        ModelAndView model = new ModelAndView("pages/main");
        System.out.println("came here");
        return model;
    }

    @PostMapping("/userSignup")
    protected ModelAndView singup(@ModelAttribute User user) {

        User user_ = userController.add(user);
        System.out.println(user_);

        ModelAndView model = new ModelAndView("pages/login");
        model.addObject(user);

        return model;
    }

}

package com.mvcspring.controller;


import com.mvcspring.controller.root.UserController;
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

    @GetMapping("/user-login")
    protected ModelAndView login(@ModelAttribute User user, HttpSession session) {


        List<User> users = userController.getAll();
        User foundUser = null;
        for (User user_ : users) {
            if (Objects.equals(user_.getEmail(), user.getEmail())) {
                foundUser = user_;
                // Set attribute in session
                session.setAttribute("login", foundUser);
                return new ModelAndView("pages/user/main");
            }
        }

        return new ModelAndView("pages/user/login");
    }

    @PostMapping("/user-signup")
    protected ModelAndView singup(@ModelAttribute User user) {

        ModelAndView model = null;

        int user_ = userController.add(user);

        if(user_ > 0){
            model = new ModelAndView("pages/user/login");
        }else{
            model = new ModelAndView("pages/user/signup");
        }

        return model;
    }

    @GetMapping("/admin-login")
    protected ModelAndView adminLogin(@ModelAttribute User user){
        ModelAndView model = null;

        List<User> users = userController.getAll();


        if(!users.isEmpty()){

            for (User user_ : users) {
                System.out.println(user_.getIsadmin());
                if(user_.getIsadmin() == 1 && user_.getEmail().equals(user.getEmail()) && user_.getPassword().equals(user.getPassword()) ){

                    // Set attribute in session
                    model = new ModelAndView("pages/admin/manager");
                    model.addObject("adminLogin", user_);
                    return model;
                }
            }
        }


        model = new ModelAndView("pages/admin/adminLogin");

        return model;
    }

}

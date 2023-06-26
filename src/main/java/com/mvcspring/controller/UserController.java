package com.mvcspring.controller;

import com.mvcspring.DAO.UserDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/user")
public class UserController implements CRUDController {
//    private final UserDAO userDAO = new UserDAO();

    @Autowired
    public UserController (){}
    private UserDAO userDAO;

    @GetMapping("/all")
    @Override
    public List<User> getAll() {
        // IF TRUE WILL RETURN OBJECTS ELSE IT WILL RETURN NULL
        return  userDAO.getAll();
    }

    @GetMapping("/get/{id}")
    @Override
    public User getById(@PathVariable int id) {
        // IF TRUE WILL RETURN OBJECT ELSE IT WILL RETURN NULL
        return userDAO.getById(id);
    }

    @PostMapping("/post")
    @Override
    public User add( @RequestBody User user) {
        List<User> users = userDAO.getAll();
        boolean created = false;
        for(User user_ : users){
            if(Objects.equals(user_.getEmail(), user.getEmail())){
                return user;
            }
        }

        userDAO.add(user);
        return user;
    }

    @PutMapping("/update")
    @Override
    public User update(@RequestBody User user) {
        User existingUser = userDAO.getById(user.getId());
        if (existingUser != null) {
            user.setId(user.getId());
            userDAO.update(user);
            return user;
        } else {
            return null;
        }
    }

    @DeleteMapping("/delete/{id}")
    @Override
    public ResponseEntity<Void> delete(@PathVariable int id) {
        User existingUser = userDAO.getById(id);
        if (existingUser != null) {
            userDAO.delete(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}

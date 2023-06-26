package com.mvcspring.controller;

import com.mvcspring.DAO.UserDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.User;
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

    private UserDAO userDAO;

    @GetMapping("/all")
    @Override
    public List<User> getAll() {
        // Retrieve user data
        List<User> users = userDAO.getAll();

        // Set the appropriate headers
//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(MediaType.APPLICATION_JSON);

        // Return the list of users with the headers
        return users;
    }

    @GetMapping("/get/{id}")
    @Override
    public ResponseEntity<User> getById(@PathVariable int id) {
        User user = userDAO.getById(id);
        if (user != null) {
            return new ResponseEntity<>(user, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
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

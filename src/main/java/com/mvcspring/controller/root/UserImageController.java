package com.mvcspring.controller.root;

import com.mvcspring.DAO.UserDAO;
import com.mvcspring.DAO.UserImageDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.User;
import com.mvcspring.models.UserImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@Component
@Controller
@RequestMapping("/user-image")
public class UserImageController implements CRUDController<UserImage> {


    public UserImageController (){}

//    @Autowired
    private final UserImageDAO userImageDAO = new UserImageDAO();

    @GetMapping("/get-all")
    @Override
    public List<UserImage> getAll() {
        // IF TRUE WILL RETURN OBJECTS ELSE IT WILL RETURN NULL
        return  userImageDAO.getAll();
    }

    @GetMapping("/get/{id}")
    @Override
    public UserImage getById(@PathVariable int id) {
        // IF TRUE WILL RETURN OBJECT ELSE IT WILL RETURN NULL
        return userImageDAO.getById(id);
    }


    @PostMapping("/post")
    @Override
    public int add(@ModelAttribute UserImage object) {
        List<UserImage> users = userImageDAO.getAll();

        for(UserImage userImage_ : users){
            if(Objects.equals(userImage_.getUser_id(), object.getUser_id())){
                return -1;
            }
        }
        userImageDAO.add(object);
        return 1;
    }


    @PutMapping("/update")
    @Override
    public int update(@ModelAttribute UserImage object) {
        UserImage existingUserImage = userImageDAO.getById(object.getUser_id());
        if (existingUserImage != null) {
            object.setUser_id(object.getUser_id());
            userImageDAO.update(object);
            return 1;
        } else {
            return -1;
        }
    }


    @DeleteMapping("/delete/{id}")
    @Override
    public void delete(@PathVariable int id) {
        UserImage existingUserImage = userImageDAO.getById(id);
        if (existingUserImage != null) {
            userImageDAO.delete(id);
        }
    }
}

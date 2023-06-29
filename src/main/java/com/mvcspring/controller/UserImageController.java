package com.mvcspring.controller;

import com.mvcspring.DAO.UserDAO;
import com.mvcspring.DAO.UserImageDAO;
import com.mvcspring.interfaces.CRUDController;
import com.mvcspring.models.UserImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user-image")
public class UserImageController implements CRUDController<UserImage> {


    public UserImageController (){}

    @Autowired
    private UserImageDAO userImageDAO;

    @Override
    public List<UserImage> getAll() {
        return null;
    }

    @Override
    public UserImage getById(int id) {
        return null;
    }

    @Override
    public UserImage add(UserImage user) {
        return null;
    }

    @Override
    public UserImage update(UserImage user) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }
}

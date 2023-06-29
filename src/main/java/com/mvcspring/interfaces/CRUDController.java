package com.mvcspring.interfaces;

import com.mvcspring.models.User;
import com.mvcspring.models.UserImage;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface CRUDController<Type> {
    List<Type> getAll();
//    List<Type> getAll();

    Type getById(int id);

    Type add(Type user);

    Type update(Type user);

    int delete(int id);



}

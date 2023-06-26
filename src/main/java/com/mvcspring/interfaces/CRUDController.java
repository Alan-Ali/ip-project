package com.mvcspring.interfaces;

import com.mvcspring.models.User;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface CRUDController<Type> {
    List<Type> getAll();
//    List<Type> getAll();

    Type getById(int id);

    Type add(User user);

    Type update(User user);

    Type delete(int id);



}

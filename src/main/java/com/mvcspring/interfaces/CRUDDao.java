package com.mvcspring.interfaces;

import com.mvcspring.models.User;

import java.util.List;


public interface CRUDDao<Type> {

    List<Type> getAll();

    Type getById(int id);

    Type add(User user);

    Type update(User user);

    Type delete(int id);
}

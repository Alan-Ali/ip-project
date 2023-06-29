package com.mvcspring.interfaces;

import com.mvcspring.models.User;

import java.util.List;


public interface CRUDDao<Type> {

    List<Type> getAll();

    Type getById(int id);

    int add(Type object);

    int update(Type object);

    int delete(int id);

}

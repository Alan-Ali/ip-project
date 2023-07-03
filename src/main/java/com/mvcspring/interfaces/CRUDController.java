package com.mvcspring.interfaces;

import org.springframework.web.bind.annotation.*;

import java.util.List;

public interface CRUDController<Type> {

    @GetMapping("/get-all")
    List<Type> getAll();
//    List<Type> getAll();
    @GetMapping("/get/{id}")
    Type getById(@PathVariable int id);
    @PostMapping("/post")
    int add(@ModelAttribute Type object);
    @PutMapping("/update")
    int update(@ModelAttribute Type object);
    @DeleteMapping("/delete/{id}")
    int delete( @PathVariable int id);

}

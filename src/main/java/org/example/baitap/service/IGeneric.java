package org.example.baitap.service;

import java.util.List;

public interface IGeneric <T, E>{
    List<T> getAll();
    T findById(E id);
    void update(T t);
}

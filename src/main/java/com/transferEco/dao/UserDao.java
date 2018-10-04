package com.transferEco.dao;

import com.transferEco.domain.entity.User;

public interface UserDao {

    boolean register(User user);
    long isValidUser(String email, String password);
    User findUserById(Long userId);
}

package com.transferEco.service;

import com.transferEco.domain.entity.Response;
import com.transferEco.domain.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
    Response register(HttpServletRequest request);
    Response login(HttpServletRequest request);
    User findUserById(Long userId);
}

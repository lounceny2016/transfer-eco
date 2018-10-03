package com.transferEco.service;

import com.transferEco.domain.entity.Response;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
    Response register(HttpServletRequest request);
}

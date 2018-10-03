package com.transferEco.controller;

import com.transferEco.domain.entity.Response;
import com.transferEco.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    private Logger logger = LoggerFactory.getLogger(HomeController.class);

    @ResponseBody
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public Response register(HttpServletRequest request){
        Response response = new Response();
        try {
            response = userService.register(request);
        } catch (Exception e){
            logger.error("--------------------Exception:",e);
            response.setStatus(false);
            response.setMessage(e.getMessage());
        }
        return response;
    }

}

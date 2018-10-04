package com.transferEco.controller;

import com.transferEco.domain.entity.User;
import com.transferEco.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController extends BaseController {

    @Autowired
    private UserService userService;

    private Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = {"","/index"}, method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(@RequestParam("userId") Long userId, Model model){
        String view = "home";
        try {
            User dbUser = userService.findUserById(userId);
            model.addAttribute("user", dbUser);
        } catch (Exception e){
            logger.error("----------------------Exception: ",e);
        }
        return view;
    }


}

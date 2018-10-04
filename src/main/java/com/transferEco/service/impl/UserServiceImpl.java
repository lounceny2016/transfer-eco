package com.transferEco.service.impl;

import com.transferEco.dao.UserDao;
import com.transferEco.domain.entity.Response;
import com.transferEco.domain.entity.User;
import com.transferEco.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Override
    public Response register(HttpServletRequest request) {
        Response response = new Response();
        try {
            User user = new User();
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user.setPhone(request.getParameter("phone"));
            user.setEmail(request.getParameter("registrationEmail"));
            user.setPassword(request.getParameter("registrationPassword"));
            boolean flag = userDao.register(user);
            if (flag){
                response.setStatus(true);
                response.setMessage("Votre compte à été créé avec succès.");
            } else {
                response.setStatus(false);
                response.setMessage("La création de votre compte a échoué.");
            }
        } catch (Exception e){
            logger.error("--------------------Exception:",e);
            response.setStatus(false);
            response.setMessage(e.getMessage());
        }
        return response;
    }

    @Override
    public Response login(HttpServletRequest request) {
        Response response = new Response();
        try {
            String email = request.getParameter("loginEmail");
            String password = request.getParameter("loginPassword");
            long userId = userDao.isValidUser(email, password);
            if (userId != 0){
                User dbUser = userDao.findUserById(userId);
                response.setStatus(true);
                response.setMessage("Connexion avec succes.");
                response.setData(dbUser);
            } else {
                response.setStatus(false);
                response.setMessage("E-mail ou mot de passe invalid.");
            }
        } catch (Exception e){
            logger.error("--------------------Exception:",e);
            response.setStatus(false);
            response.setMessage(e.getMessage());
        }
        return response;
    }

    @Override
    public User findUserById(Long userId) {
        User dbUser = null;
        try {
            dbUser = userDao.findUserById(userId);
        } catch (Exception e){
            logger.error("--------------------Exception:",e);
        }
        return dbUser;
    }
}

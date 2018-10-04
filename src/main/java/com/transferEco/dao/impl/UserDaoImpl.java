package com.transferEco.dao.impl;

import com.transferEco.dao.UserDao;
import com.transferEco.domain.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;

    private Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);


    @Override
    public boolean register(User user) {
        boolean flag = false;
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
            flag = true;
        } catch (Exception e){
            logger.error("------------------------------Exception:",e);
        } finally {
            session.close();
        }
        return flag;
    }

    @Override
    public long isValidUser(String email, String password) {
        long userId = 0;
        Session session = sessionFactory.openSession();
        try {
            String strQuery = "SELECT u FROM User u WHERE u.email = :email AND u.password = :password";
            Query query = session.createQuery(strQuery);
            query.setParameter("email", email);
            query.setParameter("password", password);
            if (query.list() != null && query.list().size() > 0){
                User user = (User) query.list().get(0);
                userId = user.getId();
            }
        } catch (Exception e){
            logger.error("------------------------------Exception:",e);
        } finally {
            session.close();
        }
        return userId;
    }

    @Override
    public User findUserById(Long userId) {
        User user = null;
        Session session = sessionFactory.openSession();
        try {
            user = (User) session.get(User.class, userId);
        } catch (Exception e){
            logger.error("------------------------------Exception:",e);
        } finally {
            session.close();
        }
        return user;
    }
}

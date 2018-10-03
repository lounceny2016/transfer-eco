package com.transferEco.dao.impl;

import com.transferEco.dao.UserDao;
import com.transferEco.domain.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
}

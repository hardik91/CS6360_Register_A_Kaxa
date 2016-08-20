/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Nishi
 */
@Repository
public class LoginDAOImpl implements LoginDAO{
    
       @Autowired
       private SessionFactory sessionFactory;

       public void setSessionFactory(SessionFactory sessionFactory) {
              this.sessionFactory = sessionFactory;
       }
      
       protected Session getSession(){
              return sessionFactory.openSession();
       }

       public boolean checkLogin(String userName, String userPassword){
            System.out.println("In Check login");
            Session session = sessionFactory.openSession();
            boolean userFound = false;
            //Query using Hibernate Query Language
            String SQL_QUERY =" from Login where user_name=? and password=?";
            Query query = session.createQuery(SQL_QUERY);
            query.setParameter(0,userName);
            query.setParameter(1,userPassword);
            System.out.println(query);
            List list = query.list();

            if ((list != null) && (list.size() > 0)) {
                    userFound= true;
            }

            session.close();
            return userFound;              
       }
    
}

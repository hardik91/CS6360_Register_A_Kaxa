/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.dao;

import com.sprhib.model.Login;
import com.sprhib.model.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Nishi
 */

@Repository
public class StudentDAOImpl implements StudentDAO {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
            return sessionFactory.getCurrentSession();
    }
    
    public void addStudent(Student student) {
		getCurrentSession().save(student);
                Login login = new Login();
                login.setUserName(student.getUser_id());
                login.setUserPassword(student.getPassword());
                login.setType("s");
                getCurrentSession().save(login);
    }

   
}

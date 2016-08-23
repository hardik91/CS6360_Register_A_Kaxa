/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.dao;

import com.sprhib.model.Course;
import com.sprhib.model.RegisteredCourse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
/**
 *
 * @author Nishi
 */
@Repository
public class CourseDAOImpl implements CourseDAO {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
            return sessionFactory.getCurrentSession();
    }
    public List<Course> getCourseList(){
        return getCurrentSession().createCriteria(Course.class).list();
    }
    
    @Override
    public List<Course> getMyCourses(String user_id){
        List<RegisteredCourse> reg_courses = getRegisteredCourses(user_id);
        List<Course> courses = new ArrayList<Course>();
        for (int i = 0; i < reg_courses.size(); i++) {
          List<Course> course =   getCurrentSession().createQuery("from  Course where course_id = :course_id_param")
         .setString("course_id_param", reg_courses.get(i).getCourse_id().toString()).list();
            courses.add(course.get(0));
        }
        return courses;
    }
    
    public List<RegisteredCourse> getRegisteredCourses(String user_id){
        return  getCurrentSession().createQuery("from RegisteredCourse where user_id = :user_id_param").setString("user_id_param", new String(user_id))
        .list();
    }
    
    @Override
    public List<Course> registerCourse(RegisteredCourse course) {
        getCurrentSession().save(course);
        return getMyCourses(course.getUser_id());
    }

    @Override
    public List<Course> dropClasses(String user_id, String course_id) {
        RegisteredCourse reg_course = new RegisteredCourse();
        reg_course.setCourse_id(course_id);
        reg_course.setUser_id(user_id);
        getCurrentSession().delete(reg_course);
        return getMyCourses(user_id);
    }
}

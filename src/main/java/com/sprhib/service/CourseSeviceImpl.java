package com.sprhib.service;

import com.sprhib.dao.CourseDAO;
import com.sprhib.model.Course;
import com.sprhib.model.RegisteredCourse;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nishi
 */
@Service("courseService")
@Transactional
public class CourseSeviceImpl implements CourseService {
        @Autowired
    private CourseDAO courseDAO;
    public List<Course> getCourseList() {
        return courseDAO.getCourseList();
    }

    @Override
    public List<Course> registerCourse(RegisteredCourse course) {
        return courseDAO.registerCourse(course);
    }

    @Override
    public List<Course> getMyCourses(String user_id) {
        return courseDAO.getMyCourses(user_id);
    }
    
}

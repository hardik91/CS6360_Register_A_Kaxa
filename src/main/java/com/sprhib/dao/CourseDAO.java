/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.dao;

import com.sprhib.model.Course;
import com.sprhib.model.RegisteredCourse;
import java.util.List;

/**
 *
 * @author Nishi
 */
public interface CourseDAO {
    List<Course> getCourseList();
    public List<Course> registerCourse(RegisteredCourse course);
    public List<Course> getMyCourses(String user_id);
    public List<Course> dropClasses(String user_id, String course_id);
}

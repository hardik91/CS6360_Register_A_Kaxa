/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.service;

import com.sprhib.model.Course;
import com.sprhib.model.RegisteredCourse;
import java.util.List;

/**
 *
 * @author NIshi
 */
public interface CourseService {
    List<Course> getCourseList();
    List<Course> registerCourse(RegisteredCourse course);
    List<Course> getMyCourses(String user_id);
}

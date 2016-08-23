/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.controller;

import com.sprhib.model.Course;
import com.sprhib.model.Login;
import com.sprhib.model.RegisteredCourse;
import com.sprhib.service.CourseService;
import java.util.List;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.dao.DuplicateKeyException;

/**
 *
 * @author Nishi
 */
@Controller
public class MyCoursesController {
    
    @Autowired
    private CourseService courseService;
    
    @RequestMapping(value="/myCourses/{user_id}", method=RequestMethod.GET)
    public ModelAndView getMyCoursesPage(@PathVariable String user_id) {
        ModelAndView modelAndView = new ModelAndView("my-courses-form");
        List<Course> courses =  courseService.getMyCourses(user_id);
        modelAndView.addObject("myCourses", courses);
        return modelAndView;
    }
    
    @RequestMapping(value="/searchCourses", method=RequestMethod.GET)
    public ModelAndView getAllCourses() {
        ModelAndView modelAndView = new ModelAndView("get-all-courses");
        List<Course> courses =  courseService.getCourseList();
        modelAndView.addObject("courses", courses);
        return modelAndView;
    }
    
    @RequestMapping(value="/registerCourse/{user_id}/{course_id}", method=RequestMethod.GET)
    public ModelAndView registerCourse(@PathVariable String user_id, @PathVariable String course_id) {
        ModelAndView modelAndView = new ModelAndView("my-courses-form");
        try {
            RegisteredCourse course = new RegisteredCourse();
            course.setCourse_id(course_id);
            course.setUser_id(user_id);
            List<Course> courses = courseService.registerCourse(course);
            modelAndView.addObject("myCourses", courses);
            return modelAndView;
        } catch (ConstraintViolationException e) {
            modelAndView = new ModelAndView("get-all-courses");
            List<Course> courses =  courseService.getCourseList();
            modelAndView.addObject("errMsg", "You are already registered for " + course_id);
            modelAndView.addObject("courses", courses);
            return modelAndView;
        } 
        //save course id and return list of courses user is registered.
    }
    
    @RequestMapping(value="/dropCourse/{user_id}/{course_id}", method=RequestMethod.GET)
    public ModelAndView dropCourse(@PathVariable String user_id, @PathVariable String course_id) {
        ModelAndView modelAndView = new ModelAndView("my-courses-form");
        
            RegisteredCourse course = new RegisteredCourse();
            course.setCourse_id(course_id);
            course.setUser_id(user_id);
            List<Course> courses = courseService.dropClasses(user_id, course_id);
            modelAndView.addObject("myCourses", courses);
            modelAndView.addObject("dropMsg","You have been Dropped from "+ course_id);
            return modelAndView;
        //save course id and return list of courses user is registered.
    }
}

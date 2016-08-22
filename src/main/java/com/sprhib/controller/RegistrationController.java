/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.controller;

import com.sprhib.model.Login;
import com.sprhib.model.Student;
import com.sprhib.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hardik
 */
@Controller
public class RegistrationController {
    
        @Autowired
	private StudentService studentService;
        
        @RequestMapping(value="/studentRegistration", method=RequestMethod.GET)
	public ModelAndView getRegistrationClass() {
            ModelAndView modelAndView = new ModelAndView("student-registration-form");
            modelAndView.addObject("student", new Student());
            return modelAndView;
	}
        
        @RequestMapping(value="/studentRegistration", method=RequestMethod.POST)
	public ModelAndView registerStudent(@ModelAttribute Student student) {
            ModelAndView modelAndView = new ModelAndView("login-form");
		studentService.addStudent(student);
		String message = "Registration was successfull.Please Login";
		modelAndView.addObject("message", message);
                modelAndView.addObject("login", new Login());
		return modelAndView;
	}
}

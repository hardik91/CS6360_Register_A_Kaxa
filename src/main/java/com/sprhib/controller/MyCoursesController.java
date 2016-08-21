/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.controller;

import com.sprhib.model.Login;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nishi
 */
@Controller
public class MyCoursesController {
    @RequestMapping(value="/myCourses", method=RequestMethod.GET)
    public ModelAndView getMyCoursesPage() {
        ModelAndView modelAndView = new ModelAndView("my-courses-form");
        return modelAndView;
    }
}

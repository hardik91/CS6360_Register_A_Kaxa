/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hardik
 */
@Controller
public class RegistrationController {
        @RequestMapping(value="/studentRegistration", method=RequestMethod.GET)
	public ModelAndView getRegistrationClass() {
            ModelAndView modelAndView = new ModelAndView("student-registration-form");
            return modelAndView;
	}
}

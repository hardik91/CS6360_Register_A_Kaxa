/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.controller;

import com.sprhib.model.Login;
import com.sprhib.service.LoginService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nishi
 */
@Controller
public class LoginController {
    
    @Autowired
    private LoginService loginService;
    
    @RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
            ModelAndView modelAndView = new ModelAndView("login-form");
            modelAndView.addObject("login", new Login());
            return modelAndView;
	}
    
        @RequestMapping(value="/authenticate", method=RequestMethod.POST)
	public ModelAndView addingTeam(@ModelAttribute Login login) {
		
            boolean isUserExists = loginService.checkLogin(login.getUserName(), login.getUserPassword());
            if(!isUserExists){
                ModelAndView modelAndView = new ModelAndView("login-form");
                modelAndView.addObject("login", new Login());
                String message = "Incorrect Username or Passoword.";
                modelAndView.addObject("errorMsg", message);
                return modelAndView;
            }else{
                ModelAndView modelAndView = new ModelAndView("home");
                String message = "You've been logged in Succeffully";
                modelAndView.addObject("loginMessage", message);
                return modelAndView;
            }     
	}
       
}

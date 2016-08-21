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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nishi
 */
@Controller
@SessionAttributes("user_id")
public class LoginController {
    
    @Autowired
    private LoginService loginService;
    
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public ModelAndView getLogInPage() {
        ModelAndView modelAndView = new ModelAndView("login-form");
        modelAndView.addObject("login", new Login());
        return modelAndView;
    }
    
        @RequestMapping(value="/authenticate", method=RequestMethod.POST)
	public ModelAndView checkifUserExists(@ModelAttribute Login login, Model model) {
		
            boolean isUserExists = loginService.checkLogin(login.getUserName(), login.getUserPassword());
            if(!isUserExists){
                ModelAndView modelAndView = new ModelAndView("login-form");
                modelAndView.addObject("login", new Login());
                String message = "Incorrect Username or Passoword.";
                modelAndView.addObject("errorMsg", message);
                return modelAndView;
            }else{
                ModelAndView modelAndView = new ModelAndView("home");
                if(!model.containsAttribute("user_id")) {
                        model.addAttribute("user_id",login.getUserName());
                }
                String message = "You've been logged in Succeffully";
                modelAndView.addObject("loginMessage", message);
                modelAndView.addObject("user_name", login.getUserName());
                return modelAndView;
            }     
	}
       
}

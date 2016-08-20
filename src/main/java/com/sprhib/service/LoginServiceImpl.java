/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.service;

import com.sprhib.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nishi
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDAO loginDAO;
    
    public boolean checkLogin(String userName, String userPassword){
        System.out.println("In Service class...Check Login");
        return loginDAO.checkLogin(userName, userPassword);
    }
    
}

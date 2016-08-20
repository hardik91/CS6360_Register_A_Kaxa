/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.model;

import java.io.Serializable;
import java.util.List;
import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.persistence.Embeddable;
/**
 *
 * @author Nishi
 */
@Entity
@Table(name = "login")
public class Login{
    @Id
    @GeneratedValue
    @Column(name = "stud_inst_id")
    private Integer stud_inst_id;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "password")
    private String userPassword;

    @Column(name = "type")
    private String type;

    public Integer getStud_inst_id() {
        return stud_inst_id;
    }

    public void setStud_inst_id(Integer stud_inst_id) {
        this.stud_inst_id = stud_inst_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
        
        
}

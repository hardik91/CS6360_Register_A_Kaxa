/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.FilterDef;
import org.hibernate.annotations.ParamDef;

/**
 *
 * @author Hardik
 */
@Entity
@Table(name="registered_course")
public class RegisteredCourse implements Serializable {
    @Id
    @Column(name="course_id")
    private String course_id;
    
    @Column(name="user_id")
    private String user_id;

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}

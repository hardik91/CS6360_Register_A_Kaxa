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
@Table(name="course")
public class Course implements Serializable{
    @Id
    @Column(name="course_id")
    private String course_id;
    
    @Column(name="course_name")
    private String course_name;
    
    @Column(name="dept_id")
    private String dept_id;
    
    @Column(name="credits")
    private Integer credits;
    
    @Column(name="inst_id")
    private Integer inst_id;
    
    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getDept_id() {
        return dept_id;
    }

    public void setDept_id(String dept_id) {
        this.dept_id = dept_id;
    }

    public Integer getCredits() {
        return credits;
    }

    public void setCredits(Integer credits) {
        this.credits = credits;
    }

    public Integer getInst_id() {
        return inst_id;
    }

    public void setInst_id(Integer inst_id) {
        this.inst_id = inst_id;
    }
}

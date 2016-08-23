<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Home page</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/homePage.css" />


</head>
    <body>
        <div id="wrapper">
            <div id="header">
                    <div id="logo">
                            <h1><a href="#">register-A-kaksha</a></h1>
                    </div>
            </div>
            <div id="menu">
                    <ul>
                            <li class="first current_page_item"><a href="${cp}">Homepage</a></li>
                           
                            <li><a href="${cp}/studentRegistration">Sign Up</a></li>
                             <c:if test="${user_id != null}">
                                <li><a href="${cp}/myCourses">My Courses</a></li>
                        </c:if>
                        <c:if test="${user_id != null}">
                                <li><a href="${cp}/searchCourses">Search Courses</a></li>
                        </c:if>
                            <li><a href="${cp}/about">About</a></li>
                            
                            <li class="last"> <a>Welcome, ${user_id}! </a></li>
                    </ul>
                    <br class="clearfix" />
            </div>
                            <p> ${errMsg} </p>
                     <div id="table" >
                         <table class="table">
                        <thead>
                            <tr>
                                <th>Course Id</th>
                                <th>Course Name</th>
                                <th>Department Id</th>
                                <th>Instructor Id</th>
                                <th>Credits</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                             <tbody>
                                 <tr>
                                     <td>&nbsp;</td>           
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td> 
                                        <td>&nbsp;</td>         
                                     </tr>
                                    <tr>
                                        <td>&nbsp;</td>           
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td>         
                                        <td>&nbsp;</td>         
                                     </tr>
                                  <c:forEach items="${courses}" var="course">
                                    <tr>
                                        <td>${course.course_id}</td>           
                                        <td>${course.course_name}</td>         
                                        <td>${course.dept_id}</td>         
                                        <td>${course.credits}</td>         
                                        <td>${course.inst_id}</td> 
                                        <td><a href="${cp}/registerCourse/${user_id}/${course.course_id}">Register</a></td>         
                                     </tr>
                                </c:forEach>
                             </tbody>
                         </table>
                     </div>
         
    </body>
</html>

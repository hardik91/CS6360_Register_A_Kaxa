<%-- 
    Document   : my-courses-form
    Created on : Aug 20, 2016, 9:16:23 PM
    Author     : Nishi
--%>

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
                            <li><a href="${cp}/myCourses">My classes</a></li>
                            <li><a href="${cp}/registration">Register for courses</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">About</a></li>
                            <li ><a href="#">Contact</a></li>
                            <li class="last"> <a>Welcome, ${user_id}! </a></li>
                    </ul>
                    <br class="clearfix" />
            </div>
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
                                <td>CS111</td>
                                <td> Operating Systems </td>
                                <td>CS</td>
                                <td>1234</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>CN112</td>
                                <td> Network Security </td>
                                <td>CN</td>
                                <td>1212</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>CS121</td>
                                <td> Computational complexity </td>
                                <td>CS</td>
                                <td>1122</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>CS131</td>
                                <td>Software Engineering</td>
                                <td>CS</td>
                                <td>1112</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                                
                            </tr>
                            <tr>
                                <td>CN111</td>
                                <td>Wireless Security</td>
                                <td>CN</td>
                                <td>1113</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>EE141</td>
                                <td>Embedded Systems</td>
                                <td>EE</td>
                                <td>1441</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>EE155</td>
                                <td>Design of Digital Circuits</td>
                                <td>EE</td>
                                <td>1555</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>EE161</td>
                                <td>Time Signal Processing</td>
                                <td>EE</td>
                                <td>1616</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>CS188</td>
                                <td>Compiler Design</td>
                                <td>CS</td>
                                <td>1881</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                            <tr>
                                <td>CS191</td>
                                <td>Analysis of Algorithms</td>
                                <td>CS</td>
                                <td>1919</td>
                                <td>4</td>
                                <td><a href="url">Register</a></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
    </body>
</html>

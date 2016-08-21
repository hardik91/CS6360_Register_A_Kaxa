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
    ${loginMessage}
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">register-A-kaksha</a></h1>
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="#">Homepage</a></li>
			<li><a href="#">My classes</a></li>
			<li><a href="${cp}/registration">Register for courses</a></li>
			<li><a href="#">Support</a></li>
			<li><a href="#">About</a></li>
			<li class="last"><a href="#">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="${cp}/resources/images/pic01.jpg" width="870" height="230" alt="" />
	</div>
	<div id="page">
		<div id="content">
			<div class="box">
				<h2>Welcome to register-A-kaksha online course management page</h2>
                                
                                <div>
                                    <p>Managing your classes has never been easier. Our user-friendly web-based administration system automatically controls your online class listings and registration pages. </p>
                                </div>
			</div>
                    <div id="table">
                        <table border="2">
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
			
						
                </div>
            
        </div>
</body>
</html>
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
                    <h1><font face="Lucida Calligraphy"><a href="#">Register-A-Kaksha</a></font></h1>
                        <h5>
		</div>
	</div>
	<div id="menu">
		<ul>
                        
			<li class="first current_page_item"><a href="#">Homepage</a></li>
			
                        <c:if test="${user_id == null}">
                            <li><a href="${cp}/login">Login</a></li>
			<li><a href="${cp}/studentRegistration">Sign Up</a></li>
                        </c:if>
                        <c:if test="${user_id != null}">
                            <li><a href="${cp}/myCourses/${user_id}">My Courses</a></li>

                            <li><a href="${cp}/searchCourses">Search Courses</a></li>

                            <li><a href="${cp}/about">About</a></li>
                             <li><a href="${cp}/logout">Logout</a></li>
                            <li > <a>Welcome, ${user_id}! </a></li> 
                        </c:if>

		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="${cp}/resources/images/pic01.jpg" width="870" height="230" alt="" />
	</div>
	
        <div id="page">
		<div id="content">
			<div class="box">
                            
				<h4>Welcome to Register-A-Kaksha online course management website</h4>
				<p>
					Managing your classes has never been easier. Our user-friendly web-based administration system automatically controls your online class listings and registration pages.
                                </p>
			</div>
			<div class="box" id="content-box1">
				<h3>Services</h3>
				<ul class="section-list">
					<li class="first">
						<img class="pic alignleft" src="resources/images/pic06.jpg" width="70" height="70" alt="" />
						<span>Student Registration </span>
					</li>
					<li>
						<img class="pic alignleft" src="resources/images/pic07.jpg" width="70" height="70" alt="" />
						<span>Adding classes</span>
					</li>
					<li class="last">
						<img class="pic alignleft" src="resources/images/pic08.jpg" width="70" height="70" alt="" />
						<span>Dropping classes</span>
					</li>
				</ul>
			</div>
			<div class="box" id="content-box2">
				<h3>Our Programs</h3>
				<p>
					The University offers various types of programs. Find your perfect university program with our course guides ? covering entry requirements, specializations, career prospects and more. Click on the listings below to find out about available programs in your subject of interest.
				</p>
				<ul class="list">
					<li class="first"><a href="#">Under graduate programs</a></li>
					<li><a href="#">Online programs</a></li>
					<li><a href="#">Research programs</a></li>

					<li class="last"><a href="#">Post graduate programs</a></li>
				</ul>
			</div>
			<br class="clearfix" />
		</div>
		
		<br class="clearfix" />
	</div>
	<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>ONLINE REGISTRATION MADE EASY!</h3>
			<p>
                            
The system is used by university of large size of students with different streams.  Register-A-Kaksha is perfect for Continuing Education, Professional Development, Professional Development, and Student Enrichment ? Online Registration Made Easy! It is ideally suited for face-to-face, online and hybrid class registration processes, and integrates with Learning Management Systems (LMS) such as Blackboard Learn, Haiku, and Canvas. Online Registration Made Easy!
We can help you use your Race to the Top funding to create a turn-key solution to meet the common core curriculum standards initiative.
<br>
What can the system do for you?
</br>
University offers classes for which participants need to register in advance, So it's online event registration website can make you a hero. Why? Because this online class registration system will save your university countless hours of administrative time, create a ?green? and paperless event registration process, reduce costs and be available to take sign-ups 24/7. 
To learn why the class management web site is head and shoulders above anything else available, do it for free today..
Register-A-Kaksha ? Online Registration Made Easy!
			</p>
		</div>
		
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Registration Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/registration.css">
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
                            <li class="first current_page_item"><a href="${cp}/login">Login</a></li>
                            <li><a href="${cp}/studentRegistration">Student Registration</a></li>
                    </ul>
                    <br class="clearfix" />
            </div>
                    <div class="main">
      <div class="one">
        <div class="register">
         
           <form:form method="POST" commandName="student" action="${pageContext.request.contextPath}/studentRegistration">
            
               <div style="visibility: hidden">
                   <label for="first_name">First Name</label>
                <form:input type="text" path="first_name"  placeholder="First Name"/>
               </div>
              
            <div>
                   <label for="first_name">First Name</label>
                <form:input type="text" path="first_name"  placeholder="First Name"/>
               </div>
            <div>
              <label for="last_name">Last Name</label>
                <form:input type="text" path="last_name" placeholder="Last Name" />
            </div>
              <div>
                  <label for="dob">DOB</label>
                  <form:input type="date" path="dob" placeholder="Date of Birth" />
                </div>
               <div>
                   <label for="gender">Gender</label>
                   <form:select path="gender">
					  <form:option value="M" label="Male" />
					  <form:option value="F" label="Female" />
				       </form:select>
               </div>
            <div>
              <label for="Address">Address</label>
              <form:input type="text" id="addr" spellcheck="false" path="address" placeholder="Address"/>
            </div>
              
              <div>
              <label for="email">Email</label>
              <form:input type="email" path="email" placeholder="Email Id"/>
            </div>
              
            <div>
              <label for="username">Username</label>
              <form:input type="text" path="user_id" spellcheck="false" placeholder="Username" />
            </div>
            <div>
              <label for="password">Password</label>
              <form:input type="password" path="password" placeholder="Password"/>
            </div>
          
            <div>
              
              <input class="btn" type="submit" name="submit" value="Register"/>
            </div>
          </form:form>
        </div>              
        
          
        </body>
</html>

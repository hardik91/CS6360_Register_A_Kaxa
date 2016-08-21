<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/homePage.css" />
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/login.css" />

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
       
                  <form:form method="POST" commandName="login" action="${pageContext.request.contextPath}/authenticate">
  <fieldset class="account-info">
    <label>
      Username
      <form:input type="text" path="userName" />
    </label>
    <label>
      Password
      <form:input type="password" path="userPassword" />
    </label>
  </fieldset>
  <fieldset class="account-action">
    <input class="btn" type="submit" name="submit" value="Login">
  </fieldset>
</form:form>   

</body>
</html>
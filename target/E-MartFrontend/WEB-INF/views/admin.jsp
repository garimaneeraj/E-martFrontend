<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" isELIgnored="false"%>
<%@include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, intial scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<style>
body {
	color: #5a5a5a;
	font-family: 'Lato', sans-serif;
}
h5, a{
margin-left:40px;
font-family: 'Montserrat', sans-serif;}
</style>
				<br>
				
				<div class="row" id="featuresHeading">
  <div class="col-12">
  <h2><center>Dear <strong>${user}</strong>, Welcome to Admin Page.</center><br></h2>
  <p><center>Click any of the above navigation to see product list or category list or supplier and user list</center><br></p>
  <p><center>U have access to all lists of this site</center><br></p>
  <br>
	<h5>Click below to logout</h5>
	<a href="<c:url value="/login" />">Logout</a>
	</div> 
    
</body>
</html>
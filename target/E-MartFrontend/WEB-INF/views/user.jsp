<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <%@include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Users</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<button type="button" class="btn btn-link"> <a href ="addUser">ADD</a></button>

<table border="1">
<tr>
<th>Email ID</th>
<th>User Name</th>
<th>Password</th>
<th>Address</th>
<th>Mobile</th>
<th>Enabled</th>
<th>Role</th>
<th>Action</th>

</tr>
<c:forEach var="user" items="${users}">
<tr>
<td>${user.emailId}</td>
<td>${user.username}</td>
<td>${user.password}</td>
<td>${user.address}</td>
<td>${user.mobile}</td>
<td>${user.enabled}</td>
<td>${user.role}</td>
<!-- <td><input type = "submit" value="Edit"><input type = "submit" value="Delete"></td>-->
<td><button type="button" class="btn btn-danger"><a href="deleteuser?id=${user.emailId }">Delete</a></button></td>
<td><button type="button" class="btn btn-warning"><a href="updatesUser?id=${user.emailId }">Update</a></button></td>

</tr>
</c:forEach>

</table>
</body>
</html>
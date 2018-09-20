<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Users</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div style="padding-left:150px; padding-top:50px;">
<h1>
	Enter User Details
</h1>
	<!-- <button type="button" class="btn btn-link"> <a href ="addUser">ADD</a></button> -->
	<c:url var="addAction" value="/user/add"></c:url>

	<form:form action="${addAction}" modelAttribute="user"
		enctype="multipart/form-data">
		<table>
			<c:if test="${!empty user.username}">
				<tr>
					<td><form:label path="id">
							<spring:message text="Userid" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="username">
						<spring:message text="User Name" />
					</form:label></td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td><form:label path="emailId">
						<spring:message text="Email Id" />
					</form:label></td>
				<td><form:input path="emailId" /></td>
			</tr>
			<tr>
				<td><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">
						<spring:message text="Phone" />
					</form:label></td>
				<td><form:input path="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						<spring:message text="Password" />
					</form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td><form:label path="age">
						<spring:message text="Age" />
					</form:label></td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
			<tr>
				<td><form:label path="role">
						<spring:message text="Role" />
					</form:label></td>
				<td><form:input path="role" /></td>
			</tr>
			<tr>
				<td><form:label path="enabled">
						<spring:message text="Enabled" />
					</form:label></td>
				<td><form:input path="enabled" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty user.username}">
						<input type="submit" value="<spring:message text="Edit User"/>" />
					</c:if> <c:if test="${empty user.username}">
						<input type="submit" value="<spring:message text="Add user"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>User List</h3>
	<c:if test="${!empty user}">
		<table class="tg">
			<tr>
				<th width="80">User ID</th>
				<th width="80">User Name</th>
				<th width="80">Email Id</th>
				<th width="80">Address</th>
				<th width="80">Phone</th>
				<th width="80">Password</th>
				<th width="80">Age</th>
				<th width="80">Role</th>
				<th width="80">Enabled</th>
				

			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.emailId}</td>
					<td>${user.address}</td>
					<td>${user.phone}</td>
					<td>${user.password}</td>
					<td>${user.age}</td>
					<td>${user.role}</td>
					<td>${user.enabled}</td>
					<!-- <td><input type = "submit" value="Edit"><input type = "submit" value="Delete"></td>-->
					<td><button type="button" class="btn btn-danger">
							<a href="deleteuser?id=${user.emailId }">Delete</a>
						</button></td>
					<td><button type="button" class="btn btn-warning">
							<a href="updatesUser?id=${user.emailId }">Update</a>
						</button></td>

				</tr>
			</c:forEach>

		</table>
	</c:if>
	</div>
</body>
</html>
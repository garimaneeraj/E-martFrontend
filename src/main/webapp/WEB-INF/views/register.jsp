<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIGN UP</title>
<!-- <link rel="stylesheet"  href="resources/css/registration.css">
 -->
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
	<style>
body {
	background-color: #eee;
	align: center;
}

*[role="form"] {
	max-width: 530px;
	padding: 15px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 0.3em;
}

*[role="form"] h2 {
	margin-left: 5em;
	margin-bottom: 1em;
}
</style>
	<div class="container">
		<form:form class="form-horizontal" action="register" role="form"
			modelAttribute="user">
			<h2>Registration Form</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Full
					Name</label>
				<div class="col-sm-9">
					<form:input path="username" id="firstName" placeholder="Full Name"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email</label>
				<div class="col-sm-9">
					<form:input path="emailId" id="email" placeholder="Email"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<form:input path="password" id="password" placeholder="Password"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="Address" class="col-sm-3 control-label">Address</label>
				<div class="col-sm-9">
					<form:input path="address" id="address" placeholder="Address"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="number" class="col-sm-3 control-label">Number</label>
				<div class="col-sm-9">
					<form:input path="phone" id="number" placeholder="number"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="Age" class="col-sm-3 control-label">Age</label>
				<div class="col-sm-9">
					<form:input path="age" id="Age" placeholder="Age"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="Role" class="col-sm-3 control-label">Role</label>
				<div class="col-sm-9">
					<form:input path="role" id="Role" placeholder="Role"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">
						Register
					</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" isELIgnored="false"%>
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
	<!--style-->
	<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700');

@import url('https://fonts.googleapis.com/css?family=Lato:300,400,700');

@import
	url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;
/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */
body {
	color: #5a5a5a;
	font-family: 'Lato', sans-serif;
}

h1, h2, h3, h4, h5 {
	font-family: 'Montserrat', sans-serif;
}

.parallax-section {
	background-attachment: fixed !important;
}

.btn-capsul {
	border-radius: 30px;
}

.btn-aqua {
	background: #0297FF;
	color: #fff;
}

.btn-aqua:hover {
	background: #10629b;
	color: #fff;
}

.btn-dark-blue {
	background: #0C242E;
	color: #fff;
}

.btn-dark-blue:hover {
	background: #063d28;
	color: #fff;
}

.btn-transparent-white {
	border: 2px solid #fff;
	color: #fff;
}

.btn-transparent-white:hover, .btn-transparent-white:focus {
	background: #fff;
	color: #0297FF
}

.relative-box {
	position: relative
}

section {
	float: left;
	width: 100%;
	padding: 80px 0;
}

/* TOP HEADER
-------------------------------------------------- */
.navbar.top-bar {
	border-radius: 0;
	padding: 16px 0;
	z-index: 16;
}

.navbar-toggler {
	border: 1px solid #fff;
	color: #000000;
	position: absolute;
	right: 21px;
}

.sps {
	padding: 1em .5em;
	position: fixed;
	top: 0;
	left: 0;
	transition: all 0.25s ease;
	width: 100%;
}

.sps--abv {
	background-color: transparent;
	color: #000;
}

.sps--blw {
	background-color: #fff;
	color: #fff;
}

.top-bar a.navbar-brand {
	color: #6a5acd;
	font-size: 26px;
	font-weight: 800;
	padding: 5px 0 0 10px;
	text-transform: uppercase;
}

.sps--blw.top-bar a.navbar-brand {
	color: #000;
}

.top-bar a.navbar-brand span {
	color: #0297ff;
}

.top-bar .nav-link {
	color: #000000;
	font-size: 16px;
	font-weight: 500;
	padding: 12px 18px !important;
}

.sps--blw.top-bar .nav-link {
	color: #000
}

.top-bar .navbar-nav .nav-item {
	margin: 0
}

.top-bar .nav-link:hover, .top-bar .nav-item.active a {
	color: #000000;
	border-bottom: 2px solid #fff;
	border-radius: 0;
}

.sps--blw.top-bar .nav-link:hover, .sps--blw.top-bar .nav-item.active a
	{
	color: #0297ff;
	border-bottom: none;
	border-radius: 0;
}

$('
a[href^="#"] ').on ('click', function (event) {var target = $(
	$(this).attr('href') );if ( target.length ) { event.preventDefault();
	$('html , body').animate({ scrollTop:target.offset ().top
	
}
,
1000);
}
}
);
</style>
<nav
		class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
		<div class="container">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarCollapse1"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand mx-auto" href="#">Gadgets<span> Shop</span></a>
			<div class="collapse navbar-collapse" id="navbarCollapse1">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="products">Products</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="categories">Category</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="suppliers">Supplier</a></li>
					<li class="nav-item"><a class="nav-link" href="user">User</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="login">Sign
							Out</a></li>
					
				</ul>
				</div>
</div>
</nav>
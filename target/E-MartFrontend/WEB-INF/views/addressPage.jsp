<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    
<div style="padding-left:150px; padding-top:50px; margin:auto; font:sans-serif;">
<div class="container">

<table class="table">
<tr bg color="tomato">
<td colspan="6"><center><h3>Address</h3></center></td>
</tr>

<tr>

<td>Shipping Address:</td>
<td><input type="text" name="shipping" required/></td>
</tr>
<tr>
	<td>Billing Address:</td>
	<td><input type="text" name="billing"/></td>
</tr>
<tr>
	<td colspan="2">
		<a href="<c:url value='/Payment'/>" class="btn btn-info">Pay Now</a>
	</td>
</tr>
</div>
</div>

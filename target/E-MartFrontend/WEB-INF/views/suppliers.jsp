<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Supplier Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body >
<div style="padding-left:200px; padding-top:30px">
<h1>
	Suppliers Details
</h1>



<c:url var="addAction" value="/supplier/add" ></c:url>

<form:form action="${addAction}" modelAttribute="supplier">
<table>
	<c:if test="${!empty supplier.supplierName}">
	<tr>
		<td>
			<form:label path="supplierId">
				<spring:message text="supplierId"/>
			</form:label>
		</td>
		<td>
			<form:input path="supplierId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="supplierId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="supplierName">
				<spring:message text="supplier Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="supplierName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="supplierAddr">
				<spring:message text="supplier Addr"/>
			</form:label>
		</td>
		<td>
			<form:input path="supplierAddr" />
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty supplier.supplierName}">
				<input type="submit"
					value="<spring:message text="Edit Supplier"/>" />
			</c:if>
			<c:if test="${empty supplier.supplierName}">
				<input type="submit"
					value="<spring:message text="Add Supplier"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>

<br>
<h3>Supplier List</h3>
<c:if test="${!empty suppliers}">
	<table class="tg">
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Supplier Addr</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${suppliers}" var="supplier">
		<tr>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.supplierAddr}</td>
			<td><a href="<c:url value='/editcategory/${supplier.supplierId}' />" >Edit</a></td>
			<td><a href="<c:url value='/removecategory/${supplier.supplierId}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>
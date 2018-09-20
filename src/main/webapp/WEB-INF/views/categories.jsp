 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" isELIgnored="false"%>
<%@include file="header1.jsp" %>
<html>
<head>
	<title>Category Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc; align:center;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff; align:center;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0; align:center;}
		.tg .tg-4eph{background-color:#f9f9f9;align:center;}
		body {
	background-color: #eee;
	align: center;
	
}
	</style>
</head>
<body>
<div style="padding-left:150px; padding-top:50px;">
<h1>
	Enter Category Details
</h1>



<c:url var="addAction" value="/category/add" ></c:url>

<form:form action="${addAction}" modelAttribute="category">
<table>
	<c:if test="${!empty category.categoryName}">
	<tr>
		<td>
			<form:label path="categoryId">
				<spring:message text="categoryId"/>
			</form:label>
		</td>
		<td>
			<form:input path="categoryId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="categoryId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="categoryName">
				<spring:message text="Category Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="categoryName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="categoryDesc">
				<spring:message text="Category Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="categoryDesc" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty category.categoryName}">
				<input type="submit"
					value="<spring:message text="Edit Category"/>" />
			</c:if>
			<c:if test="${empty category.categoryName}">
				<input type="submit"
					value="<spring:message text="Add Category"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Category List</h3>
<c:if test="${!empty categories}">
	<table class="tg">
	<tr>
		<th width="80">Category ID</th>
		<th width="120">Category Name</th>
		<th width="120">Category Desc</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${categories}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDesc}</td>
			<td><a href="<c:url value='/editscategory/${category.categoryId}' />" >Edit</a></td>
			<td><a href="<c:url value='/removescategory/${category.categoryId}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>
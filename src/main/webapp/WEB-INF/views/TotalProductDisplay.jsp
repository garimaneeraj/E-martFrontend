<%@ page languauge="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<html>
<head>
	<title>Shopping Cart</title>
	<style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc; align:center;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff; align:center;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0; align:center;}
		.tg .tg-4eph{background-color:#f9f9f9;align:center;}
	</style>
</head>
<body>
<h1>
	Shopping Cart
</h1>

<div class="container">
<table class="table" border="1">
<tr>
	<td rowspan="9">
		<img src="<c:url value="/resources/images/${product.productId}.jpg"/>"width="150px"/>
	</td>
</tr>
	
	<tr>
		<td>Product ID</td>
		<td>${product.productId}</td> 
	</tr>
	
	<tr>
		<td>
			Product Name
		</td>
		<td>
			${product.productName}
		</td> 
	</tr>
	<tr>
		<td>
			Price
		</td>
		<td>
			${product.price}
		</td>
	</tr>
	<tr>
		<td>Supplier ID
		</td>
		<td>${product.supplierId}
		</td>
	</tr>
	<tr>
		<td>
			Stock
		</td>
		<td>
			${product.stock}
		</td>
	</tr>
	<tr>
		<td>
			Category
		</td>
		<td>
			${categoryName}
		</td>
	</tr>
	<form action="<c:url value="/addToCart/$ {product.productId}"/>"method="get">
	<tr>
		<td>Quantity
		</td>
		<td>
			<select name="quantity" class="from-control btn-block">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="AddToCart" class="btn btn-info btn-block">
		</td>
</tr>
</form>
</table>	
</div>
</body>
</html>
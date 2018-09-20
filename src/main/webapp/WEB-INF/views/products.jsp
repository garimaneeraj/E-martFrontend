<%@include file="header1.jsp" %>
<html>
<head>
	<title>Product Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<div style="padding-left:150px; padding-top:50px;">
<h1>
	Enter Product Details
</h1>



<c:url var="addAction" value="/product/add" ></c:url>

<form:form action="${addAction}" modelAttribute="product" enctype="multipart/form-data">
<table>
	<c:if test="${!empty product.productName}">
	<tr>
		<td>
			<form:label path="productId">
				<spring:message text="productId"/>
			</form:label>
		</td>
		<td>
			<form:input path="productId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="productId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="productName">
				<spring:message text="Product Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="productName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="productDesc">
				<spring:message text="Product Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="productDesc" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price">
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="price" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="stock">
				<spring:message text="Stock"/>
			</form:label>
		</td>
		<td>
			<form:input path="stock" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="categoryId">
				<spring:message text="Category Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="categoryId" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="supplierId">
				<spring:message text="Supplier Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="supplierId" />
		</td>
	</tr>
	<tr>
	<tr>
		<td>
			<form:label path="image">
				<spring:message text="Product Image"/>
			</form:label>
		</td>
		<td>
			<form:input path="image" type="file" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty product.productName}">
				<input type="submit"
					value="<spring:message text="Edit Product"/>" />
			</c:if>
			<c:if test="${empty product.productName}">
				<input type="submit"
					value="<spring:message text="Add Product"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Product List</h3>
<c:if test="${!empty products}">
	<table class="tg">
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Desc</th>
		<th width="120">Price</th>
		<th width="120">Stock</th>
		<th width="120">Category Id</th>
		<th width="120">Supplier Id</th>
		<th>Image</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${products}" var="product">
		<tr>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.productDesc}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td>${product.categoryId}</td>
			<td>${product.supplierId}</td>
			<td><a href="TotalProductDisplay"><img src="<c:url value='/resources/images/${product.productId}.png'/>" height="150" width="150"/></a>
			<td><a href="<c:url value='/editproduct/${product.productId}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeproduct/${product.productId}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>
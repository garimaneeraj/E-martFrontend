<%@include file="header.jsp" %>
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
	Product page
</h1>
<c:if test="${!empty products}">
			<c:forEach items="${products}" var="product">
			<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
						
							<h3 class="panel-title">${product.productName}</h3>
						</div>
						<img src="<c:url value='/resources/images/${product.productId}.png'/>" height="150" width="150"/>
						</p>
						${product.productDesc}<br> <a href="ProductDetail/${product.productId}">Click
							me</a>
						</p>
					</div>
				</div>
				</c:forEach>
				</c:if>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
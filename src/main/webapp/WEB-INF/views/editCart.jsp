<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Edit Cart</title>
<script type="text/javascript">
	function calculateSubTotal(price) {
		var quantity = document.getElementById("quantity").value;
		document.getElementById("subTotal").value = quantity * price;
	}
</script>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<c:url value="/updateCartItem" var="updateCart"></c:url>
				<form:form action="${updateCart}" method="post" modelAttribute="cartItem">
					<table class="table">
						<tr>
							<td>SL#</td>
							<td>Product Name</td>
							<td>Quantity</td>
							<td>Price</td>
							<td>Total Price</td>
						</tr>

						
							<tr>
								<td>${cartItem.cartItemId}</td>
								<td>${cartItem.productName}</td>
								<td><form:input path="quantity" /></td>
								<td>${cartItem.price}</td>
								<td>${cartItem.quantity*cartItem.price}</td>
							</tr>
						<tr bgcolor="lightblue">
						<td>	<button type="submit" class="btn btn-primary form-control">Update</button></td>
						</tr>
					</table>
					</form:form>
			</div>
			</div>
			</div>
			</body>
			</html>
<br><br><br><br><br><br>
			<%@include file="footer.jsp"%>
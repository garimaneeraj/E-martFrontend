<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<div style="padding-left:150px; padding-top:50px;">
<div class="container">
<table class="table">
<tr>
	<td> SL# </td>
	<td> Product Name</td>
	<td> Quantity</td>
	<td> Price </td>
	<td> Total Price</td>
	<td> Operation</td>
</tr>

<c:if test="${empty cartItems}">
<tr><td colspan="6"><center><h3>!!!Your Cart Is Empty</h3></center></td></tr>
</c:if>
<tr>
<c:forEach items="${cartItems}" var="cartItem">
<form action="<c:url value="/editCart/${cartItem.cartItemId}"/>" method="post">
<tr>
	<td></td>
	<td>${cartItem.productName}</td>
	<td>${cartItem.quantity}</td>
	<td>${cartItem.price}</td>
	<td>${cartItem.quantity*cartItem.price}</td>
	<td>
		<input type="submit" value="Update" class="btn btn-info"/>
		<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class="btn btn-danger">Delete</a>
	</td>	
</tr>
</form>
</c:forEach>
<tr bgcolor="orange">
	<td colspan="4">Total Purchase Amount</td>
	<td colspan="2">${totalPurchaseAmount}</td>
</tr>
<tr bgcolor="lightblue">
	<td colspan="3"><a href="<c:url value="/continueShopping"/>"class="btn btn-info">Continue Shopping</a></td>
	<td colspan="3"><a href="<c:url value="/checkout"/>"class="btn btn-info">CheckOut</a>
</td>
</tr>
</table>
</div>
<%@include file="footer.jsp" %>
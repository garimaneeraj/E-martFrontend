<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    <div style="padding-left:150px; padding-top:50px;">
<div class="container">
<table class="table">
<tr bg color="lighblue">
<td colspan="6"><center><h3>Receipt</h3></center></td>
</tr>

<tr>
	<td colspan="2">Order ID</td>
	<td>ORD00${orderDetail.orderId}</td>
	<td></td>
	<td colspna="2">Order Date</td>
	<td>${orderDetail.orderDate}</td>
</tr>
<tr>
	<td> SL# </td>
	<td> Product Name</td>
	<td> Quantity</td>
	<td> Price </td>
	<td> Total Price</td>
</tr>

<%-- <c:if test="${empty cartitems}">
<tr bgcolor="pink"><td colspan="5"><center><h3>!!!Your Cart Is Empty</h3></center></td></tr>
</c:if> --%>
<tr>
<c:forEach items="${cartItems}" var="cartItem">
<tr>
	<td></td>
	<td>${cartItem.productName}</td>
	<td>${cartItem.quantity}</td>
	<td>${cartItem.price}</td>
	<td>${cartItem.quantity*cartItem.price}</td>
	<td></td>
</tr>
</form>
</c:forEach>
<tr bgcolor="orange">
	<td colspan="4">Total Purchase Amount</td>
	<td colspan="2">INR.${totalPurchaseAmount}/-</td>
</tr>
<tr bg color="pink">
	<td colspan="6"><center><h4>Your order is placed and would be delivered to your given shipping address</h4></center></td>
</tr>
<tr bgcolor="lightblue">
	<td colspan="6"><center><h4>Thanks for shopping Here....Hope to See You Again</h4></center></td>
</td>
</tr>
</table>
</div>
</div>
<%@ include file="footer.jsp" %>
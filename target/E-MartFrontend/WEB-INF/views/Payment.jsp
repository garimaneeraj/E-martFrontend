<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<div class="container">
<table class="table">

<tr>
	<td colspan="6"><center><h3>Your Order</h3></center></td>
</tr>
<tr bgcolor="orange">
	<td colspan="4">Total Purchase Amount</td>
	<td>INR.${totalPurchaseAmount}/-</td>
</tr>
</table>
<br/><br/><br/>

<div class="container">
<table class="table" align="venter" width="50%">

<tr>
	<td colspan="2">Payment Option</td>
</tr>
<form action="<c:url value='/paymentProcess'/>" method="get">
<tr>
	<td colspan="2">
		<input type="radio" name="paymenttype" value="CC"/>Credit Card
		<input type="radio" name="paymenttype" value="DC"/>Debit Card
		<input type="radio" name="paymenttype" value="NB"/>NetBanking
		<input type="radio" name="paymenttype" value="COD"/>Cash On Delivery
	</td>
</tr>

<tr>
	<td>Card No :</td>
	<td><input type="text" name="cardno" required/></td>
</tr>
<tr>
	<td>CVV</td>
	<td><input type="text" name="cvv"/></td>
</tr>
<tr>
	<td> Valid Upto </td>
	<td><input type="text" name="valid"/></td>
</tr>
<tr>
	<td colspan="2">
	<input type="Submit" value ="Pay Now" />
		<%-- <a href="<c:url value='/paymentProcess'/>" class="btn btn-info">Pay Now</a>	 --%>	
	</td>
</tr>
</form>
</table>
<%@include file="footer.jsp" %>
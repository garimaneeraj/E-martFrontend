<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
<style>
#first{
font-size:14px;
}
</style>
<div style="padding-left:150px; padding-top:100px;">
<h3>Product Detail</h3>
<!-- <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="text-danger fa fa-times"></i></button>
                    <h4 class="modal-title" id="myModalLabel"><i class="text-muted fa fa-shopping-cart"></i> <strong>02051</strong> - Nome do Produto </h4>
                  </div>
                  <div class="modal-body"> -->
                  
                  <div style="padding-left:30px; padding-top:50px; ">
                  <div class="container">
                  <c:if test="${!empty product.productId}">
                  
                    <table class="pull-right col-md-8 ">
                         <tbody>
                             <tr>
                                 <td class="h4"><strong>Product Id </strong></td>
                                 <td> </td>
                                 <td class="h5" id="first">${product.productId}</td>
                             </tr>
                             
                             <tr>
                                 <td class="h4"><strong>Product Name </strong></td>
                                 <td> </td>
                                 <td class="h5"id="first">${product.productName}</td>
                             </tr>
                             
                             <tr>
                                 <td class="h4"><strong>Product Desc </strong></td>
                                 <td> </td>
                                 <td class="h5"id="first">${product.productDesc}</td>
                             </tr>
                             <tr>
                                 <td class="h4"><strong>Stock </strong></td>
                                 <td> </td>
                                 <td class="h5"id="first">${product.stock}</td>
                             </tr>
              
                             <tr>
                                 <td class="h4"><strong>Price </strong></td>
                                 <td> </td>
                                 <td class="h5"id="first">${product.price}</td>
                             </tr>
                             
                              
                            
                             <tr>
                                 <td class="btn-mais-info text-primary">
                                     <i class="open_info fa fa-plus-square-o"></i>
                                     <i class="open_info hide fa fa-minus-square-o"></i> Information
                                 </td>
                                 <td> </td>
                                 <td class="h5"></td>
                             </tr> 
<form action="<c:url value='/AddToCart/${product.productId}'/>" method="get">
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
                         </tbody>
                    </table>
                             
                         
                    <div class="col-md-4"> 
                        <img src="<c:url value='/resources/images/${product.productId}.png'/>" height="150" width="150"/>
                    </div>
                    
                   
                    <div class="clearfix"></div>
                   <p class="open_info hide" style="font-size:10px">${product.productDesc}</p>
                  </div>
                    
                  <div class="modal-footer">       
                      
                    <div class="text-right pull-right col-md-3">
                        Price for u: <br/> 
                        <span class="h3 text-muted"><strong>${product.price}</strong></span></span> 
                    </div> 
                      
                    <%-- <div class="text-right pull-right col-md-3">
                        <button><a href="<c:url value='/AddToCart?productId=${product.productId }'/>">Add to Cart</a></button>
                    </div> --%>
                     
                </div>
              </div>
            </div>
            </div>
            </c:if>
            </div>
            </div>
            <%@include file="footer.jsp" %>
            </body>
            </html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div class="row">
<br/>
<br/>
<br/>
<br/>
</div>
<div class="container">
<div class="row">
<div class="col-sm-5 well">
<center>
<img src="${pageContext.request.contextPath}/resources/images/${product.imgName}" height="400px" width="400px"/>
</center>
</div>
<div class="col-md-7">
<table id="cart" class="table table-hover table-condensed tbdesc">
    				<thead>
						<tr>
							<th colspan="2" >Product</th>
							<th colspan="2" >Price</th>
							<th colspan="2" >Supplier</th>
							<th colspan="2" >Description</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">${product.productName}</td>
							<td colspan="2">${product.price}</td>
							<td colspan="2">${product.supplier.supplierName}</td>
						    <td colspan="2">${product.description}</td>
						</tr>
						</tbody>
						</table>
						<div>
						<form action="${pageContext.request.contextPath}/addToCart" method="post">
                		 <input type="hidden" value="${product.productId}" name="pId" />
               			 <input type="hidden" value="${product.price}" name="pPrice" />
               			 <input type="hidden" value="${product.productName}" name="prodName" />
               			 <input type="hidden" value="${product.imgName}" name="prodImage" />
               			 <span style="font-size:40px">Quantity</span>
						<input type="text" name="quant" style="width:50px;height:50px"/>
						<br/><br/>
						<button type="submit" class="btn btn-success btnSize">Add to Cart</button>
                     
                 		</form></div>	
				
				
</div>
</div>
</div>
</div>	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
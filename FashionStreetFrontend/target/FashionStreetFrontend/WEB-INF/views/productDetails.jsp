
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
<br>
</br>
</br>
</br>
</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-2">
 			<div class="panel panel-primary">
                 <div class="panel-heading">Trendy Top</div>
                 <div class="panel-body">
                 <form role="form" method="post" action="${pageContext.request.contextPath}/addToCart" accept-charset="UTF-8">
                 <%-- <table>
                 <th>Name</th>
                 <th>Price</th>
                 <th>Supplier</th>
                 <th>Description</th>
                 <th>Image</th>
                 <tr><td>${product.productName}</td></tr>
                 <tr><td>${product.price}</td></tr>
                 <tr><td>${product.supplier}</td></tr>
                 <tr><td>${product.description}</td></tr>
                 <tr><td><img src="./resources/images/${product.imgName}" height="60px" width="60px"/></td></tr>
                 <tr><td></td></tr>
                 </table> --%>
        <input type="text" name="pname" value="${product.productName}" />
        <input type="text" name="pprice" value="${product.price}" />
        <input type="text" name="pprice" value="${product.supplier}" />
        <input type="text" name="pprice" value="${product.description}" />
<%--         <input type="text" name="pprice" value="<img src="./resources/images/${product.imgName}" height="60px" width="60px"/>" /> --%>
                 <input type="submit" value="Add to Cart" />
                 </form>
                 </div>
             </div>
         </div>
        </div>
  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
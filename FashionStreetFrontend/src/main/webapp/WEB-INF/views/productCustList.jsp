    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
<style>
#tbList{
height:50%;
width:50%;
text-align:center;
}

#tbList tr th
{
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 28px;
}
#tbList tr td
{
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 24px;
}

</style>
</head>
<body>
 <div align="center">
 <div><br><br><br></div>
            <h1>Product List</h1>
           <div id="tbList">
            <table class="table table-striped table-bordered">
            
            <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Supplier</th>
                <th>Image</th>
                </tr>
               </thead>    
               <tbody>         
                <c:forEach var="product" items="${custProducts}">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.category.categoryName}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.supplier.supplierName}</td>
                    <td><a href="${pageContext.request.contextPath}/productDetails1/${product.productId}"><img src="${pageContext.request.contextPath}/resources/images/${product.imgName}" height="60px" width="60px"/></a></td>
                </tr>
                </c:forEach>       
                </tbody>          
            </table>
            </div>
        </div>
 
      <jsp:include page="footer.jsp"></jsp:include>  
</body>
</html>
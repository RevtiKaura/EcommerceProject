    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
            <h1>Product List</h1>
           
            <table border="1">
                <th>No</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Supplier</th>
                <th>Image</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>image Name</th>
                 
                <c:forEach var="product" items="${productlist}">
                <tr>
                   
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.category.categoryName}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.supplier.supplierName}</td>
                    <td><img src="./resources/images/${product.imgName}" height="60px" width="60px"/></td>   
                    <td><a href="<c:url value="/admin/updateProduct/${product.productId}" />">Edit</a></td>   
                    <td><a href="<c:url value="/admin/deleteProduct/${product.productId}" />">Delete</a></td>  
                    <td>${product.imgName}</td>  
                </tr>
                </c:forEach>             
            </table>
        </div>
 
        
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
 <div align="center">
            <h1>Product List</h1>
           
            <table border="1">
                <th>No</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Supplier</th>
                 
                <c:forEach var="product" items="${PList}">
                <tr>
                   
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.brand}</td>
                    <td>${product.category}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.supplier}</td>         
                </tr>
                </c:forEach>             
            </table>
        </div>
 
        
</body>
</html>
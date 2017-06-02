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
            <h1>Supplier List</h1>
           
            <table border="1">
                <th>ID</th>
                <th>Name</th>
               
                 
                <c:forEach var="product" items="${supplierlist}">
                <tr>
                   
                    <td>${product.supplierId}</td>
                    <td>${product.supplierName}</td>
                   
                </tr>
                </c:forEach>             
            </table>
        </div>
 
        
</body>
</html>
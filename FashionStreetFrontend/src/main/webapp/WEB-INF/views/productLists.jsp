    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#tb
{
height:50%;
width:50%;
} 

#tb tr th
{
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 28px;
}
#tb tr td
{
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 24px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <div align="center">
            <h1>Product List</h1>
            <div id="tb">
           
           <table id="myTable" class="datatable table table-condensed table-bordered">
               <thead><tr>
                <th>No</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Supplier</th>
                <th>Image</th>
                <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${productlist}">
                <tr>
                   
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.category.categoryName}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.supplier.supplierName}</td>
                    <td><img src="${pageContext.request.contextPath}/resources/images/${product.imgName}" height="60px" width="60px"/></td>   
                    <td><a href="<c:url value="/admin/updateProduct/${product.productId}"  />">Edit</a> 
                        <a href="<c:url value="/admin/deleteProduct/${product.productId}" />">Delete</a></td>   
                </tr>
                </c:forEach>   
                </tbody>          
            </table>
            </div>
        </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> 
</body>
</html>
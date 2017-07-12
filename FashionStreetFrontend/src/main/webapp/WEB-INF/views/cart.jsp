<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include> 
<div class="container">
<div><br/><br/><br/><br/><br/></div>
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                     <c:forEach var="c" varStatus="st" items="${cartInfo}">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${pageContext.request.contextPath}/resources/upload/${c.cartImage}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${c.cartProductname}</a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.cartQuantity}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.cartPrice}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.cartQuantity * c.cartPrice}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="${pageContext.request.contextPath}/deletePCart/${c.cartId}" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </a></td>
                    </tr>
                   </c:forEach>
                </tbody>
                <tfoot>
      
                        
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                       <%--  <td><h5>Subtotal<br>Estimated shipping</h5><h3>Total</h3></td>
                        <td class="text-right"><h5><strong>$24.59<br>50</strong></h5><h3>${c.cartQuantity * c.cartPrice}</h3></td> --%>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="${pageContext.request.contextPath}/home" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></td>
                        <td>
                       <%--  <a href="${pageContext.request.contextPath}/checkout" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </a> --%>
                        
                        <a href="${pageContext.request.contextPath}/checkout">Checkout</a>
                        </td> 
                   
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
</body>
</html> 
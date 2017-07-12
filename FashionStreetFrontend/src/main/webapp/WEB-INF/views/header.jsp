<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/functionality.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script scr="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.twbsPagination.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css">


</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/home'/>">FashionStreet</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="">Shop by Category<span class="caret"></span></a>
					<%-- <c:set var="do" value="${dp}"></c:set> --%>
					<ul class="dropdown-menu">
						<c:forEach var="catVal" items="${categoryList1}">
							<li><a href="${pageContext.request.contextPath}/productCustList/${catVal.categoryId}">${catVal.categoryName}</a></li>
						</c:forEach>
					</ul></li>
				<li><a href="${contextRoot}/admin/add">Add</a></li>
			</ul>
			
             <%--  <li><a href="<c:url value="/admin" />">Admin</a></li> --%>
              
              		
              
			<ul class="nav navbar-nav navbar-right">
					<c:if test="${pageContext.request.userPrincipal.name==null}">
			<li><a href="${contextRoot}/login">Login!</a></li>
			
			<li><a href="${contextRoot}/reg">Register</a></li></c:if>
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
		    <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
            <li><a href="<c:url value="/logout" />">Logout</a></li>
            </c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>
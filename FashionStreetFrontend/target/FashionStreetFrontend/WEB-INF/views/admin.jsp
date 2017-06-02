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
</head>
<body>

<div><br/>
<br/>
<br/>
<br/></div>
 <ul class="nav nav-pills nav-stacked left-menu" id="stacked-menu">
        <li>
          <a href="#" data-target="#item1" data-toggle="collapse" data-parent="#stacked-menu">Product<span class="caret arrow"></span></a>
          <ul class="nav nav-stacked collapse left-submenu" id="item1">
            <li><a href="google.com">Add</a></li>
            <li><a href="gmail.com">Delete</a></li>
          </ul>
        </li>
        <li>
          <a href="#" data-target="#item2" data-toggle="collapse" data-parent="#stacked-menu">Category<span class="caret arrow"></span></a>          
          <ul class="nav nav-pills nav-stacked collapse" id="item2">
            <li><a href="#">Add</a></li>
            <li><a href="#">Delete</a></li>
          </ul>
        </li>
        <li><a href="#">Supplier</a></li>
      </ul>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<%-- <form action="<c:url value="/"/>" method="post">
											<input type="text" name="user" placeholder="email">
											<input type="password" name="pass" placeholder="password">
											<input type="submit" value="Submit">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</form>
</body> --%>


<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">
 
            <h2>Login with Username and Password</h2>
 
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
 
            <form name="loginForm" action="<c:url value="/admin" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>
 
                <input type="submit" value="Submit" class="btn btn-default">
 				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
 
        </div>
    </div>
</div>
</html>
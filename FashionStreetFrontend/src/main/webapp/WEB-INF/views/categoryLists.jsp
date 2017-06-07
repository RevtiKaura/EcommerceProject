
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="container">
	<div><br/><br/><br/></div>
		<h1><center>Category List</center></h1>
<div><br/><br/><br/></div>
		<table class="table table-bordered table-striped tbcat">
		<thead><tr>
			<th>No</th>
			<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cat" items="${catList}">
				<tr>

					<td><c:out value="${cat.categoryId}"></c:out></td>
					<td><c:out value="${cat.categoryName}"></c:out></td>
									

				</tr>
			</c:forEach>
		</tbody>		
	</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

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
<body>
	<div class="container">
		<h1>Category List</h1>

		<table border="1">
			<th>No</th>
			<th>Name</th>
			<th>Set of Products</th>
			<th>Edit</th>
			<th>Delete</th>


			<c:forEach var="cat" items="${catList}">
				<tr>

					<td><c:out value="${cat.categoryId}"></c:out></td>
					<td><c:out value="${cat.categoryName}"></c:out></td>
					<td>P</td>
					<td><a href="">Edit</a></td>
					<td><a href="">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
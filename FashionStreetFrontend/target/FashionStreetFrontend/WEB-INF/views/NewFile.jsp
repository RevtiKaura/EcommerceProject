<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page isELIgnored="false" %>
</head>
<body>
<form:form method="POST" action="insert" modelAttribute="product" enctype="multipart/form-data">
					
					<div class="form-group">
					<form:input path="productName" class="form-control" placeholder="Product Name" required="required" />
					</div>
					<div class="form-group">
						<form:label path="">Product Category</form:label>
						<form:select path="category" class="form-control">
							<c:forEach items="${cat1}" var="categories">
								<form:option value="${categories.categoryId}">${categories.categoryName}</form:option>
							</c:forEach>
						</form:select>
					</div>
					
					 <div class="form-group">
						<form:label path="">Product Supplier</form:label>
						<form:select path="supplier" class="form-control">
							<c:forEach items="${sup1}" var="supplier">
								<form:option value="${supplier.supplierId}">${categories.supplierName}</form:option>
							</c:forEach>
						</form:select>
					</div>
					
					<div class="form-group">
						<form:input path="price" class="form-control"
							placeholder="Product Price" value="" required="required" />
					</div>
					
					<div class="form-group">
						<form:input path="description" class="form-control"
							placeholder="Product Description" value="" required="required" />
					</div>
					
					<div class="form-group">
						<form:label path="file">
							<spring:message text="Choose Image" />
						</form:label>
						
						<form:input path="file" type="file" class="form-control"
							placeholder="Select File" required="required" />
					</div>
					
					<div>	
					<input type="submit" class="btn btn-success btn-block" value="Insert Product" />
				    </div>
					
					</form:form>
</body>
</html>
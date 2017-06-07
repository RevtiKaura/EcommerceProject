<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="cc" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <h1 class="well">Product Table</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<%-- <f:form modelAttribute="product" action="admin/updateProduct" method="post"> --%>
				<form action="${pageContext.request.contextPath}/admin/productUpdate" method="post" enctype="multipart/form-data">
					<div class="col-sm-12">
						
					<div class="form-group">
						
						<input type="hidden" name="productId" class="form-control" value="${product.productId}"/>
						</div>

						<div class="form-group">
							<label>Product Name</label>
							<input type="text" name="productName" class="form-control" value="${product.productName}"/>
						</div>
						
								
								<div class="form-group">
							    <label>Category</label>
								<select name="pCategory">
								<option value="0" label="-------Select-------"/>
								<c:forEach items="${clist}" var="cate">
						<option value="${cate.categoryId}">${cate.categoryName}</option>
						</c:forEach>
						</select>
						</div>
										
						<div class="form-group">
							<label>Supplier</label>
							<select name="pSupplier">
							<option value="0" label="-------Select-------"/>
							<c:forEach items="${slist}" var="sate">
						<option value="${sate.supplierId}">${sate.supplierName}</option>
									                
						
						</c:forEach>
					</select>
					    </div>		
					
						<div class="form-group">
							<label>Price</label>
							<input type="text" name="price" class="form-control" value="${product.price}" ></input>
						</div>	
						
										
					<div class="form-group">
						<label>Description</label>
						<input type="text" name="description" class="form-control" value="${product.description}"></input>
					</div>		
					
					<div class="form-group">
						<label>Stock</label>
						<input type="text"  name="quantity" class="form-control" value="${product.quantity}" ></input>
					</div>	
					
						<div class="form-group">
						<label>Image</label>
						<input type="file"  name="file" class="form-control" ></input>
					</div>	
					
				
					
					<input type="submit" value="Submit" />					
					</div>
				</form> 
				</div>
	</div>
	</div>
	
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

    
</body>
</html>
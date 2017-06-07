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
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<%-- <f:form modelAttribute="product" action="admin/updateProduct" method="post"> --%>
				<form action="${pageContext.request.contextPath}/admin/updateProductDetails" method="post">
					<div class="col-sm-12">
						
					<div class="form-group">
						
						<input type="hidden" name="productId" class="form-control"/>
						</div>

						<div class="form-group">
							<label>Product Name</label>
							<input type="text" name="productName" class="form-control"/>
						</div>
						
								
								<div class="form-group">
							    <label>Category</label>
								<select name="category">
								<option value="0" label="-------Select-------"/>
								<options items='${clist}' itemLabel="categoryName" itemValue="categoryId" />
								</select>
						</div>
										
						<div class="form-group">
							<label>Supplier</label>
							<select name="supplier">
							<option value="0" label="-------Select-------"/>
							<options items="${slist}" itemLabel="supplierName" itemValue="supplierId" />
							</select>
					    </div>		
					
						<div class="form-group">
							<label>Price</label>
							<input type="text" name="price" class="form-control" ></input>
						</div>	
						
										
					<div class="form-group">
						<label>Description</label>
						<input type="text" name="description" class="form-control" ></input>
					</div>		
					
					<div class="form-group">
						<label>Quantity</label>
						<input type="text"  name="quantity" class="form-control" ></input>
					</div>	
					<button type="submit" class="btn btn-lg btn-info">Update Product</button>					
					</div>
				</form> 
				</div>
	</div>
	</div>
	
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

    
</body>
</html>
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
				<f:form modelAttribute="product" action="updateProduct" method="post">
					<div class="col-sm-12">
						
					

						<div class="form-group">
							<label>Product Name</label>
								<f:input  path="productName" class="form-control"></f:input>
						</div>
						
								
								<div class="form-group">
							<label>Category</label>
								<f:select path="category">
								<f:option value="0" label="-------Select-------"/>
								<f:options items='${clist}' itemLabel="categoryName" itemValue="categoryId" />
								
								</f:select>
						</div>
										
						<div class="form-group">
							<label>Supplier</label>
							<f:select path="supplier">
								<f:option value="0" label="-------Select-------"/>
								<f:options items="${slist}" itemLabel="supplierName" itemValue="supplierId" />
								</f:select>
					</div>		
					
						<div class="form-group">
							<label>Price</label>
							<f:input path="price" class="form-control" ></f:input>
						</div>	
						
										
					<div class="form-group">
						<label>Description</label>
						<f:input path="description" class="form-control" ></f:input>
					</div>		
					
					<div class="form-group">
						<label>Quantity</label>
						<f:input path="quantity" class="form-control" ></f:input>
					</div>	
					<button type="submit" class="btn btn-lg btn-info">Update Product</button>					
					</div>
				</f:form> 
				</div>
	</div>
	</div>
	
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

    
</body>
</html>
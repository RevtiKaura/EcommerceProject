<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--  <c:set var="cp" value="${pageContext.request.contextPath}" />  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div>
			<br>
		</div>
		<div>
			<br>
		</div>
		<div>
			<br>
		</div>
		<div>
			<br>
		</div>
		<div>
			<br>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="panel with-nav-tabs panel-warning">
						<div class="panel-heading">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1warning" data-toggle="tab">Category</a></li>
								<li><a href="#tab2warning" data-toggle="tab">Supplier</a></li>
								<li><a href="#tab3warning" data-toggle="tab">Product</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content">
								<div class="tab-pane fade in active" id="tab1warning">
									<form class="form-horizontal"
										action="<c:url value="/admin/categoryDone"/>" method="post">
										<div class="form-group">
											<label class="control-label col-sm-2" for="catId">Category
												Id:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="catId" name="catId" required />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="catName">Category Name:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="catName" name="catName"
													required />
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-success btnSize">Submit</button>
										
												<button type="reset" class="btn btn-danger btnSize">Cancel</button>
											</div>
										</div>
									</form>
								</div>


								<div class="tab-pane fade" id="tab2warning">
								<form class="form-horizontal"
										action="<c:url value="/admin/supplierDone"/>" method="post">
										<div class="form-group">
											<label class="control-label col-sm-2" for="supId">Supplier
												Id:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="supId" name="supplierId" required />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="supName">Supplier Name:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="supName" name="supplierName"
													required />
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-success btnSize">Submit</button>
											    <button type="reset" class="btn btn-danger btnSize">Cancel</button>
											</div>
										</div>
									</form>	
								</div>


								<div class="tab-pane fade" id="tab3warning">
									
									<form class="form-horizontal"
										action="<c:url value="/admin/saveProduct"/>" method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label class="control-label col-sm-2" for="proName">Product
											  Name:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="proName" name="productName" required />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="proCat">Category
												</label>
											<div class="col-sm-10">
												<select name="categoryId"  id="proCat" class="form-control" required>
														<option selected="selected" hidden="hidden">Select</option>
														<c:forEach items="${cat1}" var="category">
															<option value="${category.categoryId}">${category.categoryName}
															</option>
														</c:forEach>
												</select>
											</div>
										 </div>
									
										<div class="form-group">
											<label class="control-label col-sm-2" for="price">Price</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="price" name="price"
													required />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="description">Description</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="description" name="description"
													required />
											</div>
										</div>
											<div class="form-group">
											<label class="control-label col-sm-2" for="proSup">Supplier
												Name:</label>
											<div class="col-sm-10">
													<select name="supplierId" id="proSup" class="form-control" required>
														<option selected="selected" hidden="hidden">Select</option>
														<c:forEach items="${sup1}" var="supplier">
															<option value="${supplier.supplierId}">${supplier.supplierName}
															</option>
														</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="stock">Stock</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="stock" name="quantity"
													required />
											</div>
										</div>
											<div class="form-group">
											<label class="control-label col-sm-2" for="imgUpload">Image</label>
											<div class="col-sm-10">
												<input name="file" id="imgUpload" class="form-control" type="file" />
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-success btnSize">Submit</button>
											    <button type="reset" class="btn btn-danger btnSize">Cancel</button>
											</div>
										</div>
									</form>	

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
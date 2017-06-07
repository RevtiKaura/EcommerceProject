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
		<form>
			<fieldset>

				<!-- Form Name -->
				<legend>Cart Details</legend>

				<div class="form-group">
					<table id="cartDetails" class="table table-bordered">


						<thead>
							<tr>
								<th>Product Name</th>
								<th></th>
								<th>Product Price</th>
								<th>Product Category</th>
								<th>Product Supplier</th>
								<th>Product Image</th>
								<th></th>
							</tr>
							
						</thead>
						<tbody>

							<c:forEach items="${userCartDetails}" var="cartD">
								<tr>

									<td>${cartD.prodName }</td>
									<td>${cartD.prodPrice }</td>
									<td>${cartD.prodCategory.categoryName }</td>
									<td>${cartD.prodSupplier.supplierName }</td>
									<td><img
										src="./resources/Images/<c:out value='${prodC.pImage}'></c:out>"
										height="35px" width="35px" /></td>


								</tr>


							</c:forEach>
						</tbody>

					</table>
				</div>
				<div class="form-group">
					<div class="btn-group">
						<label class="col-md-4 control-label" for="submit"></label>
						<div class="col-md-4">
							<button type="submit" class="btn btn-primary" name="_eventId_ContinueShopping">Continue
								Shopping</button>
							<button type="reset" class="btn btn-primary" name="_eventId_Checkout">Checkout</button>
						</div>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
</body>
</html>
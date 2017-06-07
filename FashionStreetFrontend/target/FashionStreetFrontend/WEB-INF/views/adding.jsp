<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%--  <c:set var="cp" value="${pageContext.request.contextPath}" />  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div><br></div>
<div><br></div>
<div><br></div>
<div><br></div>
<div><br></div>
	<div class="container">
    <div class="row">
    	<div class="col-md-6">
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
                        <form action="<c:url value="/admin/categoryDone"/>" method="post">
				<table>
				<tr>
				<td>Category Id
				</td>
				<td>
				<input type="text" name="catId"/>
				</td>
				</tr>
				<tr>
				<td>Category Name
				</td>
				<td>
				<input type="text" name="catName"/>
				</td>
				</tr>
				
				<tr>
				<td>
				<button type="submit" class="btn btn-success">Submit</button>
				</td>
				<td>
				<button type="reset" class="btn btn-danger">cancel</button>
				</td>
				</tr>
				
				</table>
				</form>
				</div>
				
                 <div class="tab-pane fade" id="tab2warning">
                 <form action="<c:url value="/admin/supplierDone" />">
				<table>
				<tr>
				<td>Supplier Id
				</td>
				<td>
				<input type="text" name="supplierId"/>
				</td>
				</tr>
				<tr>
				<td>Supplier Name
				</td>
				<td>
				<input type="text" name="supplierName"/>
				</td>
				</tr>
				
				<tr>
				<td>
				<button type="submit" class="btn btn-success">Submit</button>
				</td>
				<td>
				<button type="reset" class="btn btn-danger">cancel</button>
				</td>
				</tr>
				</table>
				</form>
				</div>
                      
               
                     <div class="tab-pane fade" id="tab3warning">
					   <form action="<c:url value="/admin/saveProduct"/>" method="post" enctype="multipart/form-data">
				<table>
			
				<tr>
				<td>Product Name
				</td>
				<td>
				<input type="text" name="productName"/>
				</td>
				</tr>
				<tr>
				<td colspan="2">
				<select name="categoryId">
				<option selected="selected" hidden="hidden">Category</option>
				<c:forEach items="${cat1}" var="category">
				<option value="${category.categoryId}">${category.categoryName}
				</c:forEach>
				</option>
				</select>
				</td>
				</tr>
				<tr></tr>
				<tr><td>Price</td>
				<td><input type="text" name="price"></td></tr>
				<tr><td>Description</td>
				<td><input type="text" name="description"></td></tr>
				<tr><td>Stock</td>
				<td><input type="text" name="quantity"></td></tr>
				
				<tr>
				<td colspan=2>
				<select name="supplierId">
				<option selected="selected" hidden="hidden">Supplier</option>
				<c:forEach items="${sup1}" var="supplier">
				<option value="${supplier.supplierId}">${supplier.supplierName}
				</c:forEach>
				</option>
				</select>
				</td>
				</tr>
						
				<tr>
				<td>Image</td>
				<td>
				<input name="file" id="imgUpload" type="file"/>
				</td>
				</tr> 
				<tr>
				<td>
				<button type="submit" class="btn btn-success">Submit</button>
				</td>
				<td>
				<button type="reset" class="btn btn-danger">cancel</button>
				</td>
				</tr>
				</table>
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
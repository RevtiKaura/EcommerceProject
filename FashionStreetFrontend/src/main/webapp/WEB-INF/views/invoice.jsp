<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <jsp:include page="header.jsp"></jsp:include> 
<body>
	<div class="container">
		<div><br/><br/><br/></div>
    <div class="row">
        <div class="col-xs-12">
            <div>
            <center>
                <h2>Invoice for purchase #33221</h2>
                 </center>
            </div>
            <hr>
           
            <div class="row">
                <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Billing Details</div>
                        <div class="panel-body">
                            <strong>${user.fullName}:</strong><br>
                            ${user.usernum}<br/>
                           	${user.address}<br/>
							 ${user.userEmail}
							
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3 pull-right">
                    <div class="panel panel-default height">
                        <div class="panel-heading">Payment Information</div>
                        <div class="panel-body">
                            <strong>Card Name:</strong> Visa<br>
                            <strong>Card Number:</strong> ***** 332<br>
                            <strong>Exp Date:</strong> 09/2020<br>
                        </div>
                    </div>
                </div>
               
                </div>
                </div>
            </div>
        </div>
    </div>
    <%-- <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center"><strong>Order summary</strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <td><strong>Item Name</strong></td>
                                    <td class="text-center"><strong>Item Price</strong></td>
                                    <td class="text-center"><strong>Item Quantity</strong></td>
                                    <td class="text-right"><strong>Total</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Skirt</td>
                                    <td class="text-center">${orders.total}</td>
                                    <td class="text-center">1</td>
                                    <td class="text-right">${orders.total}</td>
                                </tr>
                              
                            </tbody>
                        </table>
                    </div>
                </div> --%>
            </div>
        </div>
    </div>
</div>
<a class="btn btn-success" style="float:right" href="checkout1"><span style="font-size:20px;font-family:sans-serif;">OK</span></a>
	</div>
<style>
.height {
    min-height: 200px;
}

.icon {
    font-size: 47px;
    color: #5CB85C;
}

.iconbig {1
    font-size: 77px;
    color: #5CB85C;
}

.table > tbody > tr > .emptyrow {
    border-top: none;
}

.table > thead > tr > .emptyrow {
    border-bottom: none;
}

.table > tbody > tr > .highrow {
    border-top: 3px solid;
}
</style>

	

	<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>
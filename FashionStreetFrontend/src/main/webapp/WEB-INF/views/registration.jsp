<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
  <div class="row">
         <div class="col-md-6 col-md-offset-3">
             <div class="panel panel-primary">
                 <div class="panel-heading">Sign Up Form</div>
                 <div class="panel-body">
                     <form role="form" method="post" action="" accept-charset="UTF-8">

                         <label for="fname">First Name</label>
                         <input type="text" id="fname" class="form-control" name="fname" placeholder="">

                         <label for="lname">Last Name</label>
                         <input type="text" id="lname" class="form-control" name="lname" placeholder="">

                         <label for="emailaddr" class="m-t-10">Email Address</label>
                         <input type="text" id="emailaddr" class="form-control" name="email" placeholder="">

                         <label for="password" class="m-t-10">Password</label>
                         <input type="password" id="password" class="form-control" name="password" placeholder="">

                         <label for="verifypass" class="m-t-10">Verify Password</label>
                         <input type="password" id="confirmpass" class="form-control" name="verifypass" placeholder="">
                         
                         <label for="dob" class="m-t-10">Date of Birth</label>
                         <input type="date" id="dob" class="form-control" name="dob" placeholder="">
                         
                         <label for="mobilenum" class="m-t-10">Mobile Number</label>
                         <input type="text" id="mobilenum" class="form-control" name="mobilenum" placeholder="">

                         <center><input type="submit" class="btn btn-primary m-t-10" id="submitbtn" name="submit" value="Submit"></center>

                     </form>
                 </div>
             </div>
         </div>
     </div>
 <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
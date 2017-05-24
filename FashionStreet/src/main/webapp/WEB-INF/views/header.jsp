<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/custom.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="resources/js/functionality.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container-fluid">
     <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span> 
       </button>
       <a class="navbar-brand" href="home">FashionStreet</a>
     </div>
      <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav">
      <li class="dropdown">
         <a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop by Category
         <span class="caret"></span></a>
         <ul class="dropdown-menu">
           <li><a href="#">Accessories</a></li>
           <li><a href="#">Clothing</a></li>
           <li><a href="#">Shoes</a></li>
         </ul>
       </li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
       <li><a href="#" data-toggle="modal" data-target="#regis-modal"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
        <div class="modal fade" id="regis-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
     	  <div class="modal-dialog modal-lg">
     	  
     	   <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"><div style="text-align:center">To proceed,you need to register with us!</div></h4>
         </div>
         <div class="modal-body">
           		<div class="loginmodal-container">
 	 				  	<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
			    			<div class="form-group">
			    				<input type="text" name="mob" id="mobnum" class="form-control input-sm" placeholder="+91">
			    			</div>
			    			<div class="form-group">
			    						<input type="date" name="dob" id="dateofbirth" class="form-control input-sm" placeholder="">
			    			</div>
			    					    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
 					
 				  <div class="login-help">
 					<a href="#" id="log1">Already Registered?Login</a>
 				  </div>
				</div>
        </div>
        
      </div>
      
    </div>     
			</div>
       
       </li>
      <li><a href="#" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-log-in">Login</span></a>
 
 <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
     	  <div class="modal-dialog">
     	  
     	   <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"><div style="text-align:center">WELCOME</div></h4>
         </div>
         <div class="modal-body">
           		<div class="loginmodal-container">
 					<h1>Login to Your Account</h1><br>
 				  <form>
 					<input type="text" name="user" placeholder="Username">
 					<input type="password" name="pass" placeholder="Password">
 					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
 				  </form>
 					
 				  <div class="login-help">
 					<a href="registration">Register</a> - <a href="#">Forgot Password</a>
 				  </div>
				</div>
        </div>
        
      </div>
      
    </div>     
			</div>
 		  </li>
     </ul>
   </div>
   </div>
 </nav>

	
</body>
</html>
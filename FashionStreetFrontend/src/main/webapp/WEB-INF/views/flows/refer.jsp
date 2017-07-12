<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
Why not let your friends know how AWESOME of a time you had shopping at Fashion Street!?!?

REFER up to 5 friends below:
<div class="container">
<div class="row" >
<div class="col-md-6 col-md-offset-3">
<form action="">
<br/>
<br/>
<br/>
<br/>
 	<div class="form-group">
      <label for="email">Friend 1:</label>
      <input type="email" class="form-control" id="emailfriend1" placeholder="Friend 1" name="email">
    </div>
    <div class="form-group">
      <label for="email">Friend 2:</label>
      <input type="email" class="form-control" id="emailfriend2" placeholder="Friend 2" name="email">
    </div>
      <div class="form-group">
      
      <input type="submit" class="btn btn-success" id="email" placeholder="Friend 2" name="email">
     
    </div>
    </form>
</div>
</div>

</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
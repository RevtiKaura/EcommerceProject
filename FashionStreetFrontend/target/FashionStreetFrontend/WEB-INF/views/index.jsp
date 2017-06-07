<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<spring:url var="img" value="/resources/images"></spring:url>
</head>
<body>
<div class="container">
<jsp:include page="header.jsp"></jsp:include>
<div class="row">
<div class="col-md-12">

 <div class="panel panel-default">
    <div class="panel-body"><br></div>
  </div></div>
</div>
<div class="row">
<div class="col-md-12">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item">
      <img class="img-responsive center-block" src="${img}/fashion9.jpg" alt="Clothes">
    </div>

    <div class="item active">
      <img class="img-responsive center-block" src="resources/images/fashion1.jpg" alt="Fashion1">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="resources/images/fashion10.jpg" alt="fashion3">
    </div>
    
     <div class="item">
      <img class="img-responsive center-block" src="resources/images/fashion4.jpg" alt="fashion4">
    </div>
    
    <div class="item">
      <img class="img-responsive center-block" src="resources/images/shoe.jpg" alt="Shoes">
    </div>
    
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 panel">
    <div class="panel-body">
    <div class="col-md-4">   <a href="productDet"><img src="resources/images/top1.jpg" class="img-rounded" alt="Tops" ></a> </div>
     <div class="col-md-4"> <a href=""> <img src="resources/images/bag.jpg" class="img-rounded" alt="Bag" ></a></div>
      <div class="col-md-4">  
      <a href="#"> <img src="resources/images/loafers.jpg" class="img-rounded" alt="loafers"></a> </div>
    </div>
  </div>
</div>
<div><br/><br/><br/><br/></div>
<jsp:include page="footer.jsp"></jsp:include>


</div>
</body>
</html>

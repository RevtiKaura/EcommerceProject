<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<style>

.footer {
  background: black;
  padding: 10px 0;
}

.fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}


</style>
<body>
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">FashionStreet</a>
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
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
  </div>
</nav>
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
      <img src="C:/Users/PATAAKA/Desktop/fashion9.jpg" alt="Clothes">
    </div>

    <div class="item active">
      <img src="C:/Users/PATAAKA/Desktop/fashion1.jpg" alt="Fashion">
    </div>

    <div class="item">
      <img src="C:/Users/PATAAKA/Desktop/fashion10.jpg" alt="fashion3">
    </div>
    
     <div class="item">
      <img src="C:/Users/PATAAKA/Desktop/fashion4.jpg" alt="fashion4">
    </div>
    
    <div class="item">
      <img src="C:/Users/PATAAKA/Desktop/shoes.jpg" alt="Shoes">
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
   <a href="#"><img src="C:/Users/PATAAKA/Desktop/top1.jpg" class="img-rounded" alt="Tops" ></a> 
   <a href=""> <img src="C:/Users/PATAAKA/Desktop/bag.jpg" class="img-rounded" alt="Bag" ></a>
  <a href="#"> <img src="C:/Users/PATAAKA/Desktop/loafers.jpg" class="img-rounded" alt="loafers"></a> 
    </div>

</div></div>

<footer class="footer">
  <div class="container">
  <a href="#">About us</a>
  <div class="social">
  <a href="#"><i class="fa fa-facebook-square fa-3x social"></i></a>
  <a href="#"><i class="fa fa-google-plus-square fa-3x social"></i></a>
  <a href="#"><i class="fa fa-twitter-square fa-3x social"></i></a> 
  </div>
  </div>
</footer>

</div>
</body>
</html>

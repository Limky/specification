<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>





<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


</head>
<body>

Under Construction

<%-- 
	<c:forEach var="product" items="${PopularProductsTop1}">
	<p>
		<c:out value="${product.productName}">
		</c:out>
	</p>

	</c:forEach>
	
	 --%>
	



	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="/helloSpringMVC">ZEBRA
					SERVICE</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a class="page-scroll" href="#page-top"></a>
					</li>
					<li><a class="page-scroll" href="#about">About Services</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/helloSpringMVC/PopularProducts">Popular Products</a></li>
							<li><a href="/helloSpringMVC/MostReviews">Most reviews</a></li>
							<li><a href="/helloSpringMVC/ScanPriority">Scan priority</a></li>
						</ul></li>

					<li><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#SignUp-modal"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


<style>

#contain {

margin-top: 150px;

}

</style>


	<div id=contain class="container"> 

	<div class="bootstrap-demo">
	<div class="row">

      <div class="col-sm-6 col-md-4"> <!-- column 1 -->
        <div class="thumbnail"> <!--  thumbnail 1  -->
        <h1>Top1</h1>
          <img src="http://www.tutorialspark.com/twitterBootstrap/china.jpg" alt="china thumbnail"> <!-- image 1 -->
          <div class="caption"> <!-- caption -->
            <h3><c:out value="${PopularProductsTop1.productName}"></c:out> 평점:<c:out value="${PopularProductsTop1.starPoint}"></c:out></h3>
            <p><c:out value="${PopularProductsTop1.reviewText}"></c:out></p>
            <p><a href="#" class="btn btn-primary" role="button">Buy Tickets</a> <!-- btn 1 -->
              <a href="#" class="btn btn-default" role="button">Add to Wishlist</a></p>  <!-- btn 2 -->
          </div>
        </div>
      </div>
	  
      <div class="col-sm-6 col-md-4"> <!-- column 2 -->
        <div class="thumbnail"> <!-- thumbnail 2 -->
         <h1>Top2</h1>
          <img src="http://www.tutorialspark.com/twitterBootstrap/statue-liberty.jpg" alt="Statue of Liberty thumbnail">  <!-- image 2 -->
          <div class="caption">  <!-- caption -->
            <h3><c:out value="${PopularProductsTop2.productName}"></c:out> 평점:<c:out value="${PopularProductsTop2.starPoint}"></c:out></h3>
            <p><c:out value="${PopularProductsTop2.reviewText}"></c:out></p>
            <p><a href="#" class="btn btn-primary" role="button">Buy Tickets</a>   <!-- btn 1 -->
              <a href="#" class="btn btn-default" role="button">Add to Wishlist</a></p>  <!-- btn 2 -->
          </div>
        </div>
      </div>
      
      <div class="col-sm-6 col-md-4"> <!-- column 2 -->
        <div class="thumbnail"> <!-- thumbnail 2 -->
         <h1>Top3</h1>
          <img src="https://scontent.xx.fbcdn.net/hphotos-xtl1/t31.0-8/12671674_121428374921922_1736655941279239457_o.jpg" alt="Statue of Liberty thumbnail">  <!-- image 2 -->
          <div class="caption">  <!-- caption -->
            <h3>Statue of Liberty</h3>
            <p>The Statue of Liberty is a colossal neoclassical sculpture on Liberty
              Island in the middle of New York Harbor, in Manhattan, New York City.</p>
            <p><a href="#" class="btn btn-primary" role="button">Buy Tickets</a>   <!-- btn 1 -->
              <a href="#" class="btn btn-default" role="button">Add to Wishlist</a></p>  <!-- btn 2 -->
          </div>
        </div>
      </div>
      
	</div>
  </div>

	</div>
		
</body>
</html>
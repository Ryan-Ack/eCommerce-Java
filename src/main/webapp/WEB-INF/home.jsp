<!-- https://www.javatpoint.com/bootstrap-carousel -->
<!-- https://stackoverflow.com/questions/29734492/adding-text-over-an-image-in-bootstrap-carousel -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta charset="ISO-8859-1">
<title>Home</title>
</head>


<!-- 		<a href="/"><img src="https://cdn11.bigcommerce.com/s-bexuyutckh/product_images/uploaded_images/thumbnail-birknw-web.jpg"></a> -->
<body style="display:flex; justify-content:center">
<!-- 	<div style="backdrop-filter:blur(10px); positon=relative; Z-index:-1; center; top"> -->
<!-- 		<h1>Welcome  To Birkenstock Northwest</h1> -->
<!-- </div> -->
	<div style=" width: 975px">
		<header style="display:flex; justify-content:space-between; align-content:center; margin: 10px 0; width: 100%; background-color: white; padding: 10px;" >
			<a href="/"><img style="width: 200px;" src="https://cdn11.bigcommerce.com/s-bexuyutckh/images/stencil/original/birk-logo-horiz-sign-200x90-web2_1591736047__17742.original.png"></a>
			<h1>Welcome to Birkenstock Northwest</h1>
			<ul><a href="/login">Sign In</a></ul>
			<ul><a href="/registration">Register</a></ul>
		</header>
	
		<main style="width: 98%;  min-height: 500px; padding:10px;">

			<nav style="display: flex; background-color: white; margin: 10px; padding: 10px; margin-top:-10px">
				<a style="padding:10px" href="/">Home</a>
				<a style="padding:10px" href="/create-brand">New Brand</a>
				<a style="padding:10px" href="/create-giftCertificate">Purchase A Gift Certificate</a>
				<a style="padding:10px" href="/giftCertificateBalance">Gift Certificate Balance</a>
			</nav>

<!-- <h1 style="background-color:white; margin:10px;  border-radius:10px;">Carousel here with pictures</h1> -->
			 
			<div style="background-color: white; border-radius:10px; height:520px; padding: 10px; margin: 10px">  
 
			  
			<div id="myCarousel" class="carousel slide" data-ride="carousel" >  
			    <!-- Indicators -->  
			    <ol class="carousel-indicators" style="fill:black" >  
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>  
			      <li data-target="#myCarousel" data-slide-to="1"></li>  
			      <li data-target="#myCarousel" data-slide-to="2"></li>  
			    </ol>  
			  
			    <!-- Wrapper for slides -->  
			    <div class="carousel-inner" role="listbox" style="height:500px;">  
			      <div class="item active">  
			        <img src="https://cdn11.bigcommerce.com/s-bexuyutckh/product_images/uploaded_images/page-2-carousel.jpeg" alt="Birkenstock Store" >  
			        <div style="position:absolute; bottom: 40%; left: 12%; color: white; text-shadow: 0 1px 2px rgba(0,0,0,.6);">
			        
			        <h3>We had no idea!</h3>  
			        <p>Find out what's in that tiny house on I5!</p>  
			        </div>
			      </div>  
			  
			      <div class="item" >  
			        <img style="padding-top:50px; width:100%" src="https://cdn11.bigcommerce.com/s-bexuyutckh/product_images/uploaded_images/page-3-carousel.jpeg" alt="COVID FAQs" >  
			         <div style="position:absolute; bottom: 40%; left: 12%; color: white; text-shadow: 0 1px 2px rgba(0,0,0,.6);">
			         <h3>COVID FAQS</h3>  
			        <p>Read about COVID FAQs.</p>  
			         </div>
			      </div>  
			      
			      <div class="item">  
			        <img src="https://cdn11.bigcommerce.com/s-bexuyutckh/product_images/uploaded_images/covid19.jpg"   alt="Waterpoof EVA" >  
			         <div style="position:absolute; bottom: 40%; left: 12%; color: white; text-shadow: 0 1px 2px rgba(0,0,0,.6);">
			         <h3>Waterproof Birks!</h3>  
			        <p>These Birks are waterproof, check out our EVA styles.</p>  
			         </div>
			      </div>  
			    </div>  
			  
			    <!-- Left and right controls -->  
			    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
			      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
			      <span class="sr-only">Previous</span>  
			    </a>  
			    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">  
			      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
			      <span class="sr-only">Next</span>  
			    </a>  
			</div><!-- corousel end -->  
			  
			</div>  
			  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
			  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  

</main>
</div>

</body>
</html>
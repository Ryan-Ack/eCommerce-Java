<!-- https://stackoverflow.com/questions/31223395/how-to-paginate-using-only-jstl-cforeach-without-javascript-or-jquery //pagination here -->

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta charset="ISO-8859-1">
<title>Add a Brand</title>


<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

</head>

<body style="display:flex; justify-content:center">

	<div style=" width: 975px">
<header style="display:flex; justify-content:space-between; align-content:center; margin: 10px 0; width: 100%; background-color: white; padding: 10px;" >
			<a href="/"><img style="width: 200px;" src="https://cdn11.bigcommerce.com/s-bexuyutckh/images/stencil/original/birk-logo-horiz-sign-200x90-web2_1591736047__17742.original.png"></a>
			<h1>Welcome to Birkenstock Northwest</h1>
			<ul><a href="/login">Sign In</a></ul>
			<ul><a href="/registration">Register</a></ul>
		</header>
<main style="width: 98%;  min-height: 500px; padding:10px;">
<div>
			<nav style="display: flex; background-color: white; margin: 10px; padding: 10px; margin-top:-10px">
				<a style="padding:10px" href="/">Home</a>
				<a style="padding:10px" href="/create-brand">New Brand</a>
				<a style="padding:10px" href="/create-giftCertificate">Purchase A Gift Certificate</a>
				<a style="padding:10px" href="/giftCertificateBalance">Gift Certificate Balance</a>
			</nav>
</div>
<div style="background-color:white; width: 30%; margin: 10px; padding: 5px 10px; border-radius:10px;  ">
		<h2 style="display:flex; justify-content:center;">Add a brand</h2>
		<p style="color:red; display:flex; justify-content:center"><form:errors path="brand.*"/></p>
	<form:form class="form" style="display:flex-column"  action="/create-brand" method="POST" modelAttribute="brand">
<!-- 		<div class="placeholder"> -->
<!--     		<div class="myimage" style="background-image: url({https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Rotating_earth_%28large%29.gif/200px-Rotating_earth_%28large%29.gif})"><img /></div> -->
<!-- 		</div> -->
		<div style="display:flex; justify-content:space-between; margin-top: 5px">
			<form:label path="name">Brand Name:</form:label>
<%-- 			<form:errors style="color:red" path="name"></form:errors> --%>
			<form:input path="name"></form:input>
		</div>
		<div style="display:flex; justify-content:space-between; margin-top: 5px" >
			<form:label path="logo">Brand logo URL:</form:label>
<%-- 			<form:errors style="color:red" path="logo"></form:errors> --%>
			<form:input path="logo"></form:input>
		</div>

		<div style="margin-top:10px; display:flex; justify-content:flex-end">
			<button type="submit">Add</button>
		</div>
	</form:form>
</div>
<!-- 	<h1>alphabetize these</h1> -->
<%-- 	<c:forEach  items="${brands}" var="brands"> --%>
<!-- 		<br> -->
<!-- 		<p style="display:flex; justify-content:center; background-color:gray;"> -->
<%-- 			<c:out value="${brands.name}"></c:out> --%>
<%-- 			<img style="width:150px;" src="${brands.logo}" ></img> --%>
<!-- 		</p> -->
<%-- 	</c:forEach> --%>
	
<%-- 	<div c:if = "${totalPages > 1 }"> --%>
<!-- 		<div class="row"> -->
<%-- 			<div> total Rows: [[${totalItems }]]</div> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 		<span c:foreach="i:${#numbers.sequence(1, totalPages)} }"> --%>
<%-- 			<a c:if="${currentPage != i }" c:href="@{'/page/' + ${i}}"> [[${i }]]</a> }" --%>
<%-- 			<span c:else="${currentPage !=i}">[[${i}]]</span> &nbsp;$nbsp; --%>
			
<!-- 		</span> -->
<!-- 		<div> -->
<%-- 		<a c:if="${currentPage < totalPages }" c:href="@{'/page/' + ${currentPage +1}}">Next</a> --%>
<%-- 		<span c:unless="${currentPage < totalPages}">Next</span> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 		<a c:if="${currentPage < totalPages }" c:href="@{'/page/' + ${totalPages}}">Last</a> --%>
<%-- 		<span c:unless="${currentPage < totalPages}">Last</span> --%>
<!-- 		</div> -->
		
		
<!-- 		</div> -->
		
<!-- 	</div> -->
	
	
	<div style="background-color: white; border-radius:10px; padding: 10px; margin: 10px; height: 300px">
	<c:set var="brands" scope="session" value="${ brands}>"/>
	<c:set var="totalCount" scope="session" value="${fn:length(brands)}"/>
<%-- <c:set var="totalCount" scope="session" value="19"/> --%>
<c:set var="perPage" scope="session"  value="5"/>
<c:set var="pageStart" value="${param.start}"/>
<c:if test="${empty pageStart or pageStart < 0}">
       <c:set var="pageStart" value="0"/>
</c:if>
<c:if test="${totalCount < pageStart}">
       <c:set var="pageStart" value="${pageStart - 5}"/>
</c:if>
	<h1 style="display:flex;justify-content:center"> Brands Available At Our Store</h1>
   <div style="display:flex; flex-wrap:wrap; justify-content:space-around; padding-top:10px">
   <c:forEach  items="${brands}" var="brands"  begin="${pageStart}" end="${pageStart + perPage - 1}">
            <img style="width:150px; background-color:gray" src="${brands.logo}" ></img>        
   </c:forEach>
   </div>
<div style="position:absolute; bottom: 8%; left: 48%; color: blue; ">
    <a href="?start=${pageStart - 5}"><</a>${pageStart + 1} - ${pageStart + 5} 
    <a href="?start=${pageStart + 5}">></a>                                               
</div>
	</div>
	

</main>
<footer>



<!-- <div class="container"> -->
<!--    <section class="customer-logos slider  slick"> -->
<%--    		<c:forEach  items="${brands}" var="brands"> --%>
<%--       		<div class="slide"><img style="width:150px;" src="${brands.logo}" ></img></div> --%>
<%--      	</c:forEach> --%>
<!--     </section> -->
<!-- </div> -->
<!-- <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


</footer>
</div>
</body>
</html>
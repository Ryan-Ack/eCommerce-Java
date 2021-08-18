<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
<meta charset="ISO-8859-1">
<title>Purchase a Gift Card</title>
</head>

<body style="display:flex; justify-content:center">
	<div style=" width: 975px">
<header style="display:flex; justify-content:space-between; align-content:center; margin: 10px 0; width: 100%; background-color: white; padding: 10px;" >
			<a href="/"><img style="width: 200px;" src="https://cdn11.bigcommerce.com/s-bexuyutckh/images/stencil/original/birk-logo-horiz-sign-200x90-web2_1591736047__17742.original.png"></a>
			<h1>Welcome to Birkenstock Northwest</h1>
			<ul><a href="/login">Sign In</a></ul>
			<ul><a href="/registration">Register</a></ul>
		</header>
<main style="width: 98%; min-height: 500px; padding:10px;">
<div>
			<nav style="display: flex; background-color: white; margin: 10px; padding: 10px;margin-top:-10px;">
				<a style="padding:10px" href="/">Home</a>
				<a style="padding:10px" href="/create-brand">New Brand</a>
				<a style="padding:10px" href="/create-giftCertificate">Purchase A Gift Certificate</a>
				<a style="padding:10px" href="/giftCertificateBalance">Gift Certificate Balance</a>
			</nav>
</div>
	<div style="background-color:white; width: 50%; margin: 10px; padding: 5px 10px; display:flex-column;  border-radius:10px;">
		<h2 style="display:flex; justify-content:center;">Purchase a Gift Certificate</h2>
		<p style="color:red"><form:errors path="giftCertificate.*"/></p>
<form:form style="display:flex-column;" action="/create-giftCertificate" method="POST" modelAttribute="giftCertificate">

		<div style="display:flex; justify-content:space-between; margin-top: 5px">
			<p>Your Name: </p>
			<form:label path="buyerName"></form:label>
<%-- 			<form:errors style="color:red" path="buyerName"></form:errors> --%>
			<form:input path="buyerName"></form:input>
		</div>
		<div style="display:flex;justify-content:space-between;  margin-top: 5px">
			<p>Your Email:</p>
			<form:label path="buyerEmail"></form:label>
<%-- 			<form:errors style="color:red" path="buyerEmail"></form:errors> --%>
			<form:input path="buyerEmail"></form:input>
		</div>

		<div style="display:flex;justify-content:space-between;  margin-top: 5px">
			<p>Recipient's Name: </p>
			<form:label path="receiveName"></form:label>
<%-- 			<form:errors  style="color:red" path="receiveName"></form:errors> --%>
			<form:input path="receiveName"></form:input>
		</div>
		<div style="display:flex; justify-content:space-between; margin-top: 5px">
			<p>Recipient's Email:</p>
			<form:label path="receiveEmail"></form:label>
<%-- 			<form:errors style="color:red" path="receiveEmail"></form:errors> --%>
			<form:input path="receiveEmail"></form:input>
		</div>
		<div style="display:flex; justify-content:space-between; margin-top: 5px">
			<p>Gift Card Amount: </p>
			<form:label path="amount"></form:label>
<!-- 			Security risk, price can be edited.  needs to be fixed!!-->
<!-- Do this by ID rather than value foreach. -->

<!-- With range instead -->
			<form:select path="amount">
				<form:option value="25">$25.00</form:option>
				<form:option value="50">$50.00</form:option>
				<form:option value="75">$75.00</form:option>	
				<form:option value="100">$100.00</form:option>	
				<form:option value="125">$125.00</form:option>
				<form:option value="150">$150.00</form:option>
				<form:option value="175">$175.00</form:option>	
				<form:option value="200">$200.00</form:option>	
				<form:option value="250">$250.00</form:option>
				<form:option value="300">$300.00</form:option>
				<form:option value="350">$350.00</form:option>
				<form:option value="400">$400.00</form:option>
			</form:select>
			<form:errors style="color:red" path="amount"></form:errors>
		</div>
		<div style="display:flex; justify-content:space-between;  margin-top: 5px">

			<p>Optional Message:</p>
			<form:label path="message"></form:label>
			<form:errors style="color:red" path="message"></form:errors>
			<form:input path="message"></form:input>
		</div>
		<div style="margin-top:10px; display:flex; justify-content:flex-end">

			<button type="submit">Add To Cart</button>
		</div>
	</form:form>
	</div>

<%-- 	<c:forEach items="${giftCertificates}" var="giftCertificates"> --%>
<!-- 		<br> -->
<%-- 		<c:out value="${giftCertificates.receiveName}"></c:out> --%>
<%-- 		<c:out value="${giftCertificates.amount}"></c:out> --%>
<%-- 	</c:forEach> --%>

</main>
</div>
</body>
</html>
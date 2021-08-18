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
<title>Gift Card Balance </title>
</head>


<body style="display:flex; justify-content:center; background-image: url(https://cdn11.bigcommerce.com/s-bexuyutckh/product_images/uploaded_images/thumbnail-birknw-web.jpg)" >
	<div style=" width: 975px">
<header style="display:flex; justify-content:space-between; align-content:center; margin: 10px 0; width: 100%; background-color: white; padding: 10px;" >
			<a href="/"><img style="width: 200px;" src="https://cdn11.bigcommerce.com/s-bexuyutckh/images/stencil/original/birk-logo-horiz-sign-200x90-web2_1591736047__17742.original.png"></a>
			<h1>Welcome to Birkenstock Northwest</h1>
			<ul><a href="/login">Sign In</a></ul>
			<ul><a href="/registration">Register</a></ul>
		</header>
<main style="width: 98%; min-height: 500px; padding:10px;">
	<div>
			<nav style="display: flex; background-color: white; margin: 10px; padding: 10px; margin-top:-10px">
				<a style="padding:10px" href="/">Home</a>
				<a style="padding:10px" href="/create-brand">New Brand</a>
				<a style="padding:10px" href="/create-giftCertificate">Purchase A Gift Certificate</a>
				<a style="padding:10px" href="/giftCertificateBalance">Gift Certificate Balance</a>
			</nav>
	</div>
	<div style="display:flex;justify-content:center;">
	<table style="border: black 1px solid; margin: 10px; width:50%; background-color:white;">
        <tr>
            <th style="width: 60%; border: black 1px solid;">Recipient Name</th>
            <th style="width: 20%; border: black 1px solid;">Amount</th>
        </tr>
    <c:forEach items="${giftCertificates}" var="giftCertificates">
        <tr>
            <td style="border: black 1px solid;"><c:out value="${giftCertificates.receiveName}"></c:out></td>
            <td style="border: black 1px solid;"><c:out value="${giftCertificates.amount}"></c:out></td>
        </tr>
    </c:forEach>
    </table>
	</div>
	

</main>
</div>



</body>
</html>
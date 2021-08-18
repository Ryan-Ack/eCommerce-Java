<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<!-- https://stackoverflow.com/questions/14748750/placeholder-background-image-while-waiting-for-full-image-to-load -->

<body style="display:flex; justify-content:center">
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

<div style="background-color:white; width: 35%; margin: 10px; padding: 5px 10px; display:flex-column;  border-radius:10px; ">
    <h1 style="display:flex; justify-content: center;">Sign In</h1>
    <p style="color:red; display:flex; justify-content:center"><c:out value="${error}" /></p>
    <form style="display:flex-column" method="post" action="/login">
        <div style="display:flex; justify-content:space-between; margin-top: 5px">
            	<label for="email">Email</label>
            	<input type="text" id="email" name="email"/>   
        </div>
        <div style="display:flex; justify-content:space-between; margin-top: 5px ">
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
        </div>
        <div style="display: flex; justify-content:flex-end; margin-top: 5px;margin-right: 50px; ">
        	<input  type="submit" value="Login!"/>
        </div>
        <div style="display: flex; justify-content:flex-end; margin-top: 5px; ">
        	<a style="color:gray" href="#"> Forgot your password?</a>
        </div>
    </form>    
    
    
    
</div>
</main>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<title>Login</title>

</head>
<body  style="background-color:#B0C4DE;">

<center style="position:relative;top:100px;">
		<h2 class="hAlign">User Login</h2>
		<section >
			<form method="post" action="loginServlet" >
		  		<p>E-Mail:</p>
		  		<input type="email" name="uname" placeholder="Type Your E-Mail" class="input button1"><br><br>
		  		<p>Password:</p>
		  		<input type="password" name="pass" placeholder="Enter Your Password" class="input button1"><br><br></br></br>
		  		<input type="submit" value="Login" class="button button1">
			</form><br>
			</br></br>
			<p>Don't have an account yet?</p>
			<a id="alink" href="register.jsp"><input type="button" value="Sign Up" class="button button1"/></a>
		</section>
	</center>
<%@include file="/Footer.jsp" %> 
</body>

</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
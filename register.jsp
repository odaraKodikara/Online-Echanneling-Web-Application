<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>

</head>
<body  style="background-color:#B0C4DE;">

<center style="position:relative;top:100px;">
		<h2 class="hAlign">Create an Account</h2>
		
		<section>
		  <form method="post" action="addUser">
		   
		    <input class="rInput" type="text" name="name" placeholder="Full Name" required><br></br>		
		    <input class="rInput" type="email" name="mail" placeholder="E-Mail" required><br></br>		    
		    <input class="rInput" type="tel" name="phoneNumber" placeholder="Phone Number" pattern="[0-9]{10}" required><br></br>		    
		    <input class="rInput" type="password" name="password" placeholder="Password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br></br>		    
		    <input class="rInput" type="password" name="cPassword" placeholder="Confirm Password" required><br></br>
		  
		    <input type="submit" value="Create" class="button button1">
		  </form>
		</section><br><br></br></br>
		
		<p>Already have an account?</p>
		<a id="alink" href="login.jsp"><input type="button" value="Login" class="button button1"></a>
		
	</center>

</body>
<%@include file="/Footer.jsp" %> 
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="search.GetDoctorServlet" %>
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<title>Home</title>

</head>
<body  style="background-color:#B0C4DE;">
<img style="opacity:0.9;width:330px;height:250px;margin:10px 30px;margin-bottom:0px;max-width:100%;height:auto;position:relative;top:100px;" src="images/download.jpg" alt="medical"><br>
<img style="opacity:0.9;width:330px;height:250px;margin:10px 30px;margin-bottom:0px;max-width:100%;height:auto;position:relative;top:250px;" src="images/medical1.jpg" alt="medical1">
<section class=""><p>${error}</p> </section>
		
<center style="position:relative;left:120px;top:-380px;">			
			<h2 style="position:relative;right:60px;">Search</h2>
		<section>
			<form method="post" action="GetDoctorServlet" >
		  		<p>Doctor Name:</p>
		  		<input type="text" name="docName" placeholder="Enter name" class="input button1"><br><br>
		  		<p>Specialization:</p>
		  		<input type="text" name="specialization" placeholder="Select Specialization" class="input button1"><br><br>
		  		<p>Hospital Name:</p>
		  		<input type="text" name="hosName" placeholder="Enter Hospital" class="input button1"><br><br></br></br>
		  		<input type="submit" value="Search" class="button button1">
			</form><br>
			</br></br>
		</section>
</center>		
<img style="opacity:0.9;width:680px;height:640px;margin:10px 30px;margin-bottom:100px;max-width:100%;height:auto;position:relative;top:0px;" src="images/medical2.jpg" alt="medical2">		
<img style="opacity:0.9;width:680px;height:640px;margin:10px 30px;margin-bottom:100px;max-width:100%;height:auto;position:relative;top:0px;" src="images/medical3.jpg" alt="medical3">
</body>
<%@include file="/Footer.jsp" %> 
</html>
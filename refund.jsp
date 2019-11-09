<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Refund Payment</title>

</head>
<body  style="background-color:#B0C4DE;">

<center style="position=relative;top:50px;">
		<h2 class="hAlign">Refund Payment</h2>
		
		<section>
		  <form method="post" action="addRefund">
		   
		    <input class="rInput" type="text" name="payid" placeholder="Payment Id " required><br></br>	
		    <input class="rInput" type="text" name="name" placeholder="Bank Account Holder Name" required><br></br>		
		    <input class="rInput" type="text" name="accno" placeholder="Bank Account Number" required><br></br>		    
		    <input class="rInput" type="text" name="bank" placeholder="Bank Name" required><br></br>		    
		    <input class="rInput" type="text" name="branch" placeholder="Branch Name" required><br></br>		    
		  
		    <input type="submit" value="Refund" class="button button1">
		  </form>
		</section><br><br></br></br>
		
	</center>

</body>
<%@include file="/Footer.jsp" %> 
</html>
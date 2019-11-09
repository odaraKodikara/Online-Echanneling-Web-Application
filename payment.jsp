<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<title>Payment</title>

</head>
<body  style="background-color:#B0C4DE;">

<center style="position:relative;top:100px;">
		<h2 class="hAlign">Make a payment</h2>
		
		<section>
		  <form method="post" action="payment">
		   
		    <input class="rInput" type="text" name="name" placeholder="Full Name" required><br></br>		
		    <input class="rInput" type="tel" name="phoneNumber" placeholder="Phone Number" required><br></br>		    
		    <input class="rInput" type="text" name="address" placeholder="Address" required><br></br>
		     <input class="rInput" type="email" name="email" placeholder="Email" required><br></br>
		     <select class="rInput"name=type placeholder="Payment Type">
		      <option value="Credit Card" >Credit Card</option>
		      <option value="Debit Card" >Debit Card</option>
		      </select><br></br>			
		      <input class="rInput" type="text" name="cardnum" placeholder="Card Number" required pattern="[0-9]{16}" required> <br></br>	
		      <select class="rInput" name="month" placeholder="Expiry Month">
		      <option value="January">January</option>
		      <option value="February">February</option>
		      <option value="March">March</option>
		      <option value="April">April</option>
		      <option value="May">May</option>
		      <option value="June">June</option>
		      <option value="July">July</option>
		      <option value="August">August</option>
		      <option value="September">September</option>
		      <option value="October">October</option>
		      <option value="November">November</option>
		      <option value="December">December</option>
		      </select> <br></br>	
		      <select class="rInput" name="year" placeholder="Expiry Year">
		      <option value="2020">2020</option>
		      <option value="2021">2021</option>
		      <option value="2022">2022</option>
		      <option value="2023">2023</option>
		      <option value="2024">2024</option>
		      <option value="2025">2025</option>
		      </select><br></br>	
		      <input class="rInput" type="text" name="cvv" placeholder="CVV" pattern="[0-9]{3}"><br></br>	
					  
		      <input type="submit" value="Proceed" class="button button1">
		  </form>
		</section><br><br></br></br>
		
	</center>

</body>
<%@include file="/Footer.jsp" %> 
</html>
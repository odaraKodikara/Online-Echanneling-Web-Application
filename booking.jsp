
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>

</head>
<body  style="background-color:#B0C4DE;">

<center style="position:relative;top:100px;">
		<h2 class="hAlign">Book Your Appointment Now</h2>
		
		<section>
		  <form method="post" action="bookingServlet">
		   
		    <input class="rInput" type="text" name="dname" placeholder="Doctor Name" required><br></br>		
		    <input class="rInput" type="text" name="specialization" placeholder="Specialization" required><br></br>		    
		    <input class="rInput" type="text" name="pname" placeholder="Patient Name" required><br></br>		    
		    <input class="rInput" type="text" name="cno" placeholder="Contact Number" required ><br></br>		    
		    <input class="rInput" type="text" name="hname" placeholder="Hospital Name" required><br></br>
		  
		    <input type="submit" value="Book Now" class="button button1">
		  </form>
		</section><br><br></br></br>
		
		
	</center>

</body>
<%@include file="/Footer.jsp" %> 
</html>
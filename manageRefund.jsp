<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/admin.css">
<title> Manage Refunds</title>

</head>
<body  style="background-color:#B0C4DE;">

<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	
	if((session.getAttribute("name")==null) ||(!session.getAttribute("type").equals("admin") ))
	{
		response.sendRedirect("login.jsp");
	}
	else
	{
		
	%>
	<form method="post" action="logout">
		<div class="loginArea" align="right"
			style="position: fixed; top: 10px; right: 20px">
			Welcome!<br>
			<%=session.getAttribute("name") %><a href="login.jsp"><br>
			<button class="button button1">Logout</button></a>
		</div>
	</form>

	<%
	}
%>

	<section class="main" align="center">
  		<h1>Admin Panel</h1><hr>
  	</section>
 
	<section  id="mySidenav"  class="sidenav" >
	  <a href="manageDoctors.jsp" id="about">Manage Doctors</a>
	  <a href="manageHospitals.jsp" id="blog">Manage Hospitals</a>
	  <a href="admin.jsp" id="projects">Manage Users</a>
	  <a href="paymentHistory.jsp" id="pay">Manage Payments</a>
	  <a href="manageBookings.jsp" id="book">Manage Bookings</a>
	  <a href="manageRefund.jsp" id="ref">Manage Refunds</a>
	</section>

	<section>
			<h2 align="center"><font><strong>Manage Refund</strong></font></h2>
			<table id="customers" align="center" Style="width: 70%; text-align:center">
			<tr>
			
			<tr bgcolor="#4CAF50">
				<th><b>Payment Id</b></th>
				<th><b>Account Holder Name</b></th>
				<th><b>Account Number</b></th>
				<th><b>Bank Name</b></th>
				<th><b>Branch Name</b></th>
				<th text-align="right"></th>
			</tr>

			<%
			try
			{
				String lMail = request.getParameter("uname");
				DBConnect db = new DBConnect();
				db.rs = db.st.executeQuery("select * from refund");
				while(db.rs.next())
				{
		%>

			<tr>
				<td><%=db.rs.getString("paymentId") %></td>
				<td><%=db.rs.getString("aName") %></td>
				<td><%=db.rs.getString("aNo") %></td>
				<td><%=db.rs.getString("bank") %></td>
				<td><%=db.rs.getString("branch") %></td>
				<td>
					<form action="deleteRefund" method="post">
						<input text-align="right" type="hidden" name="id"
							value="<%=db.rs.getString("rId") %>"> <input
							class="button button3" type="submit" value="Delete">
					</form>
				</td>
			</tr>
			<%
		}
			
		}catch(Exception e){
			
		}
	
	%>
			</section>
</body>

</html>
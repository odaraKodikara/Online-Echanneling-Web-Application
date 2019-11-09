<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="util.DBConnect"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/admin.css">

<title>Manage Hospitals</title>

</head>
<body style="background-color:#B0C4DE;">
<div style="min-height: 70%">
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	
	if((session.getAttribute("name")==null) ||(!session.getAttribute("type").equals("admin") ))
	{
		response.sendRedirect("login.jsp");
	}
	else
	{%>

	<form method="post" action="logout">
		<section class="loginArea" align="right" style="position: fixed;top : 10px;right: 20px">
		Welcome !<br> <%=session.getAttribute("name") %><a style="background-color:transparent;" href="login.jsp"><br><button class="button button1">Logout</button></a>
		</section>
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
	  <a href="managePayments.jsp" id="pay">Manage Payments</a>
	  <a href="manageBookings.jsp" id="book">Manage Bookings</a>
	  <a href="manageRefund.jsp" id="ref">Manage Refunds</a>
	</section>

	<section>
			<h2 align="center"><font><strong>Manage Hospitals</strong></font></h2>
			<table id="customers" align="center" Style="width: 70%; text-align:center">
			<tr>
			
			</tr>
			<tr bgcolor="#4CAF50" >
			<th Style="text-align:center"><b>Id</b></th>
			<th Style="text-align:center"><b>Name</b></th>
			<th Style="text-align:center"><b>Type</b></th>
			<th Style="text-align:center"><b>Telephone</b></th>
			<th Style="text-align:center"><b>Location</b></th>
			
			<th text-align="center"><b></b></th>
			</tr>
			
		<%
			try
			{
				DBConnect db = new DBConnect();
				db.rs = db.st.executeQuery("select * from Hospital");
				while(db.rs.next())
				{
		%>
		
			<tr>
			<td><%=db.rs.getString("hosId") %> </td>
			    <td><%=db.rs.getString("hospitalName") %> </td>
				<td><%=db.rs.getString("hospitalType") %> </td>
				<td><%=db.rs.getString("telNo") %> </td>
				<td><%=db.rs.getString("location") %> </td>
				<td>
					<form action="deletead" method="post">
						<input type = "hidden" name="mad" value="admin">
						<input type = "hidden" name="id" value="<%=db.rs.getString("hosId") %>">
						<input class="button button3" type = "submit" value = "Delete">
					</form>
				</td>			 		
			 </tr>
			<%
		}
			
		}catch(Exception e){
			
		}
	
	%>
	</table>
	</section>
	</section>

</body>
	
</html>
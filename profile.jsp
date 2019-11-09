<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%>
    <%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<title>User Profile</title>
</head>
<body style="background-color:#B0C4DE;">

<%	//to disable web page caching		
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("name")==null) 
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>
		   <form method="post" action="logout"> 
			<section class="loginArea" align="right" style="position: fixed;top : 10px;right: 20px">
			Welcome User! <%=session.getAttribute("name") %><a id="alink" href="login.jsp"><br><button class="button button1">Logout</button></a>
			</section>
		</form> 
			
	<%
		}
	%>

	<%
		try{
			String email = null;
			DBConnect db = new DBConnect();
			email = session.getAttribute("email").toString();
			db.rs = db.st.executeQuery("select * from users where email ='" + email + "'");

			while (db.rs.next()) {
	%>



<section style="min-height: 53%;position:relative;top:100px;">

	<section style="background-color: transparent; color: black; font-family: 'Calibri Light'; padding-left: 30px">

	
		<table align="center">
			<tr>
				<td style="font-size: larger; color: black"><h3 align="center">Your
						Profile</h3></td>
			</tr>
			<tr>
				<td><hr width="700"></td>
			</tr>
			<tr>

				<td>
					<form name="updatecustomers" method="post" action="updateUser">

						<table>
							<tr>
								<td><input type="hidden" name="id" value='<%=db.rs.getString("userId")%>'></td>
							</tr>
							<tr>
								<td></td>
							</tr>

							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Name</td>
								<td><input type="text" name="name" value='<%=db.rs.getString("name")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Password</td>
								<td><input type="password" name="password" value='<%=db.rs.getString("password")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Contact
									Number</td>
								<td><input type="tel" name="phoneNumber" value='<%=db.rs.getString("phone")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><a style="background-color:transparent;" href="home.jsp"><input style="" name="back" type="button" value="<- Back" class="button button1"></a></td>
								<td><input type="submit" name="updateCustomer" class="button button1" value="Update Details"></td>
							</tr>


						</table>
					</form>
				</td>
			</tr>
			<%
				}
				}
				catch (Exception e) 
				{
				}
			%> 
		</table>
	
	</section>
	
</section>	
</body>
<%@include file="/Footer.jsp" %> 
</html>
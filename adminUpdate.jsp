<%@page import="util.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@include file="/Header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles/admin.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>

<style>
</style>

</head>
<body style="background-color:#B0C4DE;">
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		} else {
	%>
	<form method="post" action="logout">
		<section class="loginArea" align="right"
			style="position: fixed; top: 10px; right: 20px">
			Welcome Back!<br>
			<%=session.getAttribute("name")%><a style="background-color:transparent;" href="login.jsp"><br>
				<button class="button button1">Logout</button></a>
		</section>
	</form>

	<%
		}

		String id = request.getParameter("u");

		try {
			DBConnect db = new DBConnect();
			db.rs = db.st.executeQuery("select * from users where userId='" + id + "'");
			while (db.rs.next()) {
	%>

	<center>
		<h2>Update Details</h2>

		<section>
			<form method="post" action="adUpdate">

				<input type="hidden" name="id"
					value="<%=db.rs.getString("userId")%>"> 
					<select name="type" class="input button1">
					<option>user</option>
					<option>admin</option>
				</select><br/>
				<input type="submit" value="Update" class="button button1">
			</form></br></br></br></br>
			<a href="admin.jsp">Back</a>
		</section>
		<br> <br>
	</center>

	<%
		}
		} catch (Exception e) {

		}
	%>
	
</body>
</html>
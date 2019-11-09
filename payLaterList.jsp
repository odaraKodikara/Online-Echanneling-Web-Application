<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/admin.css">
<title>Pay Later List</title>

</head>
<body  style="background-color:#B0C4DE;">



	<section class="main" align="center">
  		<h1>Pay Later</h1><hr>
  	</section>

	<section>
			<h2 align="center"><font><strong>List</strong></font></h2>
			<table id="customers" align="center" Style="width: 70%; text-align:center">
			<tr>
			
			<tr bgcolor="#4CAF50">
				<th><b>Name</b></th>
				<th><b>Type</b></th>
				<th><b>Date</b></th>
				<th text-align="right"></th>
				<th text-align="right"></th>
			</tr>

			<%
			try
			{
				String lMail = request.getParameter("umail");
				DBConnect db = new DBConnect();
				db.rs = db.st.executeQuery("select * from payLater ;");
				while(db.rs.next())
				{
		%>

			<tr>
				<td><%=db.rs.getString("name") %></td>
				<td><%=db.rs.getString("type") %></td>
				<td><%=db.rs.getString("date") %></td>
				<td><a href="updatePayLater.jsp?u=<%=db.rs.getString("pId") %>"><input
						class="button button1" type="button" value="Update"></a></td>
				<td>
					<form action="deletePayment" method="post">
						<input type="hidden" name="id"
							value="<%=db.rs.getString("pId") %>"> <input
							class="button button3" type="submit" value="Pay" onclick="showAlert()">
					</form>
				</td>			
			</tr>
			</table>
			</br></br>
			<center>
			<a href="home.jsp"><h3>Back</h3></a>
			</center>
			<%
		}
			
		}catch(Exception e){
			
		}
	
	%>
			</section>
</body>

</html>
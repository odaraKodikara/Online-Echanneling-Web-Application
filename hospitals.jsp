<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%> 
<%@include file="/Header.jsp" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/admin.css">
<title>Hospitals</title>

</head>
<body  style="background-color:#B0C4DE;">

<section style="position:relative;top:0px;">
			<h2 align="center"><font><strong>Hospitals</strong></font></h2>
			<table id="customers" align="center" Style="width: 70%; text-align:center">
			<tr>
			
			</tr>
			<tr bgcolor="#4CAF50" >
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
			<td><%=db.rs.getString("hospitalName") %> </td>
				<td><%=db.rs.getString("hospitalType") %> </td>
				<td><%=db.rs.getString("telNo") %> </td>
				<td><%=db.rs.getString("location") %> </td>
				<td>
					<a style="background-color:transparent;" href="booking.jsp">PLACE APPOINTMENT</a>
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
<%@include file="/Footer.jsp" %> 
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%> 
<%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/admin.css">
<title>Doctors</title>

</head>
<body  style="background-color:#B0C4DE;">

<section style="position:relative;top:0px;">
			<h2 align="center"><font><strong>Doctors</strong></font></h2>
			<table id="customers" align="center" Style="width: 70%; text-align:center">
			<tr>
			
			</tr>
			<tr bgcolor="#4CAF50" >
			<th Style="text-align:center"><b>Name</b></th>
			<th Style="text-align:center"><b>Speciality</b></th>
		
			
			<th text-align="center"><b></b></th>
			</tr>
			
		<%
			try
			{
				DBConnect db = new DBConnect();
				db.rs = db.st.executeQuery("select * from Doctor");
				while(db.rs.next())
				{
		%>
		
			<tr>
			<td><%=db.rs.getString("dName") %> </td>
				<td><%=db.rs.getString("speciality") %> </td>
				<td>
					<a style="background-color:transparent;" href="booking.jsp">CHANNEL</a>
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
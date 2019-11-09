<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="util.DBConnect"%>
    <%@include file="/Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/login.css">
<title>Update Pay Later</title>
</head>
<body style="background-color:#B0C4DE;">


<%
		

		String id = request.getParameter("u");

		try {
			DBConnect db = new DBConnect();
			db.rs = db.st.executeQuery("select * from payLater where pId='" + id + "'");
			while (db.rs.next()) {
	%>

<section style="min-height: 53%;position:relative;top:90px;">

	<section style="background-color: transparent; color: black; font-family: 'Calibri Light'; padding-left: 30px">

	
		<table align="center">
			<tr>
				<td style="font-size: larger; color: black"><h3 align="center">Update PayLater</h3></td>
			</tr>
			<tr>
				<td><hr width="700"></td>
			</tr>
			<tr>

				<td>
					<form name="updatecustomers" method="post" action="updatePayLater">

						<table>
							<tr>
								<td><input type="hidden" name="id" value='<%=db.rs.getString("pId")%>'></td>
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
								<td style="font-family: Calibri; width: 200px; font-size: large">Address</td>
								<td><input type="text" name="address" value='<%=db.rs.getString("address")%>' style="width: 400px; height: 25px;"></td>
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
								<td style="font-family: Calibri; width: 200px; font-size: large">Email</td>
								<td><input type="email" name="email" value='<%=db.rs.getString("email")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Type</td>
								<td><input type="text" name="type" value='<%=db.rs.getString("type")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Card Number</td>
								<td><input type="text" name="cardnum" value='<%=db.rs.getString("cardNumber")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Expiry Month</td>
								<td><input type="text" name="expmonth" value='<%=db.rs.getString("expMonth")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">Expiry Year</td>
								<td><input type="text" name="expyear" value='<%=db.rs.getString("expYear")%>' style="width: 400px; height: 25px;"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td style="font-family: Calibri; width: 200px; font-size: large">CVV</td>
								<td><input type="text" name="cvv" value='<%=db.rs.getString("cvv")%>' style="width: 400px; height: 25px;"></td>
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
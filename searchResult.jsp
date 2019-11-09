<%@ page import="java.util.*" %>
<%@ page import="search.DocSe" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
	String dn = (String) session.getAttribute("dName");
	String spe = null;
	String hn = null;
%>

<%/*
	DocSe thisDoc = new DocSe();
	thisDoc = thisDoc.loadAndSetInstance(dn);
	dn = thisDoc.getDocName();
	spe = thisDoc.getSpecialization();
	hn = thisDoc.getHosName();
*/%>


<!DOCTYPE HTML>
 
<html>
    <head>
    </head>
    <body style="background-color:#B0C4DE;">
    <center>
    <section>
    <h2>Search Successful</h2>
    <h3>Doctor <%=dn %> is available</h3>
    </section></br></br>
    <a href="home.jsp"><h3>Back</h3></a>
    </center>
          
    </body>
</html>
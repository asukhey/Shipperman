<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
	//If credentials were not entered, it'll redirect to login page.
	if(session.getAttribute("fname")==null){
		response.sendRedirect("Page1_Login.jsp");
	}

	/*Retrieve ID*/
	session.getAttribute("cust_id");
%>

<h5 align="right" >Welcome: <%= session.getAttribute("fname") %></h5> <br><hr>
<!-- Operations -->
<a href ="Page4_PlaceOrder.jsp">
<input type ="button" value="Place An Order" /></a>
<a href ="Page5_ViewOrders.jsp"> 
<input type="button" value="View Orders"> </a>

<a href ="Page31_LocPricing.jsp"> 
<input type="button" value="Location Pricing"> </a>
</body>
</html>
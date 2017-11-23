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
	HttpSession sum_session = request.getSession();
	String from = sum_session.getAttribute("loc_from").toString();
	String to = sum_session.getAttribute("loc_to").toString();
	String model = sum_session.getAttribute("vehicle_model").toString();
	String make = sum_session.getAttribute("vehicle_make").toString();
	String year = sum_session.getAttribute("vehicle_year").toString();	//incase of exception, try converting to int
	String lpn = sum_session.getAttribute("license_no").toString();
	String total = sum_session.getAttribute("total").toString();
	String ccn = sum_session.getAttribute("ccn").toString();
	ccn = ccn.substring(ccn.length()-4, ccn.length());	//Retrieves only last 4 digits
	
%>

<h3>Order Placed Successfully:</h3>

<table border ="1" width=100% >
	<tr>
		<td> Location: </td>
		<td><%= from %> To <%= to %></td>

	</tr>
	
	<tr>
		<td>Vehicle: </td> <hr>
		<td><b>Model: </b> <%= model %> <br>
			<b>Make:</b> <%= make %>
			<b>Year: </b> <%= year %>
			<b>License Plate: </b> <%= lpn %>
		</td>
	</tr>
	<tr>
		<td> Total:</td>
		<td> <%= total %>
	</tr>
	
	<tr>
		<td>Card Number: </td>
		<td>xxxx xxxx xxxx <%= ccn %> </td>
</table>

	<a href = "Page3_Profile.jsp">
		<input type="button" value ="Go Back To profile"/>
	</a>
</body>
</html>
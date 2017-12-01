<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="StylesheetIntro.css">
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

          <ul>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Contact Us</a></li>
            <li style="float:right"><a class="active" href="index.html">Logout</a></li>
          </ul>

    <div class="main">
        <h1>Shipperman Trucking Company</h1><br>
        
		
        <div class="container">
        <p class = "message" style="font-size:20px">Order Placed Successfully</p>

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

	<a class="button" href = "Page3_Profile.jsp">Go To profile</a>
        </div>
    </div>
</body>
</html>
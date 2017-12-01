<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="StylesheetIntro.css">
</head>
<body>
          <ul>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Contact Us</a></li>
            <li style="float:right"><a class="active" href="index.html">Logout</a></li>
          </ul>

	<div class="main">
            <h1>Shipperman Trucking Company</h1><br>
            


<%
	//If credentials were not entered, it'll redirect to login page.
	if(session.getAttribute("fname")==null){
		response.sendRedirect("Page1_Login.jsp");
	}

	/*Retrieve ID*/
	session.getAttribute("cust_id");
%>

            <div class="container">
            <form>
                <p class="message" style="font-size:20px"><strong>Welcome Customer: <%= session.getAttribute("fname") %></strong></p> <br><br>
                <!-- Operations -->
                <a class = "button" href ="Page4_PlaceOrder.jsp">Place An Order</a> <br> <br>
                <a class = "button" href ="Page5_ViewOrders.jsp">View Orders</a> <br> <br>
                <a class = "button" href ="Page31_LocPricing.jsp">Location Pricing</a>
            </form>
            </div>
        </div>
</body>
</html>
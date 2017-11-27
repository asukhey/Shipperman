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
	<div class="navbar">
	  <a href="index.html">Home</a>
	  <a href="about.html">About Us</a>
	  <a href="contact.html">Contact Us</a>
	</div>

	<div class="main">
	<h1>Shipperman Trucking Company</h1>


<%
	//If credentials were not entered, it'll redirect to login page.
	if(session.getAttribute("emp_fname")==null){
		response.sendRedirect("AdminP1_Login.jsp");
	}

	/*Retrieve ID*/
	session.getAttribute("emp_id");
%>
            <div class="container">
                <form>
                    <p class="message"><strong>Welcome Admin: <%= session.getAttribute("emp_fname") %></strong></p> <br><br>
                    <a class ="button" href="AdminP3ViewOrders.jsp">Orders</a> <br>
                    <a class ="button" href="AdminP4Employees.jsp">Employees></a> <br>
                    <a class = "button" href="AdminP5Customers.jsp">Customers</a>
                </form>
            </div>
        </div>
</body>
</html>
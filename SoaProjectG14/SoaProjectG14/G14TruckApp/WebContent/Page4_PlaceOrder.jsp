<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Order</title>
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
        

        <div class="container">
        <h2 style="font-family: 'Times New Roman', Times, serif" align="center">Place Order</h2>
	<form name = "Place Order" action="Page41_Confirm_Order.jsp" method="post">
	
	<select name = "From" class="form-control">
		<option>State From</option>
		<option>Illinois</option>
		<option>Maryland</option>
		<option>Florida</option>
		<option>Indiana</option>
		<option>Iowa</option>
        </select><br>
	
	<select name = "To" class="form-control">
		<option>State To</option>
		<option>Illinois</option>
		<option>Maryland</option>
		<option>Florida</option>
		<option>Indiana</option>
		<option>Iowa</option>
	</select><br>
	
	<select name = "ST" class="form-control">
		<option>Shipping Type</option>
		<option>Large Scale Shipping</option>
		<option> Medium Scale Shipping</option>
		<option> Small Scale Shipping</option>
	</select>
	<br><br><br>
	<input type="Submit" name="Submit" id="Submit" />
        
        <a class = "button" href ="Page3_Profile.jsp">Go Back</a>
	
	</form>
        </div>
    </div>
</body>
</html>
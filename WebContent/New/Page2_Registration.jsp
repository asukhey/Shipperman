<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
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
        
        <div class="container">
        <form name = "Register" action="Register" method="post" >
	
                <h3>Personal</h3><br>
		First Name <input type="text" name ="fn" class = "form-control" required/><br>
		Last Name <input type="text" name ="ln" class = "form-control" required/><br>
		
		<h3>Billing Address</h3><br> 
		Street Address <input type="text" name ="stadd" class = "form-control" required/><br>
		City <input type="text" name ="city" class = "form-control" required/><br>
		State <input type="text" name ="state" class = "form-control" required/><br>
		Zip <input type="text" name ="zip" class = "form-control" required/><br>
		Country <input type="text" name ="country" class = "form-control" required/><br>
		
		<h3>Contact Info</h3><br> 
		Residence <input type="text" name="res" class = "form-control" /><br>
		Cell <input type="text" name="cell" class = "form-control" required/><br>
		Fax <input type="text" name="fax" class = "form-control" ><br>
		
		<h3>Profile Authentication</h3><br> 
		Email <input type="text" name="email" class = "form-control" required/><br>
		Password <input type="password" name="password" class = "form-control" required/><br>
		
		<h3>Company</h3><br> 
		Company name <input type="text" name="company" class = "form-control" required/><br>
		Type <input type="radio" name="type" value="employee">Employee<br>
                     <input type="radio" name="type" value="owner">Owner<br>
		
		<h3>Alternate Contact</h3><br> 
		Name <input type="text" name="acname" class = "form-control" required/><br>
		Phone Number <input type="text" name="acph" class = "form-control" required/><br>
		<br>
		
		<input type="Submit" name="Submit" id="Submit" value = "Register">
	</form>
        </div>
        </div>
</body>
</html>
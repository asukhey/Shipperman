<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
        <form name = "EmpRegister" action="EmpRegister" method="post" >
	
                <h3>Personal</h3>
		First Name <input type="text" name ="empfn" class = "form-control" required/><br>
		Last Name <input type="text" name ="empln" class = "form-control" required/><br>
		Job Title <input type="text" name ="empjt" class = "form-control" required/><br>
		
		Birthdate (YYYY/MM/DD):<input type="text" name="empby" class = "form-control" size="4" > /
								 <input type="text" name="empbm" class = "form-control" size="2" > /
								  <input type="text" name="empbd" class = "form-control" size="2" > <br> 
		
		Hiredate(YYYY/MM/DD):<input type="text" name="emphy" class = "form-control" size="4"> /
								 <input type="text" name="emphm" class = "form-control" size="2"> /
								  <input type="text" name="emphd" class = "form-control" size="2" /	> <br>
		SSN <input type="text" name="empssn" class = "form-control" required /><br>
		Drivers License Number: <input type="text" name="empdln" class = "form-control" required /><br>
		Salary: <input type="text" name="empsal" class = "form-control" required /><br>
		
		<h3>Billing Address</h3>
		Street Address <input type="text" name ="empstadd" class = "form-control" required/><br>
		City <input type="text" name ="empcity" class = "form-control" required/><br>
		State <input type="text" name ="empstate" class = "form-control" required/><br>
		Zip <input type="text" name ="empzip" class = "form-control" required/><br>
		Country <input type="text" name ="empcountry" class = "form-control" required/><br>
		
		<h3>Contact Info</h3>
		Residence <input type="text" name="empres" class = "form-control" /><br>
		Cell <input type="text" name="empcell" class = "form-control" required/><br>
		Fax <input type="text" name="empfax" class = "form-control" ><br>
								  
		<h3>Profile Authentication</h3>
		Email <input type="text" name="empemail" class = "form-control" required/><br>
		Password <input type="password" name="emppassword" class = "form-control" required/><br>
		<input type="Submit" name="Submit" id="Submit" value = "Register">
	</form>
        </div>
        </div>
</body>
</html>
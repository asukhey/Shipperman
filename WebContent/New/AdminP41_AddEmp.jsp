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
                <label for="empfn">First Name</label> 
                <input type="text" id="empfn" name ="empfn" class = "form-control" required/><br>
                <label for="emplname">Last Name</label> 
                <input type="text" id="" name ="empln" class = "form-control" required/><br>
                <label for="title">Job Title</label> 
                <input type="text" id="title" name ="empjt" class = "form-control" required/><br>
		
                <strong>Birthdate (YYYY/MM/DD)</strong><br> 
                <input type="text" name="empby" class = "form-control" size="4" > /
								 <input type="text"  name="empbm" class = "form-control" size="2" > /
								  <input type="text"  name="empbd" class = "form-control" size="2" > <br> 
		
                <strong>Hiredate(YYYY/MM/DD)</strong><br> 
                <input type="text" name="emphy" class = "form-control" size="4"> /
								 <input type="text"  name="emphm" class = "form-control" size="2"> /
								  <input type="text" name="emphd" class = "form-control" size="2" /> <br>
                
                <label for="empssn">SSN</label> 
                <input type="text" id="empssn" name="empssn" class = "form-control" required /><br>
                <label for="empdln">Drivers License Number</label> 
                <input type="text" id="empdln" name="empdln" class = "form-control" required /><br>
                <label for="empsal">Salary</label>
                <input type="text" id="empsal" name="empsal" class = "form-control" required /><br>
		
		<h3>Billing Address</h3>
                <label for="empstadd">Street Address</label> 
                <input type="text" id="empstadd" name ="empstadd" class = "form-control" required/><br>
                <label for="empcity">City</label> 
                <input type="text" id="empcity" name ="empcity" class = "form-control" required/><br>
                <label for="empstate">State</label> 
                <input type="text" id="empstate" name ="empstate" class = "form-control" required/><br>
                <label for="empzip">Zip</label> 
                <input type="text" id="empzip" name ="empzip" class = "form-control" required/><br>
                <label for="empcountry">Country</label>
                <input type="text" id="empcountry" name ="empcountry" class = "form-control" required/><br>
		
		<h3>Contact Info</h3>
                <label for="empres">Residence</label> 
                <input type="text" id="empres" name="empres" class = "form-control" /><br>
                <label for="empcell">Cell</label> 
                <input type="text" id="empcell" name="empcell" class = "form-control" required/><br>
                <label for="empfax">Fax</label> 
                <input type="text" id="empfax" name="empfax" class = "form-control" ><br>
								  
		<h3>Profile Authentication</h3>
                <label for="empemail">Email</label>
                <input type="text" id="empemail" name="empemail" class = "form-control" required/><br>
                <label for="emppassword">Password</label> 
                <input type="password" id ="emppassword" name="emppassword" class = "form-control" required/><br>
		<input type="Submit" name="Submit" id="Submit" value = "Register">
	</form>
        </div>
        </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
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
        
        <script>
		
		function Verify() {
			  var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			  var emailObj = document.getElementById("empemail");
			  if (emailObj.value === null || emailObj.value === "") {
			   alert("Enter email Id");
			   emailObj.focus();
			   return false;
			  } else if (!emailpattern.test(emailObj.value)) {
			   alert("please enter valid e-mail address")
			   emailObj.focus();
			   return false;
			  } else {
			   return true;
			  }
		}
		
		</script>
		
	
        
        <div class="container">
        <h2 align="center">Register An Employee</h2>
        <form name = "EmpRegister" action="EmpRegister" method="post" >
			
                <h3>Personal</h3>
                <label for="empfn">First Name</label> 
                <input type="text" id="empfn" name ="empfn"  class = "form-control" required/><br>
                <label for="emplname">Last Name</label> 
                <input type="text" id="" name ="empln"  class = "form-control" required/><br>
                <label for="title">Job Title</label> 
                <input type="text" id="title" name ="empjt" class = "form-control" required/><br>
		
                <strong>Birthdate (YYYY/MM/DD)</strong><br> 
                <input type="text" name="empby" pattern="[0-9]{4}" class = "form-control" size="4" > /
								 <input type="text"  name="empbm" pattern="[0-9]{2}" class = "form-control" size="2" > /
								  <input type="text"  name="empbd" pattern="[0-9]{2}" class = "form-control" size="2" > <br> 
		
                <strong>Hiredate(YYYY/MM/DD)</strong><br> 
                <input type="text" name="emphy" pattern="[0-9]{4}" class = "form-control" size="4"> /
								 <input type="text"  name="emphm" pattern="[0-9]{2}" class = "form-control" size="2"> /
								  <input type="text" name="emphd" pattern="[0-9]{2}" class = "form-control" size="2" /> <br>
                
                <label for="empssn">SSN</label> 
                <input type="text" id="empssn" name="empssn" size="9" pattern ="[0-9]{9}" class = "form-control" required /><br>
                <label for="empdln">Drivers License Number</label> 
                <input type="text" id="empdln" name="empdln" maxlength="9" pattern ="[0-9]{9}" class = "form-control" required /><br>
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
                <input type="text" id="empzip" name ="empzip" size ="5" pattern ="[0-9]{5}" class = "form-control" required/><br>
                <label for="empcountry">Country</label>
                <input type="text" id="empcountry" name ="empcountry" class = "form-control" required/><br>
		
		<h3>Contact Info</h3>
                <label for="empres">Residence</label> 
                <input type="text" id="empres" name="empres" size ="10" pattern = "[0-9]{10}" class = "form-control" /><br>
                <label for="empcell">Cell</label> 
                <input type="text" id="empcell" name="empcell" size ="10" pattern = "[0-9]{10}" class = "form-control" required/><br>
                <label for="empfax">Fax</label> 
                <input type="text" id="empfax" name="empfax" size ="10" pattern = "[0-9]{10}" class = "form-control" ><br>
								  
		<h3>Profile Authentication</h3>
                <label for="empemail">Email</label>
                <input type="text" id="empemail" name="empemail" class = "form-control" required/><br>
                <label for="emppassword">Password</label> 
                <input type="password" id ="emppassword" name="emppassword" class = "form-control" required/><br>
		<input type="Submit" name="Submit" id="Submit" value = "Register" onclick ="Verify()" />
	</form>
        </div>
        </div>
</body>
</html>
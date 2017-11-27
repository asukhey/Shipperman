<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
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

	<script>
		
		function Verify() {
			  var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			  var emailObj = document.getElementById("cus_email");
			  if (emailObj.value == null || emailObj.value == "") {
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
	
		<form name = "Login" action="AdminLogin" method="post">
        	                    
                <label for ="email">Email</label>    
                <input type ="email" id = "email" name ="email" class = "form-control" required/><br>
                
                <label for ="password">Password</label> 
                <input type ="password" id = "password" name ="password" class = "form-control" required/><br>
				
                <input type="Submit" name="Submit" id="Submit" value ="Login" onclick="Verify()" /><br>
		
                <p class="message"><strong>OR</strong></p>
                <a class = "button" href="Page2_Registration.jsp">Register</a>
		
        </form>
    </div>
</div>
</body>
</html>
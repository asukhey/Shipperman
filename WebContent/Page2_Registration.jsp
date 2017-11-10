<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">REGISTER</h1>
	<form action="Register" method="post" align="center">
	
		<table id ="reg_table" border="0" align="center">
		
		<tr>
			<td>First Name:</td>
			<td><input type="text" name ="fn"></td>
		</tr>
		
		<tr>
			<td>Last Name:</td>
			<td><input type="text" name ="ln"></td>
		</tr>
		
		<tr>
			<td><h3>Billing Address:</h3></td> 
		
		</tr>
		
		<tr>
			<td>Street Address:</td>
			<td><input type="text" name ="stadd"></td>
		</tr>
		
		<tr>
			<td>City:</td>
			<td><input type="text" name ="city"></td>
		</tr>
		
		<tr>
			<td>State:</td>
			<td><input type="text" name ="state"></td>
		</tr>
		
		<tr>
			<td>Zip:</td>
			<td><input type="text" name ="zip"></td>
		</tr>
		
		<tr>
			<td>Country:</td>
			<td><input type="text" name ="country"></td>
		</tr>
		
		<tr>
			<td><h3>Contact Info:</h3></td> 
		
		</tr>
		
		
		<tr>
			<td>Residence:</td>
			<td><input type="text" name="res"></td>
		</tr>
		
		<tr>
			<td>Cell:</td>
			<td><input type="text" name="cell"></td>
		</tr>
		
		<tr>
			<td>Fax:</td>
			<td><input type="text" name="fax"></td>
		</tr>
		
		<tr>
			<td><h3>Profile Authentication:</h3></td> 
		
		</tr>
		
		<tr>
			<td>Email:</td>
			<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password"></td>
		</tr>
		
		<tr>
			<td><h3>Company</h3></td> 
		
		</tr>
		
		<tr>
			<td>Company name:</td>
			<td><input type="text" name="company"></td>
		</tr>
		
		<tr>
			<td>Type:</td>
			<td><input type="radio" name="type" value="employee">Employee</td>
			<td><input type="radio" name="type" value="owner">Owner</td>
		</tr>
		
		<tr>
			<td><h3>Alternate Contact:</h3></td> 
		
		</tr>
		
		<tr>
			<td>Name:</td>
			<td><input type="text" name="acname"></td>
		</tr>
		
		<tr>
			<td>Phone Number:</td>
			<td><input type="text" name="acph"></td>
		</tr>
		
		</table> <br>
		<input type="submit" value="register" align="ceter">
	</form>
</body>
</html>
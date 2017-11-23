<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h1 align="center">Welcome to Shipperman</h1> <br>

	<form action="Login" method="post">
	
		<table id="login_table" align="center">
			<tr>
				<td> Email: </td>
				<td><input type ="text" name ="email" required="required"></td>
			</tr>
			
			<tr>
				<td> Password: </td>
				<td><input type ="password" name ="password" required="required"></td></tr>
			
		</table>
		
	
	<!-- Apply css function here -->	
		<div align="center">
		<input type="submit" value ="login">
		
		<a href="Page2_Registration.jsp">
					<input type="button" value ="Register Page"/>
				</a>
		</div>
	</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Order</title>

	

</head>
<body>


	<form action="Page41_Confirm_Order.jsp" method="post">
	
	<select name = "From">
			<option>State From</option>
		<option>Illinois</option>
		<option>Maryland</option>
		<option>Florida</option>
		<option>Indiana</option>
		<option>Iowa</option>
	</select>
	
	<select name = "To">
		<option>State To</option>
		<option>Illinois</option>
		<option>Maryland</option>
		<option>Florida</option>
		<option>Indiana</option>
		<option>Iowa</option>
	</select>
	<br>
	
	<select name = "ST">
		<option>Shipping Type</option>
		<option>Large Scale Shipping</option>
		<option> Medium Scale Shipping</option>
		<option> Small Scale Shipping</option>
	</select>
	<br><br><br>
	<input type="submit" name ="submit"/>
	
	</form>
</body>
</html>
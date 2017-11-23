<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% HttpSession order_session = request.getSession();
	String total = order_session.getAttribute("total").toString();%>

	<h1 align= "center"> Payment System</h1>
<form name = "Payment" class ="form" action="ValidateFormData" method = "POST">
		<table border = 0>
			<tr>
				<td>Credit Card Number:</td>
				<td><input type ="text" name ="ccn" size ="16"/></td>	
				<td><font color="red" >${message1}</font></td>
			</tr>
			
			<tr>
				<td>Credit Card Type:</td>
				<td><select name = "cardtype">
						<option>Master Card</option>
						<option>Visa</option>
						<option>American Express</option>
						<option>Discover</option>
						<option>Capital One</option>
					</select></td>
				
			</tr>
			
			<tr>
				<td>Authentication Pin:</td>
				<td><input type ="text" name ="auth" size ="4"/></td>
				<td><p><font color="red" > ${message2}</font> </p>	</td>
			</tr>
			
			<tr>
				<td>Amount :</td>
				<td><b>$<%= total  %></b></td>
			</tr>
			
			<tr>
				<td>Card Expiry Date (MM/YYYY):</td>
				<td><input type="text" name="month" size="2"> / <input type="text" name="year" size="4"></td>
				<td ><p><font color="red" >${message4} </font> </p></td>
			</tr>
		</table>
		<div class = "sub">
		<input type="submit" value ="submit" name ="submit" >
		</div>
		<br>
		
	</form>
</body>
</html>
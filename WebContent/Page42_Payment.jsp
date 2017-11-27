<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payment</title>
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
        <h1>Shipperman Trucking Company</h1><br>
        <a style="float:right" href="index.html" >Logout</a><br>

        <div class="container">
    
        <% HttpSession order_session = request.getSession();
	String total = order_session.getAttribute("total").toString();%>

        <form name = "Payment"  action="ValidateFormData" method = "POST">

            <label for ="ccn">Credit Card Number</label>
            <input type ="text" id = "ccn" name ="ccn" size ="16" class="form-control" required/><br>
            <p><font color="red" >${message1}</font></p>
	
            <strong>Credit Card Type</strong><br><select name="cardType" class="form-control">
		<option>Master Card</option>
		<option>Visa</option>
		<option>American Express</option>
		<option>Discover</option>
		<option>Capital One</option>
		</select><br>
				
		<label for ="pin">PIN</label>
		<input type ="password" id = "pin" name ="auth" class="form-control" required/><br>
                <p><font color="red" > ${message2}</font> </p><br>
		
                <label for ="amount">Amount</label>
                <input id = "amount" name = "amount" value="$<%= total  %>"  class="form-control" readonly/><br>
		
                <label for ="month">Card Expiry Date (MM/YYYY)</label>
		<input type="text" id = "month" name="month" size="2"> / <input type="text" name="year" size="4"><br>
                <p><font color="red" >${message4} </font> </p><br>
		
                <input type="Submit" name="Submit" id="Submit" /><br>
                
                <a class = "button" href ="Page4_PlaceOrder.jsp">Cancel</a>
		
		
	</form>
        </div>
    </div>
</body>
</html>
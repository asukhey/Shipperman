<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import="dbc.*" %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirm</title>
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
    
        <table width=59% border ="1">
		<tr>
			<th>Journey</th>
			<th>Vehicle</th>
			<th>Charges</th>
		</tr>	
	<% 
		String from= request.getParameter("From");
		String to= request.getParameter("To");
		String type= request.getParameter("ST");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			String pricing_query="SELECT * from pricing, trucks,locations where state_from = '"+from+"' and state_to = '"+to+"' and shipping_type = '"+ type+"' and location_state= '"+from+"'";
			PreparedStatement ps = conn.prepareStatement(pricing_query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
			double ship_rate=rs.getDouble("price_cost");
			String make = rs.getString("truck_make");
			String model = rs.getString("truck_model");
			String color = rs.getString("truck_color");
			int year = rs.getInt("truck_year");
			String lpn = rs.getString("truck_licenseplateno");
			double rental = rs.getDouble("truck_rental");
			double Tax= rs.getDouble("tax");
			double twt = ship_rate + ((Tax/100)*ship_rate); //Ship rate + tax
			double total= rental + twt;	//Grand Total
			total = Math.round(total *100.0)/100.0;	//Round off to nearest 2 digits
	
	%>
		<tr>
			<td><b><%= from %> To <%= to %></b></td>
			<td> <b>Vehicle info:</b> <%= model %> , <%= make %> | <%= year %> <br>
				 <b>Color:</b> <%= color %> <br>
				 <b>License Plate:</b> <%= lpn %> </td>
			<td><b>Shipping Rate:</b> <%= ship_rate %> <br>
				<b>Truck Rental:</b> <%= rental %> <br>
				<b><%= from %> Sales Tax:</b> <%= Tax %>% <hr>
					<b>Total: </b> $<%= total %></td>
			
		</tr>
	</table>
	<a class ="button" href="Page42_Payment.jsp">Proceed to Payment</a>
        <a class ="button" href="Page4_PlaceOrder.jsp">Go Back</a>
	
	
	
	<%
	HttpSession order_session = request.getSession();
	order_session.setAttribute("loc_to",to);
	order_session.setAttribute("loc_from",from);
	order_session.setAttribute("vehicle_model",model);
	order_session.setAttribute("vehicle_make",make);
	order_session.setAttribute("vehicle_year",year);
	order_session.setAttribute("license_no",lpn);
	order_session.setAttribute("ship_rate",ship_rate);
	order_session.setAttribute("rent_rate",rental);
	order_session.setAttribute("tax",Tax);
	order_session.setAttribute("total",total);
	order_session.setAttribute("ship_type",type);
	}
	}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
		
        </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Employee</title>
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
        <h1>Shipperman Trucking Company</h1>    
    		<h1>Order Management</h1> 
        <br>
	<table width ="59%" border =1>
	<tr>
		<th>Order ID</th>
	<th>Order Date</th>
	<th>Customer ID</th>
	<th>Order Amount</th>
	<th>Order Status</th>
	<th>Driver</th>
	<th>Truck For shipping</th>

	
	</tr>
		<%
			
			try{
				
			int emp_id = Integer.parseInt(session.getAttribute("emp_id").toString());
			/*Query for displaying the order*/
			String ViewEmployee=" select * from orders where emp_id = " + emp_id + ";";
		
			/*Establish a connection*/
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			
			

	            String sql ="SELECT order_id, order_date, cust_id, order_amount, status, employees.emp_lname, employees.emp_fname ,trucks.truck_make, trucks.truck_model, trucks.truck_color FROM orders INNER JOIN employees on employees.emp_id = orders.emp_id INNER JOIN trucks on employees.emp_id = trucks.emp_id ";
	            
	            PreparedStatement ps= conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
			/*Loop to display data*/
			while(rs.next()){ 
				
				/*IMPORTANT: Pass the data in the form of variables, else it'll only display*/
				int order_id = rs.getInt("order_id") ;
				Date order_date = rs.getDate("order_date");
				double amt = rs.getDouble("order_amount") ;
				String status = rs.getString("status") ;
				String fn =  rs.getString("emp_fname");
				String ln = rs.getString("emp_lname");
				String make=rs.getString("truck_make");
				String model =rs.getString("truck_model");
				String color = rs.getString("truck_color");
				int cust_id=rs.getInt("cust_id");
				
			%>
			
				<tr>
			<td><%= order_id %>	</td>
			<td><%= cust_id %>	</td>
			<td><%= order_date %>	</td>
			<td><%= amt %>	</td>
			<td><%= status %></td>
			<td><%= ln%> <%= fn %></td>
			<td><%= make%>	 <%= model%> <%= color %></td>	
			</tr>

		<%		
			}
				rs.close();
				ps.close();
				conn.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
		%>


	</table>
	
	<div class="container">
	<form name="Modify" action="Modify" method="post">
	  Order ID:	<input type="text" name="order_id" class="form-control"/>
	  <br> 
	  	Status:<select name="status" class="form-control">
	  	<option> Processing</option>
	  	<option> Shipping</option>
	  	<option> Shipped</option>
	  	</select><br>
	  	<input type="submit" value="Submit"/> 
	  	<br>
	  	<br><br>
	</form>
    <a class ="button" href="AdminP2_Profile.jsp">Go To Profile</a>
    </div>
    </div>
</body>
</html>
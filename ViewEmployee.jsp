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

	<jsp:useBean id="Empolyees"  class="ben.service.Connector" > </jsp:useBean>
    
    <div class="navbar">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact Us</a>
    </div>

    <div class="main">
        <h1>Shipperman Trucking Company</h1>    
    		<h1>Employees</h1> 
        <br>
	<table width ="59%" border =1>
	<tr>
	<th>Order ID</th>
	<th>Customer ID</th>
	<th>Truck ID</th>
	<th>Ship from</th>
	<th>Ship to</th>
	<th>Status</th>

	
	</tr>
		<%
			
			try{
				
			int emp_id = Integer.parseInt(session.getAttribute("cust_id").toString());
			/*Query for displaying the order*/
			String ViewEmployee=" select * from orders where emp_id = " + emp_id + ";";
		
			/*Establish a connection*/
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://104.194.103.184:3306/soag14","root","root");
			
			 Statement stmt = conn.createStatement();

	            String sql = "select * from orders"; 
	            ResultSet rs = stmt.executeQuery(ViewEmployee);
			/*Loop to display data*/
			while(rs.next()){ 
				
				/*IMPORTANT: Pass the data in the form of variables, else it'll only display*/
				int order_id = rs.getInt("order_id");
				int cus_id = rs.getInt("cust_id");
				int truck_id = rs.getInt("truck_id");
				String ship_from = rs.getString("ship_from");
				String ship_to = rs.getString("ship_to");
				String status = rs.getString("status");
				
			%>
			
			<tr>
			<td><%= order_id %>	</td>
			<td><%= cus_id %>	</td>
			<td><%= truck_id %>	</td>
			<td><%= ship_from %>	</td>
			<td><%= ship_to %>	</td>
			<td><%= status %>	</td>

		<%		
			}
				rs.close();
				stmt.close();
				conn.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
		%>


	</table>
    <button onclick="window.open('104.194.103.184:8080/G14TruckApp/Page1_Login.jsp')" type = "submit"> Back </button>
    </div>
</body>
</html>
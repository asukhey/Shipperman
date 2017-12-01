<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pricing</title>
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
            
	
	<h2 align="center">Location Pricing</h2><br>
	
	<table width ="59%" border =1 align="center">
	<tr>
	<th>From</th>
	<th>To</th>
	<th>Price</th>
	
	</tr>
		<%
		if(session.getAttribute("fname")==null){
			response.sendRedirect("Page1_Login.jsp");
		}
			
			try{
			/*Query for displaying the order*/
			String view_locations="Select state_from, state_to, price_cost from pricing";
		
			/*Establish a connection*/
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			PreparedStatement ps= conn.prepareStatement(view_locations);
			ResultSet rs= ps.executeQuery();
			/*Loop to display data*/
			while(rs.next()){ 
				
				/*IMPORTANT: Pass the data in the form of variables, else it'll only display*/
				
				String from = rs.getString("state_from") ;
				String to =  rs.getString("state_to");
				float price=rs.getFloat("price_cost");
			%>
			
			<tr>
			<td><%= from %>	</td>
			<td><%= to %>	</td>
			<td><%= price %>	</td>
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
	<div class ="container">
			<a class = "button" href ="Page3_Profile.jsp">Go Back to Profile</a>
	</div>	


	</div>

</body>
</html>
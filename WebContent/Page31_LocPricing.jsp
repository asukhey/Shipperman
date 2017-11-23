<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ page import="dbc.*" %>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Location Pricing</title>
</head>
<body>
	
	<h2 align="center">Location Pricing</h2>
	
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




</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
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
        
        
        
    	<h1>Customers</h1> 
        <br>
	<table width ="100%" border =1>
	<tr>
		<th>Customer ID</th>
	<th>Customer Name</th>
		<th>Email</th>
	<th>Address</th>
	<th>Contact Details (R | C | F)</th>
	<th>Date Registered: (YYYY-MM-DD)</th>
	<th>Work</th>
	<th>Alternate Contact</th>
	</tr>
		<%
			
			try{
		
			/*Establish a connection*/
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			
			

	            String sql =" SELECT * from customers";
	            
	            PreparedStatement ps= conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
			/*Loop to display data*/
			while(rs.next()){ 
				/*IMPORTANT: Pass the data in the form of variables, else it'll only display*/
				int cust_id = rs.getInt("cust_id") ;
				String fname = rs.getString("cust_fname");
				String lname = rs.getString("cust_lname");
				String stadd=rs.getString("cust_stadd");
				String city = rs.getString("cust_city");
				String state = rs.getString("cust_state");
				int zip = rs.getInt("cust_zip");
				String country = rs.getString("cust_country");
				String res=rs.getString("cust_res");
				String cell=rs.getString("cust_cell");
				String fax=rs.getString("cust_fax");
				String date=rs.getString("cust_regdate");
				String company= rs.getString("cust_company");
				String type = rs.getString("cust_type");
				String alt_name=rs.getString("cust_altname");
				String alt_ph=rs.getString("cust_altph");
				String email=rs.getString("cust_email");
				
			%>
			
			<tr>
			<td><%= cust_id %>	</td>
			<td><%= fname %> <%= lname %>	</td>
			<td><%= email %></td>
			<td><%= stadd %> | <%= city %> | <%= state %> | <%= zip %> | Country</td>
			<td><%= res %> | <%= cell %> | <%= fax %></td>
			<td><%= date %></td>
			<td><%= type %>, <%= company %> </td>
			<td><%= alt_name  %> | <%= alt_ph %> </td>
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
	<h2 style="font-family: 'Times New Roman', Times, serif">Remove Customer</h2>
	
	<form name = "Remove Customer" action="RemCust" method="post" >
	  	
          <label for="c_id">Customer ID</label>
          <input type="text" id="c_id" name="c_id" class="form-control"/><br>
          <input type="submit" value="Delete Customer" name = "submit"/><br>
	  	<br>
           <a class ="button" href="AdminP2_Profile.jsp">Go To Profile</a>
	</form>
    
    </div>
    </div>
</body>
</html>
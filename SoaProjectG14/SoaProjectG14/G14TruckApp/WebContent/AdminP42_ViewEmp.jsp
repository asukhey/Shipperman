<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
        <h1>Shipperman Trucking Company</h1><br>
        
        
        
    		<h1>Employee Management</h1> 
        <br>
	<table width ="100%" border =1>
	<tr>
		<th>Employee ID</th>
	<th>Employee Name</th>
	<th>Job Post</th>
	<th>Address</th>
	<th>Contact Details (R | C | F)</th>
	<th>Hire Date: (YYYY-MM-DD)</th>
	<th>Salary ($)</th>
	<th>Email<th>
	
	</tr>
		<%
			
			try{
		
			/*Establish a connection*/
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			
			

	            String sql =" SELECT * from employees";
	            
	            PreparedStatement ps= conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
			/*Loop to display data*/
			while(rs.next()){ 
				/*IMPORTANT: Pass the data in the form of variables, else it'll only display*/
				int emp_id = rs.getInt("emp_id") ;
				String fname = rs.getString("emp_fname");
				String lname = rs.getString("emp_lname");
				String title= rs.getString("emp_jobtitle");
				String stadd=rs.getString("emp_stadd");
				String city = rs.getString("emp_city");
				String state = rs.getString("emp_state");
				String zip = rs.getString("emp_zip");
				String res=rs.getString("emp_res");
				String cell=rs.getString("emp_cell");
				String fax=rs.getString("emp_fax");
				String date=rs.getString("emp_hiredate");
				double sal=rs.getDouble("emp_salary");
				String email=rs.getString("email");
				
			%>
			
			<tr>
			<td><%= emp_id %>	</td>
			<td><%= fname %> <%= lname %>	</td>
			<td><%= title %>	</td>
			<td><%= stadd %> | <%= city %> | <%= state %> | <%= zip %></td>
			<td><%= res %> | <%= cell %> | <%= fax %></td>
			<td><%= date %></td>
			<td><%= sal %></td>
			<td><%= email %></td>
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
	<h2 style="font-family: 'Times New Roman', Times, serif">Remove Employee</h2>
	
	<form name = "RemEmp" action="RemEmp" method="post" >
            <label for="e_id">Employee ID</label>	
            <input type="text" id ="e_id" name="e_id" class="form-control"/><br>
            <input type="submit" value="Submit" name = "submit"/><br> 
	    <br>
	
            <a class ="button" href="AdminP2_Profile.jsp">Go To Profile</a>
        </form>
        </div>
        </div>
</body>
</html>
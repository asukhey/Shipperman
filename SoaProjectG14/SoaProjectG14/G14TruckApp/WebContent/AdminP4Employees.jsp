<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
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
        
        
        <div class="container">
        <h2 style="font-family: 'Times New Roman', Times, serif">Employee Management</h2> <br>
            <form>
                <a class ="button" href="AdminP41_AddEmp.jsp">Register an employee</a> 
                <a class ="button" href="AdminP42_ViewEmp.jsp">Display employees</a> <br>
            </form>
        </div>
        </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbc.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
    <div class="navbar">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact Us</a>
    </div>

    <div class="main">
        <h1>Shipperman Trucking Company</h1> 
        
        <div class="container">
            <form>
                <a class ="button" href="AdminP41_AddEmp.jsp">Register an employee</a> <br>
                <a class ="button" href="AdminP42_ViewEmp.jsp">Display employees</a> <br>
            </form>
        </div>
</body>
</html>
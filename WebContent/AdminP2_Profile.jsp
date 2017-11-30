<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
<h1>Shipperman Trucking Company:Admin View</h1>


<%
	//If credentials were not entered, it'll redirect to login page.
	if(session.getAttribute("emp_fname")==null){
		response.sendRedirect("AdminP1_Login.jsp");
	}

	/*Retrieve ID*/
	session.getAttribute("emp_id");
%>
	<h5 align="right" >Welcome: <%= session.getAttribute("emp_fname") %></h5> <br><br>
	
	
	<a href="AdminP3ViewOrders.jsp"><input type="button" value="Orders" ></input></a> <br>
	<a href="AdminP4Employees.jsp"><input type="button" value="Employees" ></input></a> <br>
	<a href="AdminP5Customers.jsp"><input type="button" value="Customers" ></input></a>
	
	
</body>
</html>
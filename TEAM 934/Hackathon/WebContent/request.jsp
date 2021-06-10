<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<%@include file="DAO.jsp" %>
	<h1>Request of the members applied for different welfare schemas</h1>
	<table class="table">

				<tr>
				<td>Id</td>
				<td>Aadhar No</td>
				<td>NAME</td>
				<td>Gender</td>
				<td>Status</td>
				<td>YOjana</td>
				<td>Action</td></td>
				</tr>

	<%
		ResultSet rs = statement.executeQuery("select * from awas_tbl where status  = 'PENDING'");
		while(rs.next()){
			
			%>
			
				<tr>
				<td><%= rs.getString(1)%></td>
				<td><%= rs.getString(17)%></td>
				<td><%= rs.getString(18)%></td>
				<td><%= rs.getString(19)%></td>
				<td><%= rs.getString(25)%></td>
				<td><%= rs.getString(26)%></td>
				<td><a class="btn btn-primary" href="details.jsp?id=<%= rs.getString(1)%>">Details</a></td></td>
				</tr>
			<%
		}
	
	%>
	</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<% 
	String updatequery ="UPDATE `user` SET `active` = 0 where aadhar_no = ? ";
	String aadhar_no = session.getAttribute("aadhar_no").toString();	
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_db", "root", "");
	PreparedStatement ustmt = con.prepareStatement(updatequery);
	ustmt.setString(1, aadhar_no);
	ustmt.execute();
	session.invalidate();
 	response.sendRedirect("index.jsp");
 %>
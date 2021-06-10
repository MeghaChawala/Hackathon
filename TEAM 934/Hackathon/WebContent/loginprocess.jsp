<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String aadhar_no = request.getParameter("aadhar_no");
	String password = request.getParameter("password");
	String query = "SELECT * FROM `user` WHERE aadhar_no = ? and password = ? and active = ?";
	String updatequery ="UPDATE `user` SET `active` = 1 where aadhar_no = ? ";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_db", "root", "");
	PreparedStatement stmt = con.prepareStatement(query);
	PreparedStatement ustmt = con.prepareStatement(updatequery);
	stmt.setString(1, aadhar_no);
	stmt.setString(2, password);
	stmt.setString(3,"0");
	ustmt.setString(1, aadhar_no);
	ResultSet rs;
	rs = stmt.executeQuery();
	if (rs.next()) {
		session.setAttribute("aadhar_no", aadhar_no);
		ustmt.execute();
		response.sendRedirect("home.jsp");
	} else {
		session.setAttribute("login-msg", "Invalid Mobile No. or Password / Maximum Login Reached");
		response.sendRedirect("index.jsp");
	}
%>
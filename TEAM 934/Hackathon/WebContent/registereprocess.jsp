<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<% 
 	
 	String Aadhar=request.getParameter("Aadhar");
	String fullname=request.getParameter("fullname");
	String fathername=request.getParameter("fathername");
	String password=request.getParameter("password");
	String dob=request.getParameter("dob");
	String gender=request.getParameter("gender");
	String mobile_no=request.getParameter("mobile_no");
	String address=request.getParameter("address");
	String pincode=request.getParameter("pincode");
    String query = "INSERT INTO user (	aadhar_no,full_name,father_name,password, dob,gender,mobile_no,address,pincode) VALUES (?,?,?,?,?,?,?,?,?)";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_db","root", "");  
    PreparedStatement stmt=con.prepareStatement(query);
    stmt.setString(1 ,Aadhar);
    stmt.setString(2,fullname);
    stmt.setString(3, fathername);
    stmt.setString(4,password);
    stmt.setString(5,dob);
    stmt.setString(6,gender);
    stmt.setString(7,mobile_no);
    stmt.setString(8,address);
    stmt.setString(9,pincode);
    stmt.executeUpdate();
    response.sendRedirect("register.jsp");
    
     
 %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String sname = request.getParameter("state_name");
	String dname = request.getParameter("district_name");
	String odetail = request.getParameter("ownership_detail");
	int no = Integer.parseInt(request.getParameter("rooms"));
	String Pancard = request.getParameter("pancard").toString();
	String D_L_no = request.getParameter("driving_license").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_db", "root", "");
	if (session.getAttribute("aadhar_no") == null)
		response.sendRedirect("index.jsp");
	else {
		String query = "SELECT * FROM `user` WHERE aadhar_no = ? ";
		
		PreparedStatement stmt = con.prepareStatement(query);
		
		stmt.setString(1, (String)session.getAttribute("aadhar_no"));
		
		ResultSet rs = stmt.executeQuery();
		
		if (rs.next()) {
			String aadhar = rs.getString(1);
			String full_name = rs.getString(2);
			String father_name = rs.getString(3);
			String dob = rs.getString(5);
			String gender = rs.getString(6);
			String mobile_no = rs.getString(7);
			String address = rs.getString(8);
			String pincode = rs.getString(9);
			
			String query1 = "insert into awas_tbl (aadhar_no,fullname,gender,	address,dob,father_name,contact_no) values(?,?,?,?,?,?,?)";
			
			PreparedStatement stmt1 = con.prepareStatement(query1);
			
			stmt1.setString(1, aadhar);
			stmt1.setString(2, full_name);
			stmt1.setString(3, gender);
			stmt1.setString(4, address);
			stmt1.setString(5, dob);
			stmt1.setString(6, father_name);
			stmt1.setString(7, mobile_no);
			stmt1.executeUpdate();

		}

	}
%>
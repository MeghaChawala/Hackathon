<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/*Panel tabs*/
.panel-tabs {
    position: relative;
    bottom: 30px;
    clear:both;
    border-bottom: 1px solid transparent;
}

.panel-tabs > li {
    float: left;
    margin-bottom: -1px;
}

.panel-tabs > li > a {
    margin-right: 2px;
    margin-top: 5px;
    line-height: .85;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
    color: #ffffff;
}

.panel-tabs > li > a:hover {
    border-color: transparent;
    color: #ffffff;
    /*background-color: transparent;*/
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    background-color: rgba(255,255,255, .32);
}

.panel-tabs > li.active > a,
.panel-tabs > li.active > a:hover,
.panel-tabs > li.active > a:focus {
    color: #fff;
    cursor: default;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    background-color: rgba(255,255,255, .23);
    border-bottom-color: transparent;
}
#indera{
background-image:awas1.jpg
}
</style>
</head>
<body>
	<%
		if (session.getAttribute("aadhar_no") == null)
			response.sendRedirect("index.jsp");
		else {
			String query = "SELECT * FROM `aadhar_tbl` WHERE Aadhar_no = ? ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_db", "root", "");
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, session.getAttribute("aadhar_no").toString());
			ResultSet rs = stmt.executeQuery();
			if(rs.next())
		
	%>
	<nav class="navbar navbar-inverse">
<ul class="nav navbar-nav navbar-right">
	  <li >Hello <%= rs.getString(3)%></li>
      <li><a href="logoutprocess.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  
</nav>
<form action="halpati.jsp" method="post">
	 <input type="hidden" name="awas" value="indira">
	<div class="container" id="indira">
	<div class="row">
		<h2 class="text-center" ><u><b>AWAS YOJANA</b></u></h2>
            <div class="row">
                <div class="col-md-4 text-center">
                    <div class="box">
                        <div class="box-content">
                            <h1 class="tag-title">INDIRA AWAS YOJANA</h1>
                            <hr />
                            <p id="indera">The IAY has been running under the Supervision of the Ministry of Rural Development, Government of India. The IAY or Indira Awas Yojana was launched by UPA Government in the Year 2012. </br>The Schme was Launched for the Welfare of Poor and Weaker Section of the Society by Providing Fund from the Government for Housing.</p>
                            <br />
                            <div>
                              <img src="images/awas.png" />
                            </div>
                             <button class="btn btn-lg btn-success btn-block" type="submit">Apply</button>
                        </div>
                    </div>
                </div>
           </form>
           <form action="sp.jsp" method="post">    
           <input type="hidden" name="awas" value="sardar-patel">
                <div class="col-md-4 text-center">
                    <div class="box">
                        <div class="box-content">
                            <h1 class="tag-title">Sardar Patel Awas Yojana</h1>
                            <hr />
                            <p>Sardar Patel Awas Yojana for land less agricultural labourers and village artisan living Below Poverty line in rural areas of the State.</br> Sardar Awas Vasahat, Rampun, dist. Vadodara Govt. has made strategic planning for solution of houses in the village.The poor has right to live new life and to turn to new culture as colony of poor population.</p>
                            <br />
                             <img src="images/awas.png" />
                           
                        </div>
                          <button class="btn btn-lg btn-success btn-block" type="submit">Apply</button>
                    </div>
                </div>
              </form> 
              <form action="pm.jsp" method="post"> 
                <input type="hidden" name="awas" value="pradhan-mantri">
                <div class="col-md-4 text-center">
                    <div class="box">
                        <div class="box-content">
                            <h1 class="tag-title">Pradhan Mantri Gruh Yojana</h1>
                            <hr />
                            <p>Pradhan Mantri GRUH Yojana where GRUH stands for Gujarat Rural Urban Housing is an affordable housing scheme especially designed for home seekers belonging to EWS and LIG category of the society. Pradhan Mantri  GRUH Yojana was announced during 12th Five-year plan in consideration of growing need for affordable houses in urban areas. </p>
                            <br />
                            <img src="images/awas.png" />
                            
                        </div>
                         <button class="btn btn-lg btn-success btn-block" type="submit">Apply</button>
                    </div>
                </div>
                </form> 
            </div>           
        </div>
	</div>
</div>
<%} %>
</body>
</html>
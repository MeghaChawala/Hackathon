<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<style>
			.palel-primary
			{
				border-color: #bce8f1;
			}
	.panel-primary>.panel-heading
	{
		background:#bce8f1;

	}
	.panel-primary>.panel-body
	{
		background-color: #EDEDED;
	}
	</style>
	</head>

<body>
		<% if (session.getAttribute("aadhar_no") == null)
				response.sendRedirect("home.jsp");
			else
			{
		
			%>
        <div class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Registration Page
			</div>
			<div class="panel-body">
				<form action="pmprocess.jsp" method="POST" name="myform">
					<div class="form-group">
						<label for="State name">State name: *</label>
						<input id="State name" name="State name" class="form-control" type="text" data-validation="required" >

					</div>
					<div class="form-group">
						<label for="District name">District name *</label>
						<input id="District name" name="District name" class="form-control" type="text" "required">

					</div>
                    <div class="form-group">
						<label for="Ownership Detail">Ownership Detail. *</label>
						<input id="Ownership Detail" name="Ownership Detail" class="form-control" type="text" "required">

					</div>
					<div class="form-group">
						<label for="No of rooms excluding kitchen">No of rooms excluding kitchen. *</label>
						<input id="No of rooms excluding kitchen" name="No of rooms excluding kitchen" class="form-control" type="Number""required" >

					</div>
					<div class="form-group">
						<label for="Pancard">Pancard * :</label>
						<input id="Pancard" name="Pancard" class="form-control" type="Number" data-validation="required">
					</div>
                    <div class="form-group">
						<label for="Driving Licance">Driving Licance *</label>
						<input id="Driving Licance" type="Number" name="Driving Licance" class="form-control" "required" pattern="{A-za-z}">

					</div>
					
                  
					<button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>

				</form>

			</div>
		</div>
	</div>
	</div>
            </div>
          <% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<form action="" method="POST" name="myform">
					<div class="form-group">
						<label for="Bankname">Bankname: *</label>
						<input id="Bankname" name="Bankname" class="form-control" type="text" data-validation="required" pattern="{A-za-z}">

					</div>
					<div class="form-group">
						<label for="Account No.">Account No. *</label>
						<input id="Account No" name="Account No" class="form-control" type="Number" "required">

					</div>
                    <div class="form-group">
						<label for="IFSC Code">IFSC Code. *</label>
						<input id="IFSC Code" name="IFSC Code" class="form-control" type="Number" "required">

					</div>
					<div class="form-group">
						<label for="Voter Id">Voter Id. *</label>
						<input id="Voter Id" name="Voter Id" class="form-control" type="Number""required" >

					</div>
					<div class="form-group">
						<label for="Religion">Religion * :</label>
						<input id="Religion" name="Religion" class="form-control" type="text" data-validation="required" pattern="{A-za-z}">
					</div>
                    <div class="form-group">
						<label for="Cast">Cast *</label>
						<input id="Cast" type="text" name="Cast" class="form-control" "required" pattern="{A-za-z}">

					</div>
                    <div class="form-group">
						<label for="Type of house">Type of house *</label>
						<input id="Type of house" name="Type of house" class="form-control" type="text" data-validation="required" pattern="{A-za-z}">
					</div>
                    <div class="form-group">
						<label for="Text Payment Receipt">Text Payment Receipt *</label>
            <input id="Text Payment Receipt" name="Text Payment Receipt" class="form-control" type="Number" data-validation="required">
					</div>
					<button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>

				</form>

			</div>
		</div>
	</div>
	</div>
            </div>
          <%} %>
</body>
</html>

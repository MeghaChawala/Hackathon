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
        <div class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Registration Page
			</div>
			<div class="panel-body">
				<form action="registereprocess.jsp" method="POST" name="myform">
					<div class="form-group">
						<label for="aadhar">Aadhar Card No. *</label>
						<input id="aadhar" name="Aadhar" class="form-control" type="text" data-validation="required" pattern="{0-9} {12}">
						
					</div>
					<div class="form-group">
						<label for="fname">Full Name *</label>
						<input id="fname" name="fullname" class="form-control" type="text" "required">
					
					</div>
                    <div class="form-group">
						<label for="fname">Father Name *</label>
						<input id="frname" name="fathername" class="form-control" type="text" "required">
					
					</div>
                    <div class="form-group">
						<label for="dob">Password *</label>
						<input type="password" name="password" id="password" class="form-control" "required" >
				
					</div>
					<div class="form-group">
						<label for="dob">Date Of Birth *</label>
						<input type="text" name="dob" id="dob" class="form-control" "required" >
				
					</div>
					<div class="form-group">
						<label for="gender">Gender * :</label>
						<input type="radio" id="gender" name="gender"  "required" value="male">Male&nbsp;&nbsp;
                        <input type="radio" id="gender" name="gender"  "required" value="female">Female
					</div>
                    <div class="form-group">
						<label for="mobile_no">Mobile No *</label>
						<input type="number" name="mobile_no" id="mobile_no" class="form-control" "required" pattern="[0-9] {10}">
				
					</div>
                    <div class="form-group">
						<label for="Address">Address *</label>
						<textarea class="form-control" name="address" "required"></textarea>
					</div>
                    <div class="form-group">
						<label for="pincode">Pincode *</label>
                        <input type="number" name="pincode" id="pincode" class="form-control" "required" pattern="[0-9] {12}">
					</div>
					<button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>
			
				</form>

			</div>
		</div>
	</div>
	</div>
            </div>
</body>
</html>
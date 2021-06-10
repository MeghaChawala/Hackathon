<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Login</title>
</head>
<body>
	<%
		if (session.getAttribute("aadhar_no") != null)
			response.sendRedirect("home.jsp");
	%>
	<div class="container" style="margin-top: 150px">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form" action="loginprocess.jsp" method="post">
							<fieldset>
								<div class="form-group">
									<input class="form-control"
										placeholder="12 Digit Aadhar Number" name="aadhar_no"
										type="number" pattern="[0-9]{12}">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me"> Remember Me
									</label>
								</div>
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="Login">
							</fieldset>
						</form>
						<hr />
						<center>
							<h4>OR</h4>
						</center>
						<button class="btn btn-primary btn-block"
							onclick="location.href = 'register.html';" type="button">Click
							Here to Register as New User</button>
					</div>
					<%
						if (session.getAttribute("login-msg") != null) {
					%>

					<p style="color: red; text-align: center">
						<b>Login Failed... Hint : Wrong Password or Maximum Login Limit Reached.</b>
					</p>
					<%
						session.invalidate();
						}
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
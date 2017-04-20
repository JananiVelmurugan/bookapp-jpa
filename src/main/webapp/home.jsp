<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>Welcome</title>

<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/login-register.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />

<script src="assets/jquery/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>

<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap_custom_nav_bar.css" />
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="stylesheet" href="assets/css/mdb.min.css" />

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/mdb.min.js"></script>
<script src="assets/js/tether.min.js"></script>
</head>
<body>
	<nav class="navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="home.jsp"><span
					class="glyphicon glyphicon-home">&nbsp;PubHub</span></a>
			</div>
		</div>
	</nav>
	<div class="container">

		<div class="row">
			<div class="col-md-4">

				<div class="portlet-title">
					<div class="page-header">
						<h3>Login</h3>
					</div>
				</div>
				<div class="portlet-body">
					<form action="auth/login" method="POST">
						<div class="form-group">
							<label for="userName">EmailId :</label> <input type="email"
								class="form-control" name="emailId" placeholder="Enter emailId"
								autofocus="autofocus" required="required" id="emailId"
								value="jananise@gmail.com" />
						</div>

						<div class="form-group">
							<label for="password">Password :</label> <input type="password"
								class="form-control" name="password"
								placeholder="Enter Password" required="required" id="password"
								value="test@123" />
						</div>
						<div class="form-group">
							<button type="submit" name="add" class="btn btn-success"
								id="addLoginBtn">SIGN IN</button>

							<a href="auth/register" class='btn btn-primary'>SIGN UP</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
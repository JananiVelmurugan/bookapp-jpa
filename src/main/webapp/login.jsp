<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="../users/login" method="post">
		Email <input type="email" name="email" /> Password <input
			type="password" name="password" />
		<button type="submit">Login</button>
	</form>
</body>
</html>
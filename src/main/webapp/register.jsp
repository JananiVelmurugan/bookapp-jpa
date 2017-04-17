<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<form action="../users/register" method="post">
		Name <input type="text" name="name" /> Email <input type="email"
			name="email" /> Password <input type="password" name="password" />
		<button type="submit">Register</button>
	</form>
</body>
</html>
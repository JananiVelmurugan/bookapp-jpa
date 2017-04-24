<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Users</title>
</head>
<body>
	<%@ include file="../../layout/header.jsp"%>

	<div class="container-fluid">

		<div class="row">
			<div class="col-md-8">

				<b>List of Users</b>

				<table border="1" class="table table-bordered">
					<thead>
						<tr>
							<th>Sno</th>
							<th>Name</th>
							<th>Email</th>
						</tr>
					</thead>
					<c:forEach items="${USERS_LIST}" var="user">
						<tr>
							<td>${user.name}</td>
							<td>${user.email }</td>
							<td>${user.password }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>


</body>
</html>
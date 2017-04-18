<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
</head>
<body>
	List of Books
	<table border=1>
		<c:forEach items="${books}" var="book">
			<tr>
				<td><c:out value="${book.id}" /></td>
				<td><c:out value="${book.name}" /></td>
				<td><c:out value="${book.price}" /></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>
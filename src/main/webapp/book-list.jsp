<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
</head>
<body>

	<form action="../orders/save" method="post">
		List of Books
		<table border=1>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<c:forEach items="${books}" var="book">
				<tr>
					<td><input type="text" name="book_id" value="${book.id}" /></td>
					<td><input type="text" name="book_name" value="${book.name}" /></td>
					<td><input type="text" name="book_price" value="${book.price}" /></td>
					<td><input type="text" name="book_quantity" /></td>
					<td><button type="submit">add to cart</button>
				</tr>
			</c:forEach>
		</table>
	</form>
	<a href="../orders/">View Cart</a>
</body>
</html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
</head>
<body>
	<div class="wrapper">
		<div><%@ include file="../../layout/sidebar.jsp"%></div>
		<div class="main-panel">

			<div><%@ include file="../../layout/header.jsp"%></div>
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-3">
							<div class="portlet-title">
								<div class="page-header">
									<h4>List of Books</h4>
								</div>
							</div>
							<form action="../orders/save" method="post">



								<c:forEach items="${books}" var="book">
									<table>
										<tr>
											<td><input type="hidden" name="book_id"
												value="${book.id}" /></td>
										</tr>
										<tr>
											<td><input type="text" name="book_name" readonly
												value="${book.name}" /></td>
										</tr>
										<tr>
											<td><input type="text" name="book_price" readonly
												value="${book.price}" /></td>
										</tr>
										<tr>
											<td><a href="../orderBooks/addToCart">add to cart</a></td>
										</tr>
									</table>
								</c:forEach>

							</form>
							<a href="../orders/">View Cart</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
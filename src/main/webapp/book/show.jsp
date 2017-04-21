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
						<div class="col-md-12">
							<div class="portlet-title">
								<div class="page-header">
									<h4>Selected Book</h4>
								</div>
							</div>

							<form action="../orderItems/addToCart" method="post" >
								<input type="hidden" name="book_id" value="${SELECTED_BOOK.id}" />
								<table>
									<tr>
										<th width="50%">Book Name</th>
										<th width="15%">Price</th>
										<th width="15%">Quantity</th>
									</tr>
									<tr>

										<td>${SELECTED_BOOK.name}</td>

										<td>Rs. ${SELECTED_BOOK.price}</td>
										<td><input type="number" name="qty" min="1" max="5" value="1"
											required />
										<td><button type="submit" class="btn btn-primary">Add
												To Cart</button></td>
									</tr>
								</table>
							</form>


							<a href="../books/list">Back</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
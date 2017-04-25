<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<script>
	function calculateTotal() {

		//document.getElementById("total_amount").value = 100;
	}
</script>
</head>
<body onload="calculateTotal()">

	<div><%@ include file="../../layout/header.jsp"%></div>

	<div class="container-fluid">

		<div class="row">
			<div class="col-md-12">

				<b>Cart Details</b>


				<form action="../orderItems/addToCart" method="post">
					<input type="hidden" name="book_id" value="${SELECTED_BOOK.id}" />
					<table class="table table-bordered" border="1">
						<tr>
							<th>Book Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<!-- <th>Total Amount</th> -->
						</tr>
						<tr>

							<td>${SELECTED_BOOK.name}</td>

							<td>Rs. ${SELECTED_BOOK.price}</td>
							<td><input type="number" name="qty" min="1" max="5"
								value="1" required /></td>
							<%-- 	<td><input type="number" name="total_amount" min="1" max="5" 
							required readonly onkeyup="alert(${SELECTED_BOOK.price})" /> </td> --%>

							<c:if test="${!empty LOGGED_IN_USER}">
								<td><button type="submit" class="btn btn-primary">Add
										To Cart</button></td>
							</c:if>
							<c:if test="${empty LOGGED_IN_USER}">
								<td><button type="submit" class="btn btn-primary" disabled>Add
										To Cart</button>
										Note: Login to add items to Cart</td>
							</c:if>
							
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
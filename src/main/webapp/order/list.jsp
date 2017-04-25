<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
</style>
</head>
<body>
	<%@ include file="../../layout/header.jsp"%>
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<b>All Orders</b>
					<table border="1" class="table table-bordered">
						<thead>
							<tr>
								<th width="10%">Order Id</th>
								<th> Order Items </th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ORDERS_LIST}" var="order">
								<tr>
									<td>${order.id}</td>
									<td>
									<ul>
									<c:forEach items="${order.orderItems}" var="item">
									<li>${item.book.name} (Quantity - ${item.quantity} ) </li>
									</c:forEach>
									</ul>
									</td>
									<td>${order.status}</td>
									<td><a href="../orders/cancelOrder?id=${order.id}">Cancel
											Order </a>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
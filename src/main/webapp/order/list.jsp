<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List All Orders</title>
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
								<th> Items </th>
								<th>Status</th>
								<th>Ordered Date </th>
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
									<td> ${order.orderedDate } </td>
									<c:if test="${order.status == 'ORDERED'}">
										<td><a
											href="../orders/updateStatus?id=${order.id}&status=CANCELLED" class="btn btn-danger btn-sm">Cancel
												Order </a></td>
									</c:if>
									<c:if test="${order.status !='CANCELLED' && order.status != 'DELIVERED'}">
										<td><a
											href="../orders/updateStatus?id=${order.id}&status=DELIVERED" class="btn btn-success btn-sm" >Deliver
												Order </a></td>
									</c:if>
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
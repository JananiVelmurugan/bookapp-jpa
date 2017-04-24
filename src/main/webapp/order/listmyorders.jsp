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
					<b>My Orders</b>
					<table border="1" class="table table-bordered">
						<thead>
							<tr>
								<th width="50%">Order Id</th>
								<th> Amount </th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${MY_ORDERS}" var="order">
								<tr>
									<td>${order.id}</td>
									<td>Rs. ${order.totalPrice } </td>
									<td>${order.status}</td>									
									<c:if test="${order.status == 'ORDERED'}">
										<td><a
											href="../orders/updateStatus?id=${order.id}&status=CANCELLED">Cancel
												Order </a></td>
									</c:if>
									<c:if test="${order.status !='CANCELLED' && order.status != 'DELIVERED'}">
										<td><a
											href="../orders/updateStatus?id=${order.id}&status=DELIVERED">Deliver
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
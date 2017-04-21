<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
.book-container-bg {
	background: #fff;
	padding: 10px;
	margin: 10px
}
</style>
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
									<h4>My Orders</h4>
								</div>
							</div>

							<table border="1">
								<thead>
									<tr>
										<th width="50%">Order Id</th>										
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<td>${order.id}</td>											
											<td>${order.status}</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
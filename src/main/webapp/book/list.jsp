<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
  .book-container-bg{
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
						<div class="col-md-8">
							<div class="portlet-title">
								<div class="page-header">
									<h4>List of Books</h4>
								</div>
							</div>

							<c:forEach items="${books}" var="book">
								<div class="row book-container-bg">
								    <div class="col-lg-4 col-md-4 col-xs-12">
								    <img class="card-img-left" src="../images/java.jpg" width="100" alt="Card image cap">
								    </div>
								    
								     <div class="col-lg-8 col-md-8 col-xs-12">
								     <p class="card-text">${book.name} - Rs.${book.price }</p>
								     <a href="../books/${book.id}" class="btn btn-success btn-sm">View</a>
								     </div>
									</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
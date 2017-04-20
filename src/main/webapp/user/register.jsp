<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Create New Account</title>

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
									<h4>Create a New Account</h4>
								</div>
							</div>
							<div class="portlet-body">
								<form id="addUserFrm" class="form-horizontal" role="form"
									method="POST" action="../auth/register">

									<div class="form-group">
										<label for="name">NAME:</label><input type="text"
											class="form-control" name="name" required="required"
											id="name" />
									</div>

									<div class="form-group">
										<label for="emailId">E-MAILID:</label><input type="email"
											class="form-control" name="email" required="required"
											id="email" />
									</div>
									<div class="form-group">
										<label for="password">PASSWORD:</label><input type="password"
											class="form-control" name="password" required="required"
											id="password" />
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-success" id="addUserBtn">Create
											Account</button>
									</div>
									<hr />
									<div class="form-group">
										Already have an account? &nbsp;&nbsp; <a href="index.html"
											class='btn btn-primary'> SIGN IN</a>
									</div>
								</form>

							</div>


						</div>

					</div>
				</div>

			</div>

		</div>
	</div>

</body>

</html>
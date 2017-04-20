

<nav class="navbar navbar-default navbar-fixed">
	<div class="container-fluid">
		<div class="navbar-header">

			<a class="navbar-brand" href="home.jsp"><span
				class="glyphicon glyphicon-home">&nbsp;PubHub</span></a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-left">


			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Admin <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="../users/list">All Users</a></li>
						<li><a href="../roles/list">All Roles</a></li>
						<li><a href="../courses/listCategory">All Courses</a></li>

						<li><a href="../categories/list">All Categories</a></li>
						<li><a href="../coursecategories/list">All
								CourseCategories</a></li>

						<li><a href="../coursemodules/list">All CourseModules</a></li>
						<li><a href="../videos/list">All Videos</a></li>

					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
						<p>
							My Profile <b class="caret"></b>
						</p>
				</a>
					<ul class="dropdown-menu">
						<li><a href="../users/MyProfile">My Profile </a></li>


						<li><a href="../users/changepassword">Change Password ! </a></li>

					</ul></li>
				<li><a href="../auth/Logout">
						<p>Log out</p>
				</a></li>
				<li class="separator hidden-lg hidden-md"></li>
			</ul>
		</div>
	</div>
</nav>
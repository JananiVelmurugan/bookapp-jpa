<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="../assets/css/login-register.css" rel="stylesheet" />

<link rel="stylesheet" href="../assets/css/style.css" />
<link rel="stylesheet" href="../assets/css/mdb.min.css" />

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/tether.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/mdb.min.js"></script>


 <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">Pubhub 200</a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="../">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../books">Books</a>
          </li>
          <c:if  test="${LOGGED_IN_USER!=null}">
          <li class="nav-item">
            <a class="nav-link" href="../orders/myorders">My Orders</a>
          </li>
          </c:if>
          <c:if  test="${LOGGED_IN_USER!=null}">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">            
            <a class="dropdown-item"  href="../users">All Users</a>
			<a  class="dropdown-item" href="../orders">All Orders</a>
            </div>
          </li>
          </c:if>
        </ul>
        
         <ul class="navbar-nav mr-auto pull-right">                  
         <c:if  test="${!empty LOGGED_IN_USER}">
         <li class="nav-item"><a class="nav-link"> Welcome ${LOGGED_IN_USER.name} </a></li>
          <li class="nav-item">
            <a class="nav-link" href="../auth/logout">Logout</a>
          </li>
          </c:if>
          
          
        </ul>
         <c:if  test="${empty LOGGED_IN_USER}">
       	  	 <a  href="../auth/login" class="btn btn-primary">Login</a>
        	 <a  href="../auth/register" class="btn btn-success">Register</a>
         </c:if>
        <!--  <form class="form-inline mt-2 mt-md-0" action="auth/login" method="POST">
          <input class="form-control mr-sm-2" type="email" name="emailId" placeholder="Enter the Email" required  autofocus >
          <input class="form-control mr-sm-2" type="password" name="password" placeholder="Enter the Password" required >
          <button  type="submit" class="btn btn-success" >Login</button>
          <a href="auth/register" class='btn btn-primary'>SIGN UP</a>
        </form> -->
        <!-- <form action="auth/login" method="POST" class="form-vertical">
						 <input type="email"
								class="form-control" name="emailId" placeholder="Enter emailId"
								autofocus="autofocus" required="required" id="emailId" />
						<input type="password"
								class="form-control" name="password"
								placeholder="Enter Password" required="required" id="password"
								value="test@123" />
						
							<button type="submit" name="add" class="btn btn-success"
								id="addLoginBtn">SIGN IN</button>

							<a href="auth/register" class='btn btn-primary'>SIGN UP</a>
						
					</form>
      </div> -->
      
      
    </nav>
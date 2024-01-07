<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.back-img{
background: url("images/th (9).jfif");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>


<%@include file="all_component/allcss.jsp"%>
</head>


<body>
	<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-3">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>


					</div>
		
					
					
				

				<%
					String invalidMsg = (String) session.getAttribute("login-failed");

					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>

					<%
					session.removeAttribute("login-failed");
					  }
					%>
					
					
					<%
					String invalidMsg1 = (String) session.getAttribute("Login-error");

					if (invalidMsg1 != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg1%></div>

					<%
					session.removeAttribute("Login-error");
					  }
					%>
					
					
					<%
					String invalidMsg2 = (String) session.getAttribute("logoutmsg");

					if (invalidMsg2 != null) {
					%>
					<div class="alert alert-success" role="alert"><%=invalidMsg2%></div>

					<%
					session.removeAttribute("logoutmsg");
					  }
					%>
					
					
					
					

					
					
					<div class="card-body">
						<form action="loginServlet" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>



							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>
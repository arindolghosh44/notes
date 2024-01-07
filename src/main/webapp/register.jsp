<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.back-img{
background: url("images/books-1204029_1280.jpg");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>
<meta charset="ISO-8859-1">
<title>Register page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-3">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus" aria-hidden="true"></i>
						<h4>Registration</h4>

					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>Login<a href="login.jsp">Click Here</a></div>

					<%
					session.removeAttribute("reg-success");

					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%= FailedMsg %></div>

					<%
					session.removeAttribute("failed-msg");
					}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>



							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>
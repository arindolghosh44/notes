<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.back-img{
background: url("images/5aebb8dc-88b2-4c52-9062-bdc3564393e9c835993bd05329aec6_34800862940_f7f3a7e596_k.jpg");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>

<meta charset="ISO-8859-1">
<title>index page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	
		
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white">
				<i class="fa fa-book" aria-hidden="true"></i>E Notes-Save your Notes
			</h1>
			<a href="login.jsp" class="btn btn-light"><i
				class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a> <a
				href="register.jsp" class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.User.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) 
{
	
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","please Login..");
}
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.back-img{
background: url("images/18963844186_914b489d31_h-1024x683.jpg");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@include file="all_component/allcss.jsp"%>
</head>


<body>


<div class="container-fluid back-img">
<%@include file="all_component/navbar.jsp"%>
<div class="card mt-3">
<div class="card-body text-center">

<img alt="" src="images/book9.jpg" class="img-fluid mx-auto" style="width:370px;">
<h1>Start taking your Notes</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>


</div>




</div>



</div>

<%@include file="all_component/footer.jsp"%>
</body>
</html>
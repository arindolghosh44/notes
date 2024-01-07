<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.User.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) 
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
background: url("images/admont-abbey-library-admont-austria-LIBRARY0319-2aa89cccb89d4f44b71181e64b54fbfb.jpg");
height:100vh;
width:100%;
background-repeat:no-repeat;
background-size: cover;

}

</style>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid back-img">
		<%@include file="all_component/navbar.jsp"%>


		<h1 class="text-center">Add Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

<div class="text-center text-danger"><label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required"></div>
							
						</div>


						<div class="form-group text-center text-danger">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"></textarea>

						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>

				</div>

			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>
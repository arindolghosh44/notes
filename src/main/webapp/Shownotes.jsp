<%@page import="com.User.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {

	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "please Login..");
}
%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Show Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	
		<%
					String regMsg = (String) session.getAttribute("updateMsg");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%></div>

					<%
					session.removeAttribute("updateMsg");

					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("msg-error");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%= FailedMsg %></div>

					<%
					session.removeAttribute("msg-error");
					}
					%>
	
	
	
	
	
	
	
	
	
	
	
	<div class="container">
		<h2 class="text-center">All Notes:</h2>

		<div class="row">
			<div class="col-md-12">

				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>
				<div class="card mt-3">
					<img alt="" src="images/book8.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">
					<div class="card-body p-4">
						<h5 class="card-title "><%=po.getTitle() %></h5>
						<p><%= po.getContent() %>.</p>
						<p>
							<b class="text-success">Published By:<%= user3.getName() %> </b></br> <b
								class="text-primary"></b>
						</p>
						<b class="text-success">Published Date:<%=po.getPdate() %> </b></br> <b
							class="text-success"></b>

						<p></p>
						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
							
							 <a href="edit.jsp?note_id=<%=po.getId() %>"
								class="btn btn-primary">Edit</a>
						</div>

					</div>
				</div>
				<%
				}
				}
				%>

			</div>
		</div>

	</div>

</body>
</html>
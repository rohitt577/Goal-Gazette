
<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Campus Diaries</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row"></div>
		<div class="col-12">
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note note : list) {
			%>
			<div class="card mt-3" >
				<img class="card-img-top p-4 mx-auto" src="img/diary-book.png" style="max-width:100px;" alt="Card image cap">
				<div class="card-body px-5">
					<h5 class="card-title"><%= note.getTitle() %></h5>
					<p class="card-text"><%= note.getContent() %></p>
					<p class="text-primary"><b><%= note.getAddedDate() %></b></p>
					<div class = "container text-center mt-2" >
					<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
					<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
					</div>
					
				</div>
			</div>
			<%
			}
			s.close();
			%>


		</div>


	</div>


</body>
</html>
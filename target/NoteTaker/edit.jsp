<%@page import="com.entities.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.StringWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
    <div class="container">

        <br>
        <h1>Edit your note : </h1>
        <br>
        <%
        
        String noteIdParam = request.getParameter("note_id");
        if (noteIdParam != null && !noteIdParam.isEmpty()) {
            int noteId = Integer.parseInt(noteIdParam.trim());
            Session s = FactoryProvider.getFactory().openSession();
            try {
                Note note = (Note) s.get(Note.class, noteId);
                %>
                
                <form action="UpdateServlet" method="post">
                <input value = "<%= note.getId() %>" name="noteId" type = "hidden"/>
                    <div class="form-group">
                        <label for="title">Note title</label> <input required type="text"
                            class="form-control" id="title" aria-describedby="emailHelp"
                            placeholder="Enter here" name="title" value="<%=note.getTitle() %>" />
                    </div>
                    <div class="form-group">
                        <label for="content">Note content</label>
                        <textarea required id="content" placeholder="Enter your content here"
                            class="form-control" style="height: 300px;" name="content"><%= note.getContent() %></textarea>
                    </div>
        
                    <div class="container text-center">
                        <button type="submit" class="btn btn-success">Save your note</button>
                    </div>
                </form>
            <% 
            } catch (Exception e) {
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("An error occurred: " + e.getMessage() + "<br>");
                out.println("Stack trace:<br>");
                out.println(sw.toString());
            } finally {
                s.close();
            }
        } else {
            out.println("Invalid note ID format.");
        }
        %>
        
    </div>
</body>
</html>

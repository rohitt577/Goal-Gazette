package com.servlets;

import java.io.IOException;
import java.util.Date;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			
			Note note = (Note)s.get(Note.class, noteId);
			s.delete(note);
			tx.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");
			
		}
		catch (Exception e) {
			
		}
	}

	
	

}

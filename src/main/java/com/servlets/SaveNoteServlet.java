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

public class SaveNoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Title and content fetch
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            Note note = new Note(title, content, new Date());

//            System.out.println(note.getId() + " : " + note.getTitle());
            
            //hibernate:save()
            Session s= FactoryProvider.getFactory().openSession();
            Transaction tx = s.beginTransaction();
            s.save(note);
            tx.commit();
            
            s.close();
            response.setContentType("text/html");
            
            PrintWriter out = response.getWriter();
            out.println("<h1 style ='text-align:center'>Note is added successfully</h1>");
            out.println("<h1 style ='text-align:center'><a href='all_notes.jsp'>View all notes</a></h1>");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

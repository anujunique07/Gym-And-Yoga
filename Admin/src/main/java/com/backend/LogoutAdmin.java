package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class LogoutAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Invalidate the current session
        HttpSession session = request.getSession(false); // Fetch session if it exists, don't create a new one
        if (session != null) {
            session.invalidate(); // Invalidate the session
        }
        
        // Redirect to the login page with a logout message
        response.sendRedirect("Login.jsp?msg=LoggedOut");
    }
}

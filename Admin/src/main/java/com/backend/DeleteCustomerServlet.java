package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class DeleteCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the email parameter from the request
        String email = request.getParameter("email");

        try {
            // Establish database connection
            Connection conn = ConnectionProvider.CreateCon();

            // Prepare the SQL DELETE query
            String query = "DELETE FROM users WHERE email = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, email);

            // Execute the query
            int rowsAffected = pstmt.executeUpdate();

            // Redirect based on the operation result
            if (rowsAffected > 0) {
                response.sendRedirect("CustomerDetails.jsp?msg=success");
            } else {
                response.sendRedirect("CustomerDetails.jsp?msg=failure");
            }

            // Close the connection
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to the admin panel with an error message
            response.sendRedirect("AdminPanel.jsp?msg=error");
        }
    }
}

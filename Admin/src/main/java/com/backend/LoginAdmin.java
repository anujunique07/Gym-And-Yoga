package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/gym_database";
        String dbUser = "root";
        String dbPassword = "anujit.mysql"; // Replace with your database password

        // Retrieve login form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validation
        if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
            response.sendRedirect("Login.jsp?msg=Empty");
            return;
        }

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Query to validate user credentials
            String sql = "SELECT * FROM admin WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // User authenticated successfully
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email);
                response.sendRedirect("Home.jsp");
            } else {
                // Invalid credentials
                response.sendRedirect("Login.jsp?msg=InvalidCredentials");
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (Exception e) {
            response.getWriter().println("<html><body><h3>Error!</h3><p>" + e.getMessage() + "</p></body></html>");
            e.printStackTrace();
        }
    }
}

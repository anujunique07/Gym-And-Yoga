package com.backend;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AdminRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/gym_database";
        String dbUser = "root";
        String dbPassword = "anujit.mysql"; // Replace with your database password

        // Retrieve form parameters
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm");

        // Validate form inputs
        if (username == null || username.isEmpty() ||
            email == null || email.isEmpty() ||
            password == null || password.isEmpty() ||
            confirmPassword == null || confirmPassword.isEmpty()) {
            response.sendRedirect("Register.jsp?msg=EmptyFields");
            return;
        }

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("register.jsp?msg=PasswordMismatch");
            return;
        }

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Check if the user already exists
            String checkUserSQL = "SELECT * FROM client WHERE email = ?";
            PreparedStatement checkStatement = connection.prepareStatement(checkUserSQL);
            checkStatement.setString(1, email);

            ResultSet resultSet = checkStatement.executeQuery();
            if (resultSet.next()) {
                // User already exists
                response.sendRedirect("Register.jsp?msg=UserExists");
            } else {
                // Insert new user into the database
                String insertSQL = "INSERT INTO admin (username, email, password) VALUES (?, ?, ?)";
                PreparedStatement insertStatement = connection.prepareStatement(insertSQL);
                insertStatement.setString(1, username);
                insertStatement.setString(2, email);
                insertStatement.setString(3, password);

                int rowsInserted = insertStatement.executeUpdate();
                if (rowsInserted > 0) {
                    response.sendRedirect("Register.jsp");
                } else {
                    response.sendRedirect("Register.jsp?msg=Error");
                }

                insertStatement.close();
            }

            resultSet.close();
            checkStatement.close();
            connection.close();
        } catch (Exception e) {
            response.getWriter().println("<html><body><h3>Error!</h3><p>" + e.getMessage() + "</p></body></html>");
            e.printStackTrace();
        }
    }
}

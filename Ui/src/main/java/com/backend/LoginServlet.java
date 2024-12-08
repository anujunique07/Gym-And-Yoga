package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
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

        // Validate input
        if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
            response.sendRedirect("Login.jsp?msg=Empty");
            return;
        }

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Query to validate user credentials
            String sql = "SELECT * FROM client WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // User authenticated successfully

                // Retrieve user details from the result set
                String firstName = resultSet.getString("first_name");
                String lastName = resultSet.getString("last_name");

                // Create a session for the logged-in user
                HttpSession session = request.getSession();
                session.setAttribute("firstName", firstName); // Store first name in session
                session.setAttribute("lastName", lastName);   // Store last name in session
                session.setAttribute("email", email);        // Store email in session
                session.setMaxInactiveInterval(30 * 60);     // Set session timeout to 30 minutes
                
                
                

//                // Create cookies
//                Cookie firstNameCookie = new Cookie("firstName", firstName);
//                Cookie lastNameCookie = new Cookie("lastName", lastName);
//                Cookie emailCookie = new Cookie("email", email);
//
//                // Set the cookies' lifespan (e.g., 1 day)
//                firstNameCookie.setMaxAge(24 * 60 * 60); // 1 day in seconds
//                lastNameCookie.setMaxAge(24 * 60 * 60);  // 1 day in seconds
//                emailCookie.setMaxAge(24 * 60 * 60);     // 1 day in seconds
//
//                // Add cookies to the response
//                response.addCookie(firstNameCookie);
//                response.addCookie(lastNameCookie);
//                response.addCookie(emailCookie);

                
                
                
                
                // Redirect to the home page
                response.sendRedirect("Home.jsp");
            } else {
                // Invalid credentials
                response.sendRedirect("Login.jsp?msg=InvalidCredentials");
            }

            // Close resources
            resultSet.close();
            statement.close();
            connection.close();

        } catch (Exception e) {
            // Handle exceptions
            response.getWriter().println("<html><body><h3>Error!</h3><p>" + e.getMessage() + "</p></body></html>");
            e.printStackTrace();
        }
    }
}

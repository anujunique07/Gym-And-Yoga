package com.backend;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Pattern;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/gym_database";
        String dbUser = "root";
        String dbPassword = "anujit.mysql"; // Replace with your database password

        // Retrieve form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validation
        StringBuilder errorMessage = new StringBuilder();
        boolean isValid = true;
        if (firstName == null || firstName.isEmpty() ||  lastName == null || lastName.isEmpty()  ||  phoneNumber == null || phoneNumber.isEmpty() || email == null || email.isEmpty() || password == null || password.isEmpty() || confirmPassword == null || confirmPassword.isEmpty()) {
        	response.sendRedirect("Register.jsp?msg=Empty");
        	return;
        }
        

        if (firstName == null || firstName.isEmpty()) {
        	response.sendRedirect("Register.jsp?msg=NotValidFirstname");
            isValid = false;
        }

        if (lastName == null || lastName.isEmpty()) {
        	response.sendRedirect("Register.jsp?msg=NotValidLastname");
            return;
        }

        if (phoneNumber == null || !phoneNumber.matches("\\d{10}")) {
        	response.sendRedirect("Register.jsp?msg=NotValidPhnno");
        	 return;
        }

        if (email == null || !isValidEmail(email)) {
        	response.sendRedirect("Register.jsp?msg=NotValidEmail");
        	 return;
        }

        if (password == null || password.isEmpty()) {
        	response.sendRedirect("Register.jsp?msg=NotValidPass");
        	 return;
        }

        if (confirmPassword == null || !confirmPassword.equals(password)) {
        	response.sendRedirect("Register.jsp?msg=NotValidConfPass");
        	 return;
        }
        
        

       
            try {
                // Establish database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                // Insert user data into the database
                String sql = "INSERT INTO client (first_name, last_name, phone_number, email, password) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, firstName);
                statement.setString(2, lastName);
                statement.setString(3, phoneNumber);
                statement.setString(4, email);
                statement.setString(5, password);

                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                	response.sendRedirect("Login.jsp");
                   
                } else {
                	response.sendRedirect("Register.jsp?msg=Failed!");
                }

                statement.close();
                connection.close();

            } catch (Exception e) {
                response.getWriter().println("<html><body><h3>Error!</h3><p>" + e.getMessage() + "</p></body></html>");
                e.printStackTrace();
            }
        } 
   
        
    

    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        Pattern pattern = Pattern.compile(emailRegex);
        return pattern.matcher(email).matches();
    }
}

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


public class TrainerUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("emailAddress");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String aadhar_no = request.getParameter("aadhar_no");
        String experience = request.getParameter("experience");
        String age = request.getParameter("age");
        String certified_trainer = request.getParameter("certified_trainer");
        int i = 0;

        try (Connection conn = ConnectionProvider.CreateCon()){

            // SQL Query to insert trainer data
            String sql = "INSERT INTO trainers (username, email, phone, gender, aadhar_no, experience, age, certified_trainer) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, gender);
            statement.setString(5, aadhar_no);
            statement.setString(6, experience);
            statement.setString(7, age);
            statement.setString(8, certified_trainer);

            // Execute update
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().println("Trainer information inserted successfully!");
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}


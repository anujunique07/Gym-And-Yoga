package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class editDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String experience = request.getParameter("experience");
        String age = request.getParameter("age");
        String certifiedTrainer = request.getParameter("certifiedTrainer");

        try (Connection conn = ConnectionProvider.CreateCon()) {
            String sql = "UPDATE trainers SET username = ?, email = ?, phone = ?, experience = ?, age = ?, certified_trainer = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, experience);
            stmt.setString(5, age);
            stmt.setString(6, certifiedTrainer);
            stmt.setInt(7, id);
            stmt.executeUpdate();

            response.sendRedirect("TrainerDetailsUser");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}


package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserFormServlet extends HttpServlet {
	
	
	
    // Method to check for duplicate email or phone number
    private boolean checkIfDuplicate(String email, String phone) {
        try (Connection conn = ConnectionProvider.CreateCon()) {
            String checkSql = "SELECT COUNT(*) FROM users WHERE email = ? OR phone = ?";
            try (PreparedStatement pstm = conn.prepareStatement(checkSql)) {
                pstm.setString(1, email);
                pstm.setString(2, phone);
                ResultSet rs = pstm.executeQuery();
                if (rs.next()) {
                    return rs.getInt(1) > 0; // If there's at least one row, return true (duplicate exists)
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to insert new user record
    private boolean insertNewUser(String name, String email, String phone, String address, String gym, String training, String gender) {
        try (Connection conn = ConnectionProvider.CreateCon()) {
            String sql = "INSERT INTO users (email, name, phone, address, gym, training, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstm = conn.prepareStatement(sql)) {
                pstm.setString(1, email);
                pstm.setString(2, name);
                pstm.setString(3, phone);
                pstm.setString(4, address);
                pstm.setString(5, gym);
                pstm.setString(6, training);
                pstm.setString(7, gender);
                int i = pstm.executeUpdate();
                return i > 0; // Return true if insert was successful
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false);
    	if (session == null || session.getAttribute("email") == null) {
            // Redirect to login page if no user session exists
            response.sendRedirect("Login.jsp");
            return;
        }
    	
        String email = (String) session.getAttribute("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String gym = request.getParameter("gym");
        String training = request.getParameter("training");
        String gender = request.getParameter("gender");

        // Check if any required fields are empty
        if (email.isEmpty() || name.isEmpty() || phone.isEmpty() || address.isEmpty() || gym.isEmpty() || training.isEmpty() || gender.isEmpty()) {
            response.sendRedirect("ApplyNow.jsp?msg=invalid");
            return;
        }

        // Check if the email or phone is a duplicate
        boolean isDuplicate = checkIfDuplicate(email, phone);
        if (isDuplicate) {
            response.sendRedirect("ApplyNow.jsp?msg=duplicate");
            return;
        }

        // Attempt to insert the new user record
        boolean success = insertNewUser(name, email, phone, address, gym, training, gender);
        if (success) {
            response.sendRedirect("ApplyNow.jsp?msg=valid");
        } else {
            response.sendRedirect("ApplyNow.jsp?msg=invalid");
        }
    }
}

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


public class UserFormServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String gym = request.getParameter("gym");
        String training = request.getParameter("training");
        String gender = request.getParameter("gender");
        int i = 0;
  
        try ( Connection conn = ConnectionProvider.CreateCon()) {
            String sql = "INSERT INTO users (email, name, phone, address, gym, training, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstm = conn.prepareStatement(sql)) {
                pstm.setString(1, email);
                pstm.setString(2, name);
                pstm.setString(3, phone);
                pstm.setString(4, address);
                pstm.setString(5, gym);
                pstm.setString(6, training);
                pstm.setString(7, gender);
                i= pstm.executeUpdate();
                if(i!=0){
                	response.sendRedirect("ApplyNow.jsp?msg=valid");
                }
                else {
                	response.sendRedirect("ApplyNow.jsp?msg=invalid");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

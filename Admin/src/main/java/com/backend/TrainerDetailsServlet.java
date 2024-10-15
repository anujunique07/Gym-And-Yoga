package com.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.model.Trainer;


public class TrainerDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Trainer> trainers = new ArrayList<>();
        
        try (Connection conn = ConnectionProvider.CreateCon()) {
            // Query to get trainers' data
            String sql = "SELECT * FROM trainers";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                trainers.add(new Trainer(
                    rs.getInt("id"),  // Fetch the id from the database
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("phone"),
                    rs.getString("gender"),
                    rs.getString("aadhar_no"),
                    rs.getString("experience"),
                    rs.getString("age"),
                    rs.getString("certified_trainer")
                ));
            }

            // Pass the trainers list to the JSP page
            request.setAttribute("trainers", trainers);
            request.getRequestDispatcher("TrainerDetails.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}

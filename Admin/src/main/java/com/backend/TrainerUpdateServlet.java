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
                response.getWriter().println(""
                    + "<!-- component -->"
                    + "<script src=\"https://cdn.tailwindcss.com\"></script>"
                    + "<div class=\"flex min-h-screen items-center justify-center bg-gray-100\">"
                    + "  <div class=\"rounded-lg bg-gray-50 px-16 py-14\">"
                    + "    <div class=\"flex justify-center\">"
                    + "      <div class=\"rounded-full bg-green-200 p-6\">"
                    + "        <div class=\"flex h-16 w-16 items-center justify-center rounded-full bg-green-500 p-4\">"
                    + "          <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" class=\"h-8 w-8 text-white\">"
                    + "            <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M4.5 12.75l6 6 9-13.5\" />"
                    + "          </svg>"
                    + "        </div>"
                    + "      </div>"
                    + "    </div>"
                    + "    <h3 class=\"my-4 text-center text-3xl font-semibold text-gray-700\">Congratulations!!!</h3>"
                    + "    <p class=\"w-[230px] text-center font-normal text-gray-600\">You are successfully register</p>"
                    + "    <a href=\"TrainerDetailsServlet\" class=\"mx-auto mt-10 block rounded-xl border-4 border-transparent bg-orange-400 px-6 py-3 text-center text-base font-medium text-orange-100 outline-8 hover:outline hover:duration-300\">Check</a>"
                    + "  </div>"
                    + "</div>"
                );
            }
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Users</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="src/output.css">
</head>

 <!-- 1st Part -->
  		 <jsp:include page="Header.jsp"></jsp:include>
  		 
<body class="bg-gray-100">
    <div class="container mx-auto p-6">
        <h1 class="text-3xl font-extrabold text-gray-800 mb-6">Registered Users</h1>
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-800 text-white">
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">First Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Last Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Phone Number</th>
                        <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Email</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <%
                        try {
                            String jdbcURL = "jdbc:mysql://localhost:3306/gym_database";
                            String dbUser = "root";
                            String dbPassword = "anujit.mysql";

                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                            String sql = "SELECT first_name, last_name, phone_number, email FROM client";
                            Statement statement = connection.createStatement();
                            ResultSet resultSet = statement.executeQuery(sql);

                            while (resultSet.next()) {
                                String firstName = resultSet.getString("first_name");
                                String lastName = resultSet.getString("last_name");
                                String phoneNumber = resultSet.getString("phone_number");
                                String email = resultSet.getString("email");
                    %>
                    <tr class="hover:bg-gray-100">
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-700"><%= firstName %></td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-700"><%= lastName %></td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-700"><%= phoneNumber %></td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-700"><%= email %></td>
                    </tr>
                    <%
                            }

                            resultSet.close();
                            statement.close();
                            connection.close();

                        } catch (Exception e) {
                            out.println("<tr><td colspan='4' class='text-red-500 text-center'>Error fetching user details: " + e.getMessage() + "</td></tr>");
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

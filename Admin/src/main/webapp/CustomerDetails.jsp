<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.backend.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Force & Fitness</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Header -->
    <jsp:include page="Header.jsp"></jsp:include>

    <!-- Admin Panel -->
    <div class="container mx-auto p-6">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Admin Panel</h1>

        <!-- Table Container -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <div class="overflow-x-auto">
                <table class="min-w-full table-auto border-collapse border-gray-200">
                    <thead class="bg-gray-800 text-white">
                        <tr>
                            <th class="px-6 py-3 text-left font-semibold">Email</th>
                            <th class="px-6 py-3 text-left font-semibold">Name</th>
                            <th class="px-6 py-3 text-left font-semibold">Phone</th>
                            <th class="px-6 py-3 text-left font-semibold">Address</th>
                            <th class="px-6 py-3 text-left font-semibold">Gym</th>
                            <th class="px-6 py-3 text-left font-semibold">Training</th>
                            <th class="px-6 py-3 text-left font-semibold">Gender</th>
                            <th class="px-6 py-3 text-left font-semibold">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                Connection conn = ConnectionProvider.CreateCon();
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM users");
                                while (rs.next()) {
                                    String email = rs.getString("email");
                        %>
                        <tr class="<%= (rs.getRow() % 2 == 0) ? "bg-gray-100" : "bg-white" %> hover:bg-gray-200 transition duration-150">
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("email") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("name") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("phone") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("address") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("gym") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("training") %></td>
                            <td class="border px-6 py-4 text-gray-800"><%= rs.getString("gender") %></td>
                            <td class="border px-6 py-4 text-center">
                                <!-- Delete Button -->
                                <form action="DeleteCustomerServlet" method="POST" onsubmit="return confirm('Are you sure you want to delete this user?');">
                                    <input type="hidden" name="email" value="<%= email %>">
                                    <button type="submit" class="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700 focus:ring-2 focus:ring-red-400 focus:outline-none">
                                        Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <%
                                }
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>

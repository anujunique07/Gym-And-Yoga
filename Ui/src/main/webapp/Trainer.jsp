<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Model.Trainer" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trainer Details</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Header -->
    <jsp:include page="Header.jsp"></jsp:include>

    <!-- Trainer Section -->
    <section class="text-white body-font py-16 px-5">
         <div class="container px-5 py-16 mx-auto">
            <div class="text-center w-full mb-12">
                <h1 class="text-4xl font-bold title-font text-gray-900 mb-4">Meet Our Trainers</h1>
                <p class="lg:w-2/3 mx-auto text-base leading-relaxed text-gray-500">
                    Our expert trainers are dedicated to helping you achieve your fitness goals with personalized plans and expert guidance.
                </p>
            </div>
        <div class="flex flex-wrap justify-center -m-4">
            <%
                List<Trainer> trainers = (List<Trainer>) request.getAttribute("trainers");
                if (trainers != null && !trainers.isEmpty()) {
                    for (Trainer trainer : trainers) {
            %>
            <div class="p-4 md:w-1/3 sm:w-1/2 w-full">
                <div class="h-full flex flex-col items-center text-center bg-white shadow-xl rounded-lg overflow-hidden transform transition-transform duration-300 hover:scale-105 hover:shadow-2xl">
                    <div class="relative">
                        <img alt="trainer" class="rounded-lg w-32 h-32 mt-6 mb-4 object-cover" src="Assets/img/Admin.webp">
                        <div class="absolute inset-0 bg-gradient-to-t from-black via-transparent to-transparent opacity-30"></div>
                    </div>
                    <div class="px-6 pb-6 z-10">
                        <h2 class="text-xl font-medium text-gray-900 mb-2"><%= trainer.getUsername() %></h2>
                        <h3 class="text-gray-600 text-sm mb-3">Personal Trainer</h3>
                        <p class="text-gray-700 text-sm mb-2">Experience: <%= trainer.getExperience() %> years</p>
                        <p class="text-gray-700 text-sm mb-2">Certified: <%= "GYM".equalsIgnoreCase(trainer.getCertifiedTrainer()) ? "GYM" : "YOGA" %></p>
                        <p class="text-gray-700 text-sm mb-2">Email: <%= trainer.getEmail() %></p>
                   <%--      <p class="text-gray-700 text-sm mb-2">Phone: <%= trainer.getPhone() %></p> --%>
                        <p class="text-gray-700 text-sm">Age: <%= trainer.getAge() %></p>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <div class="p-4 w-full">
                <div class="h-full flex items-center justify-center text-center">
                    <p class="text-gray-500">No trainers available.</p>
                </div>
            </div>
            <% } %>
        </div>
    </section>

    <!-- Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>

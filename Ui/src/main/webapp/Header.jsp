<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    HttpSession session1 = request.getSession(false);
    String firstName = (session != null) ? (String) session.getAttribute("firstName") : null;
    String lastName = (session != null) ? (String) session.getAttribute("lastName") : null;
    String email = (session != null) ? (String) session.getAttribute("email") : null;
    boolean isLoggedIn = (firstName != null && lastName != null && email != null);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TForce Fitness</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .overlay {
            background-color: rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>

<header class="text-white bg-black body-font">
    <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
        <a href="Home.jsp" class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
            <span class="ml-3 text-white text-xl">TForce Fitness</span>
        </a>
        <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
            <a href="Home.jsp" class="mr-5 hover:text-gray-200">Home</a>
            <a href="Gym.jsp" class="mr-5 hover:text-gray-200">Gym</a>
            <a href="Yoga.jsp" class="mr-5 hover:text-gray-200">Yoga</a>
            <a href="Membership.jsp" class="mr-5 hover:text-gray-200">Membership</a>
            <a href="TrainerDetailsUser" class="mr-5 hover:text-gray-200">Trainers</a>
            <a href="Supplements.jsp" class="mr-5 hover:text-gray-200">Supplements</a>
               <a href="Payments.jsp" class="mr-5 hover:text-gray-200">Payments</a>
               <a href="Support.jsp" class="mr-5 hover:text-gray-200">Help & Support</a>
            
            <% if (isLoggedIn) { %>
                <!-- Profile Icon -->
                <a href="#" id="openPopup" class="mr-5 hover:text-gray-200">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
                    </svg>
                </a>
            <% } else { %>
                <!-- Login and Signup -->
 <a href="Login.jsp" class="inline-flex items-center bg-blue-600 text-white border-0 py-2 px-4 focus:outline-none hover:bg-blue-700 rounded text-base mt-4 md:mt-0 mr-4">
    Login
</a>
<a href="Register.jsp" class="inline-flex items-center bg-green-600 text-white border-0 py-2 px-4 focus:outline-none hover:bg-green-700 rounded text-base mt-4 md:mt-0">
    Signup
</a>
 
            <% } %>
        </nav>
    </div>
</header>

<!-- Popup Content -->
<% if (isLoggedIn) { %>
<div id="popup" class="hidden fixed inset-0 flex items-center justify-center z-50">
    <div class="overlay absolute inset-0"></div>
    <div class="relative w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
        <div class="flex justify-end px-4 pt-4">
            <button id="closePopup" class="inline-block text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-1.5">
                <span class="sr-only">Close popup</span>
                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                </svg>
            </button>
        </div>
        <div class="flex flex-col items-center pb-10">
            <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="Assets/img/Admin.webp" alt="Profile Picture" />
            <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">
                <%= firstName + " " + lastName %>
            </h5>
            <span class="text-sm text-gray-500 dark:text-gray-400">
                <%= email %>
            </span>
            <div class="flex mt-4">
                <a href="LogoutServlet" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Logout</a>
            </div>
        </div>
    </div>
</div>
<% } %>

<!-- Scripts -->
<script>
    const openPopup = document.getElementById('openPopup');
    const closePopup = document.getElementById('closePopup');
    const popup = document.getElementById('popup');

    if (openPopup) {
        openPopup.addEventListener('click', (e) => {
            e.preventDefault();
            popup.classList.remove('hidden');
        });
    }

    if (closePopup) {
        closePopup.addEventListener('click', () => {
            popup.classList.add('hidden');
        });
    }

    const overlay = document.querySelector('.overlay');
    if (overlay) {
        overlay.addEventListener('click', () => {
            popup.classList.add('hidden');
        });
    }
</script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - TForce & Fitness</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1583454110558-86768d95da55?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080'); /* Replace with your gym/yoga-themed image */
            background-size: cover;
            background-position: center;
        }
        .overlay {
            background: rgba(0, 0, 0, 0.7); /* Dark overlay for better readability */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="min-h-screen flex items-center justify-center px-4">
        <div class="bg-white dark:bg-gray-900 shadow-lg rounded-lg p-8 max-w-md w-full relative">
            <h1 class="text-3xl font-semibold text-center mb-6 text-indigo-600">Welcome to TForce & Fitness!</h1>
            <form action="Login" method="post">
                <div class="mb-4">
                    <label for="email" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Email Address</label>
                    <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="your@email.com" required>
                </div>
                <div class="mb-4">
                    <label for="password" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Password</label>
                    <input type="password" id="password" name="password" class="w-full px-4 py-2 border rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter your password" required>
                    <a href="#" class="text-xs text-indigo-500 hover:text-indigo-700 mt-2 block">Forgot Password?</a>
                </div>
                <div class="flex items-center justify-between mb-4">
                    <label class="flex items-center">
                        <input type="checkbox" id="remember" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 rounded">
                        <span class="ml-2 text-sm text-gray-700 dark:text-gray-300">Remember me</span>
                    </label>
                    <a href="Register.jsp" class="text-sm text-indigo-500 hover:text-indigo-700">Create Account</a>
                </div>
                <button type="submit" class="w-full py-2 px-4 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 shadow-lg">
                    Login
                </button>
                <% 
                    String msg = request.getParameter("msg");
                    if (msg != null) {
                        String message = "";
                        String toastClass = "";
                        switch (msg) {
                            case "Empty":
                                message = "Please enter your email and password.";
                                toastClass = "text-red-600";
                                break;
                            case "InvalidCredentials":
                                message = "Invalid email or password.";
                                toastClass = "text-yellow-600";
                                break;
                            case "LoggedOut":
                                message = "Logout Successfully.";
                                toastClass = "text-green-600";
                                break;
                            case "SessionExpired":
                                message = "Your session has expired. Please log in again.";
                                toastClass = "text-orange-600";
                                break;
                            case "PleaseLogin":
                                message = "Please Login Then Apply!";
                                toastClass = "text-red-400";
                                break;
                        }
                %>
                <div id="toast-simple" class="fixed top-5 right-5 flex items-center p-4 w-96 bg-white border rounded-lg shadow-lg">
                    <div class="mr-3">
                        <svg class="w-6 h-6 <%= toastClass %>" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                        </svg>
                    </div>
                    <span class="text-sm"><%= message %></span>
                </div>
                <% } %>
            </form>
        </div>
    </div>
    <script>
        // Remove the toast after 3 seconds
        setTimeout(() => {
            const toast = document.getElementById('toast-simple');
            if (toast) {
                toast.remove();
            }
        }, 3000);
    </script>
</body>
</html>

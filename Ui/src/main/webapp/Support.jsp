<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Support & Queries</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="src/output.css">
     <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1583454110558-86768d95da55?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .toast {
            position: fixed;
            top: 72px;
            right: 20px;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            display: none;
            color: #fff;
            font-size: 14px;
        }
        .toast.success {
            background-color: #28a745;
            border: 1px solid #218838;
        }
        .toast.error {
            background-color: #dc3545;
            border: 1px solid #c82333;
        }
        .toast.login {
            background-color: #007bff;
            border: 1px solid #0069d9;
        }
    </style>
    <script>
        // Show toast function
        function showToast(message, type = 'success') {
            const toast = document.getElementById('toast');
            toast.textContent = message;
            /* toast.className = `toast ${type}`; */
            toast.style.display = 'block';

            // Hide toast after 3 seconds
            setTimeout(() => {
                toast.style.display = 'none';
            }, 2000);
        }

        // Trigger toast based on query parameters
        window.onload = () => {
            const params = new URLSearchParams(window.location.search);
            if (params.has('status')) {
                const status = params.get('status');
                if (status === 'success') {
                    showToast('Your feedback has been submitted successfully!', 'success');
                } else if (status === 'error') {
                    showToast('There was an error submitting your feedback. Please try again.', 'error');
                } else if (status === 'login') {
                    showToast('Welcome back! You have logged in successfully.', 'login');
                }
            }
        };
    </script>
</head>
<body>
    <!-- Toast Notification -->
    <div id="toast" class="toast success"></div>


    <!-- Include Header -->
    <jsp:include page="Header.jsp"></jsp:include>

    <!-- Feedback Section -->
    <section class="bg-gray-900 bg-opacity-50 py-24">
        <div class="container px-5 mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-indigo-300 text-sm font-semibold uppercase tracking-wide">Feedback</h2>
                <h1 class="text-4xl text-white font-bold">Help & Queries</h1>
                <p class="mt-4 text-gray-300">Share your issues or queries, and we’ll assist you promptly.</p>
            </div>
            <div class="max-w-2xl mx-auto bg-white bg-opacity-90 p-8 rounded-lg shadow-lg">
                <form action="SaveFeedbackServlet" method="POST">
                    <div class="mb-4">
                        <label for="message" class="text-sm leading-7 text-gray-600">Your Query</label>
                        <textarea required id="message" name="message" class="h-32 w-full resize-none rounded border border-gray-300 bg-white py-2 px-3 text-base leading-6 text-gray-700 outline-none transition-colors duration-200 ease-in-out focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200" placeholder="Describe your issue or query here..."></textarea>
                    </div>
                    <div class="flex justify-center">
                        <button type="submit" class="rounded bg-indigo-500 py-2 px-6 text-lg text-white hover:bg-indigo-600 focus:outline-none">Submit</button>
                    </div>
                </form>
                <p class="mt-4 text-xs text-gray-500 text-center">Feel free to connect with us on social media platforms for more assistance.</p>
            </div>
        </div>
    </section>

    <!-- Support Highlights -->
    <section class="bg-gray-900 bg-opacity-50 py-24">
        <div class="container px-5 mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-indigo-300 text-sm font-semibold uppercase tracking-wide">Explore Support</h2>
                <h1 class="text-4xl text-white font-bold">How We Support You</h1>
                <p class="mt-4 text-gray-300">Discover the services and support we offer to help you reach your fitness goals.</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Card 1 -->
                <div class="bg-white bg-opacity-90 rounded-lg shadow-lg p-6 hover:shadow-2xl transform hover:scale-105 transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 bg-indigo-500 text-white rounded-full flex items-center justify-center">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                                <path d="M22 12h-4l-3 9L9 3l-3 9H2"></path>
                            </svg>
                        </div>
                        <h2 class="text-lg font-bold text-gray-800 ml-4">Personalized Plans</h2>
                    </div>
                    <p class="text-gray-600">Get customized workout and nutrition plans tailored to your goals, preferences, and fitness level.</p>
                </div>
                <!-- Card 2 -->
                <div class="bg-white bg-opacity-90 rounded-lg shadow-lg p-6 hover:shadow-2xl transform hover:scale-105 transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 bg-indigo-500 text-white rounded-full flex items-center justify-center">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                                <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </div>
                        <h2 class="text-lg font-bold text-gray-800 ml-4">Expert Guidance</h2>
                    </div>
                    <p class="text-gray-600">Access certified trainers and yoga instructors who guide you every step of the way.</p>
                </div>
                <!-- Card 3 -->
                <div class="bg-white bg-opacity-90 rounded-lg shadow-lg p-6 hover:shadow-2xl transform hover:scale-105 transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="w-12 h-12 bg-indigo-500 text-white rounded-full flex items-center justify-center">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                                <path d="M5 12h14M12 5l7 7-7 7"></path>
                            </svg>
                        </div>
                        <h2 class="text-lg font-bold text-gray-800 ml-4">24/7 Community</h2>
                    </div>
                    <p class="text-gray-600">Join a vibrant community that provides round-the-clock motivation and support.</p>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

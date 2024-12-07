<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Force & Fitness</title>
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
    </style>
</head>
<body class="text-gray-700">
    <!-- Include Header -->
    <jsp:include page="Header.jsp"></jsp:include>

    <!-- Support Section -->
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
                    <a href="#" class="mt-4 inline-block text-indigo-600 font-medium hover:text-indigo-800">Learn More</a>
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
                    <a href="#" class="mt-4 inline-block text-indigo-600 font-medium hover:text-indigo-800">Learn More</a>
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
                    <a href="#" class="mt-4 inline-block text-indigo-600 font-medium hover:text-indigo-800">Learn More</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

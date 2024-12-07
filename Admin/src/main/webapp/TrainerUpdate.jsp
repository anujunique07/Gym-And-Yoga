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
</head>
<body class="bg-gray-100">

    <!-- Header -->
    <jsp:include page="Header.jsp"></jsp:include>

    <!-- Trainer Update Form -->
    <section class="max-w-4xl mx-auto mt-10 bg-white p-8 shadow-lg rounded-lg">
        <h2 class="text-2xl font-bold text-gray-800 mb-6 border-b pb-3">Personal Trainers Update</h2>
        <form action="TrainerUpdateServlet" method="post" enctype="multipart/form-data">
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                <!-- Input Fields with Validation -->
                <div>
                    <label for="username" class="block text-sm font-medium text-gray-700">Username:</label>
                    <input id="username" name="username" type="text" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                </div>
                <div>
                    <label for="emailAddress" class="block text-sm font-medium text-gray-700">Email Address:</label>
                    <input id="emailAddress" name="emailAddress" type="email" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                </div>
                <div>
                    <label for="phone" class="block text-sm font-medium text-gray-700">Phone:</label>
                    <input id="phone" name="phone" type="tel" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" pattern="[0-9]{10}" required>
                </div>
                <div>
                    <label for="gender" class="block text-sm font-medium text-gray-700">Gender:</label>
                    <select id="gender" name="gender" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div>
                    <label for="aadhar_no" class="block text-sm font-medium text-gray-700">Aadhar No:</label>
                    <input id="aadhar_no" name="aadhar_no" type="text" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                </div>
                <div>
                    <label for="experience" class="block text-sm font-medium text-gray-700">Experience (years):</label>
                    <input id="experience" name="experience" type="number" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                </div>
                <div>
                    <label for="age" class="block text-sm font-medium text-gray-700">Age:</label>
                    <input id="age" name="age" type="number" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" required>
                </div>
                <div>
                    <label for="certified_trainer" class="block text-sm font-medium text-gray-700">Certified Trainer:</label>
                    <select id="certified_trainer" name="certified_trainer" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                        <option value="GYM">GYM</option>
                        <option value="YOGA">YOGA</option>
                    </select>
                </div>
                
                
                <!-- New CV Upload Field -->
                <!-- <div>
                    <label for="cv" class="block text-sm font-medium text-gray-700">Upload CV:</label>
                    <input id="cv" name="cv" type="file" class="block w-full px-4 py-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" accept=".pdf,.doc,.docx">
                </div> -->
                
                
            </div>

            <!-- Submit Button -->
            <div class="flex justify-end mt-6">
                <button type="submit" class="px-6 py-2 text-white bg-blue-600 rounded-md hover:bg-blue-500 focus:outline-none focus:ring-2 focus:ring-blue-400">Submit</button>
            </div>
        </form>
    </section>

</body>
</html>

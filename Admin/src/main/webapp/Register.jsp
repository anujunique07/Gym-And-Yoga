<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Register</title>
<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="src/output.css">
</head>
<body>
<!-- Registration Form -->
<div class="h-screen bg-indigo-100 flex justify-center items-center">
	<div class="lg:w-2/5 md:w-1/2 w-2/3">
		<form method="post" action="AdminRegister" class="bg-white p-10 rounded-lg shadow-lg min-w-full">
			<h1 class="text-center text-2xl mb-6 text-gray-600 font-bold font-sans">Admin Register</h1>
			
			<!-- Error Message -->
			<%
			    String errorMessage = request.getParameter("error");
			    if (errorMessage != null && !errorMessage.isEmpty()) {
			%>
			    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-4" role="alert">
			        <strong class="font-bold">Error:</strong>
			        <span class="block sm:inline"><%= errorMessage %></span>
			    </div>
			<% } %>
			
			<!-- Input Fields -->
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="username">Username</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="username" id="username" placeholder="username" />
			</div>
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="email">Email</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="email" id="email" placeholder="@gmail.com" />
			</div>
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="password">Password</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="password" name="password" id="password" placeholder="password" />
			</div>
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="confirm">Confirm Password</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="password" name="confirm" id="confirm" placeholder="confirm password" />
			</div>
			<button type="submit" class="w-full mt-6 bg-indigo-600 rounded-lg px-4 py-2 text-lg text-white tracking-wide font-semibold font-sans">Register</button>
			
			<!-- Redirect to Login -->
			<div class="mt-4 text-center">
			    <span class="text-sm text-gray-500">Already have an account? </span>
			    <a href="Login.jsp" class="text-blue-500 hover:text-blue-600">Login</a>
			</div>
		</form>
	</div>
</div>
</body>
</html>

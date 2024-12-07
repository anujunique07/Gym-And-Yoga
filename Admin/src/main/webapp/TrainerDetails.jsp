	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	
	
     <%@ page import="java.util.List" %>
	<%@ page import="com.model.Trainer" %>
	<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Force & Fitness</title>
    <!-- Tailwind Css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
</head>
<body>
    
<!-- 1st Part -->
  		 <jsp:include page="Header.jsp"></jsp:include>
     
<!-- Second -->

<section class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-20">
            <h1 class="text-2xl font-medium title-font mb-4 text-gray-900 tracking-widest">OUR TEAM</h1>
            <p class="lg:w-2/3 mx-auto leading-relaxed text-base">
                Our expert personal trainer team offers tailored fitness plans, focusing on strength, endurance, and overall wellness to help you achieve your goals efficiently. With a combination of personalized guidance and motivation, we ensure consistent progress in a supportive environment.
            </p>
        </div>
        <div class="flex flex-wrap -m-4">
            <%
                List<Trainer> trainers = (List<Trainer>) request.getAttribute("trainers");
                if (trainers != null && !trainers.isEmpty()) {
                    for (Trainer trainer : trainers) {
            %>
            <div class="p-4 lg:w-1/3 md:w-1/2 sm:w-1/2 w-full">
                <div class="h-full flex flex-col items-center text-center border rounded-lg shadow-lg overflow-hidden">
                    <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center mt-4 mb-4" src="Assets/img/Admin.webp">
                    <div class="flex-grow p-4">
                        <h2 class="title-font font-medium text-lg text-gray-900"><%= trainer.getUsername() %></h2>
                        <h3 class="text-gray-500 mb-3">Personal Trainers</h3>
                        <p class="mb-2">Experience: <%= trainer.getExperience() %> years</p>
                        <p class="mb-2">Certified: <%= "Yes".equalsIgnoreCase(trainer.getCertifiedTrainer()) ? "GYM" : "YOGA" %></p>
                        <p class="mb-2">Email: <%= trainer.getEmail() %></p>
                        <p class="mb-2">Phone: <%= trainer.getPhone() %></p>
                        <p class="mb-2">Aadhar No: <%= trainer.getAadharNo() %></p>
                        <p class="mb-2">Age: <%= trainer.getAge() %></p>
                      

                        <!-- Edit and Delete buttons -->
                        <div class="mt-4 flex justify-center">
                        
                         
									
								 <!-- Delete Button -->	
						<form action="deleteTrainer" method="post" onsubmit="return confirm('Are you sure you want to delete this trainer?');">
  								  <input type="hidden" name="id" value="<%= trainer.getId() %>">
    							<button type="submit" class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
						</form>
                         
                         
                        </div>

                        <span class="inline-flex mt-4">
                            <a class="text-gray-500 hover:text-gray-700 transition duration-300">
                                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                                </svg>
                            </a>
                            <a class="ml-2 text-gray-500 hover:text-gray-700 transition duration-300">
                                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                                </svg>
                            </a>
                            <a class="ml-2 text-gray-500 hover:text-gray-700 transition duration-300">
                                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                                </svg>
                            </a>
                        </span>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <div class="p-4 lg:w-full">
                <div class="h-full flex items-center justify-center text-center">
                    <p class="text-gray-500">No trainers available.</p>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</section>



</body>
</html>
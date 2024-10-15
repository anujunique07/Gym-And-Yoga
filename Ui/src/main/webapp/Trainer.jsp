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
    <!-- Tailwind Css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
</head>
<body>
     <!-- First Part -->

     <header class="text-black bg-purple-600 body-font">
        <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
          <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
              <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
            </svg>
            <span class="ml-3 text-xl">GymYoga</span>
          </a>
          <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
         <a href="Home.jsp" class="mr-5 hover:text-gray-900">Home</a>
            <a href="Gym.jsp" class="mr-5 hover:text-gray-900">Gym</a>
            <a href="Yoga.jsp" class="mr-5 hover:text-gray-900">Yoga</a>
            <a href="Membership.jsp" class="mr-5 hover:text-gray-900">Membership</a>
            <a href="TrainerDetailsUser" class="mr-5 hover:text-gray-900">Trainer</a>
            <a href="Supplements.jsp"class="mr-5 hover:text-gray-900">Supplements</a>
            <a href="ContactUs.jsp"class="mr-5 hover:text-gray-900">Contact Us</a>
          </nav>
          
          <a href= "ApplyNow.html" class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-200 rounded text-base mt-4 md:mt-0"> Join Now
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
              <path d="M5 12h14M12 5l7 7-7 7"></path>
            </svg>
          </a>

        </div>
      </header>


      <!-- Second part{Main} -->



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
                        <h3 class="text-gray-500 mb-3">Personal Trainer</h3>
                        <p class="mb-2">Experience: <%= trainer.getExperience() %> years</p>
                        <p class="mb-2">Certified: <%= "GYM".equalsIgnoreCase(trainer.getCertifiedTrainer()) ? "GYM" : "YOGA" %></p>
                        <p class="mb-2">Email: <%= trainer.getEmail() %></p>
                        <p class="mb-2">Phone: <%= trainer.getPhone() %></p>
                        <p class="mb-2">Age: <%= trainer.getAge() %></p>
                      

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




 <!-- Third Part -->
 <footer class="text-gray-600 body-font">
    <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
      <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
        <span class="ml-3 text-xl">Force & Fitness</span>
      </a>
      <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">© 2020 Force & Fitness —
        <a href="https://twitter.com/knyttneve" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@GymYoga</a>
      </p>
      <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
        <a class="text-gray-500">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
            <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
            <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
            <circle cx="4" cy="4" r="2" stroke="none"></circle>
          </svg>
        </a>
      </span>
    </div>
  </footer>


</body>
</html>
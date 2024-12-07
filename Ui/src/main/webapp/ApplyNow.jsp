<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
    <%String str =request.getParameter("msg"); %>
    
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
         <!--Tailwind Css-->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
    </head>
    <body>

           <!-- First Part -->

     <jsp:include page="Header.jsp"></jsp:include>

        <!-- Second Part -->

        <section class="text-gray-600 body-font relative">
            <div class="absolute inset-0 bg-gray-300">
                <iframe width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" title="map" scrolling="no" 
                    src="https://maps.google.com/maps?q=Thane,+Mumbai,+Maharashtra,+India&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                    style="filter: grayscale(1) contrast(1.2) opacity(0.4);">
                </iframe>
            </div>
            <div class="px-8 py-20 mx-auto flex">
                <div class="lg:w-1/3 md:w-1/2 bg-white rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 relative z-10 shadow-md">
                    <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Force & Fitness</h2>
                    <p class="text-gray-900 text-lg mb-1 font-medium title-font"> Submit Your Form, Then Starting date and details will provide in Email or Whatsapp. </p>

					
					
					 <!-- Toast Notification Logic -->
    <%
    if ("valid".equals(str)) {
    %>
    <div id="toast-success" class="fixed flex top-24 right-24 p-4 w-96 bg-green-100 border border-green-300 shadow-lg rounded-md">
        <svg class="w-5 h-5 text-green-500 rotate-45" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 17 8 2L9 1 1 19l8-2Zm0 0V9"/>
        </svg>
        <div class="ps-4 text-sm font-normal">Successfully Registered.</div>
    </div>
    <%
    } else if ("invalid".equals(str)) {
    %>
    <div id="toast-error" class="fixed flex top-24 right-24 p-4 w-96 bg-red-100 border border-red-300 shadow-lg rounded-md">
        <svg class="w-5 h-5 text-red-500 rotate-45" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.147 15.085a7.159 7.159 0 0 1-6.189 3.307A6.713 6.713 0 0 1 3.1 15.444c-2.679-4.513.287-8.737.888-9.548A4.373 4.373 0 0 0 5 1.608c1.287.953 6.445 3.218 5.537 10.5 1.5-1.122 2.706-3.01 2.853-6.14 1.433 1.049 3.993 5.395 1.757 9.117Z"/>
        </svg>
        <div class="ps-4 text-sm font-normal">Please fill out all fields.</div>
    </div>
    <%
    } else if ("duplicate".equals(str)) {
    %>
    <div id="toast-duplicate" class="fixed flex top-24 right-24 p-4 w-96 bg-yellow-100 border border-yellow-300 shadow-lg rounded-md">
        <svg class="w-5 h-5 text-yellow-500 rotate-45" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9 17 8 2L9 1 1 19l8-2Zm0 0V9"/>
        </svg>
        <div class="ps-4 text-sm font-normal"> Already Submitted .</div>
    </div>
    <%
    }
    %>
				
					
					
					
						
					<form id=" UserFormServlet" action="UserFormServlet" method="POST">
					
						
					
					
                    <!-- Email Field -->
                  <!--   <div class="relative mb-4">
                        <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
                        <input required type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
         -->
 
 
                    <!-- Name Field -->
                    <div class="relative mb-4">
                        <label for="name" class="leading-7 text-sm text-gray-600">Name:</label>
                        <input required type="text" id="name" name="name" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>

                    

                    <!-- Phone Field -->
                    <div class="relative mb-4">
                        <label for="phone" class="leading-7 text-sm text-gray-600">Whatsapp No:</label>
                        <input required type="text" id="phone" name="phone" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>

                    

                    <!-- Address Field -->
                    <div class="relative mb-4">
                        <label for="address" class="leading-7 text-sm text-gray-600">Address:</label>
                        <input required type="text" id="address" name="address" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
 
                    

                    <!-- Yoga or Gym Dropdown -->
                    <div class="relative mb-4">
                        <label for="gym" class="block text-sm font-medium text-gray-900">Yoga or Gym</label>
                        <select required name="gym" id="gym" class="mt-1.5 w-full rounded-lg border-gray-300 text-gray-700 sm:text-sm">
                            <option value="">Please select</option>
                            <option value="Yoga">Yoga</option>
                            <option value="Gym">Gym</option>
                        </select>
                    </div>
        
                    <!-- Personal Training Dropdown -->
                    <div class="relative mb-4">
                        <label for="training" class="block text-sm font-medium text-gray-900">Personal Training?</label>
                        <select required name="training" id="training" class="mt-1.5 w-full rounded-lg border-gray-300 text-gray-700 sm:text-sm">
                            <option value="">Please select</option>
                            <option value="Offline Yoga">Offline Yoga Personal Training</option>
                            <option value="Offline Gym">Offline Gym Personal Training</option>
                            <option value="Online Yoga">Online Yoga Personal Training</option>
                            <option value="Online Gym">Online Gym Personal Training</option>
                            <option value="None">None</option>
                        </select>
                    </div>


                    
          
        
        
        
        
                    <!-- Gender Radio Buttons -->
                    <div class="relative mb-4">
                        <label class="block text-sm font-medium text-gray-900">Gender</label>
                        <input type="radio" id="male" name="gender" value="Male">
                        <label for="male" class="leading-7 text-sm text-gray-600">MALE</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input required type="radio" id="female" name="gender" value="Female">
                        <label for="female" class="leading-7 text-sm text-gray-600">FEMALE</label>
                    </div>
                    
                    
  
                    <!-- Submit Button -->
                    <div class="relative mb-4">
                        <button type="submit" class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg">SUBMIT</button>
                        
                    </div>
                    </form>
                    
                </div>
            </div>
            
            
        
            <script>
                function scrollToTop() {
                    window.scrollTo({ top: 0, behavior: 'smooth' });
                }
            </script>
        </section>

  <script>
        // Optional: Automatically hide the toast after a few seconds
        setTimeout(function() {
            var toast = document.querySelector('#toast-success, #toast-error, #toast-duplicate');
            if (toast) {
                toast.style.display = 'none';
            }
        }, 1500); // Hide toast after 5 seconds
    </script>

   
        
         

    </body>
    </html>









    
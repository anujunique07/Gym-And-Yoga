<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- For Toast -->
 <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" />
<script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <!-- Tailwind Css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
</head>
<body>
	<!-- component -->
<section class="bg-white dark:bg-gray-900">
    <div class="flex justify-center min-h-screen">
        <div class="hidden bg-cover lg:block lg:w-2/5" style="background-image: url('https://images.unsplash.com/photo-1494621930069-4fd4b2e24a11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80')">
        </div>

        <div class="flex items-center w-full max-w-3xl p-8 mx-auto lg:px-12 lg:w-3/5">
            <div class="w-full">
                <h1 class="text-2xl font-semibold tracking-wider text-gray-800 capitalize dark:text-white">
                    Welcome to TForce & Fitness!
                </h1>

                <p class="mt-4 text-gray-500 dark:text-gray-400">
                    Let’s get you all set up so you can verify your personal account and begin setting up your profile.
                </p>

             
                <form class="grid grid-cols-1 gap-6 mt-8 md:grid-cols-2" action="Register" method="post">
                
                       <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">First Name</label>
                            <input type="text" name="firstName" placeholder="Enter first name" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" required>
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">Last Name</label>
                            <input type="text" name="lastName" placeholder="Enter last name" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" required>
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">Phone Number</label>
                            <input type="tel" name="phoneNumber" placeholder="XXX-XXX-XXXX" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" pattern="[0-9]{10}" required>
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">Email Address</label>
                            <input type="email" name="email" placeholder="Enter your email" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" required>
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">Password</label>
                            <input type="password" name="password" placeholder="Enter your password" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" required>
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium text-gray-700 dark:text-gray-200">Confirm Password</label>
                            <input type="password" name="confirmPassword" placeholder="Confirm your password" class="w-full px-4 py-3 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300" required>
                        </div>
                   
                    

                    <div class="col-span-2">
                            <button type="submit" class="w-full px-6 py-3 text-sm font-bold text-white bg-blue-500 rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-4 focus:ring-blue-300">
                                Register
                            </button>
                        </div> 
                       <%
                String msg = request.getParameter("msg");
                if (msg != null) {
                    String color = "red"; // Default color for error messages
                    String displayMessage = "";

                    switch (msg) {
                   case "Empty":
                	 	displayMessage = "Fill out the Form!";
                	 	break;
                        case "NotValidFirstname":
                            displayMessage = "First Name is invalid!";
                            break;
                        case "NotValidLastname":
                            displayMessage = "Last Name is invalid!";
                            break;
                        case "NotValidPhnno":
                            displayMessage = "Phone Number must be 10 digits!";
                            break;
                        case "NotValidEmail":
                            displayMessage = "Invalid Email format!";
                            break;
                        case "NotValidPass":
                            displayMessage = "Password is required!";
                            break;
                        case "NotValidConfPass":
                            displayMessage = "Passwords do not match!";
                            break;
                        case "Success!":
                            color = "green"; // Success message color
                            displayMessage = "Registration Successful!";
                            break;
                        case "Failed!":
                            displayMessage = "Registration Failed! Please try again.";
                            break;
                        default:
                            displayMessage = "Unknown error occurred.";
                            break;
                    }
            %>
                  <%--   <h3 class="text-<%= color %>-500 text-center mb-4"></h3> --%>
                  <div x-data="{ open: true }" x-show="open" x-transition.duration.300ms 
    class="fixed right-4 top-4 z-50 rounded-md bg-red-500 px-4 py-2 text-white shadow-lg transition hover:bg-red-600">
    <div class="flex items-center space-x-2">
        <span class="text-3xl"><i class="bx bx-check"></i></span>
        <p class="font-bold"><%= displayMessage %></p>
        <button type="button" @click="open = false" class="text-white text-xl focus:outline-none">
            &times;
        </button>
    </div>
</div>
    
            <%
                }
            %>
                      
                    
                      <div class="mt-4 text-center">
      <span class="text-sm text-gray-500 dark:text-gray-300">Already have an account? </span>
      <a href="Login.jsp" class="text-blue-500 hover:text-blue-600">Login</a>
    </div>
     
    
                </form>
                
                
            </div>
        </div>
    </div>
</section>
  </div>
  <script>
  let timer;

  document.addEventListener("alpine:init", () => {
      Alpine.data("app", () => ({
          open: false,

          openToast() {
              if (this.open) return;
              this.open = true;

              clearTimeout(timer);

              timer = setTimeout(() => {
                  this.open = false;
              }, 1500);
          },

          closeToast() {
              this.open = false;
          },
      }));
  });
</script>
</body>
</html>
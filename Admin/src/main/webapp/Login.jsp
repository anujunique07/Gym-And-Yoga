<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Tailwind Css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
</head>
<body>

<!-- component -->
<div class="bg-white relative lg:py-20">
  <div class="flex flex-col items-center justify-between pt-0 pr-10 pb-0 pl-10 mt-0 mr-auto mb-0 ml-auto max-w-7xl
      xl:px-5 lg:flex-row">
    <div class="flex flex-col items-center w-full pt-5 pr-10 pb-20 pl-10 lg:pt-20 lg:flex-row">
      <div class="w-full bg-cover relative max-w-md lg:max-w-2xl lg:w-7/12">
        <div class="flex flex-col items-center justify-center w-full h-full relative lg:pr-10">
          <img src="https://res.cloudinary.com/macxenon/image/upload/v1631570592/Run_-_Health_qcghbu.png" class="btn-"/>
        </div>
      </div>
      <div class="w-full mt-20 mr-0 mb-0 ml-0 relative z-10 max-w-2xl lg:mt-0 lg:w-5/12">
        <div class="flex flex-col items-start justify-start pt-10 pr-10 pb-10 pl-10 bg-white shadow-2xl rounded-xl
            relative z-10">
          <p class="w-full text-4xl font-medium text-center leading-snug font-serif">Sign up for an account</p>
          <div class="w-full mt-6 mr-0 mb-0 ml-0 relative space-y-8">
            <div class="relative">
            <form action="LoginAdmin" method="post">
              <p class="bg-white pt-0 pr-2 pb-0 pl-2 -mt-3 mr-0 mb-0 ml-2 font-medium text-gray-600
                  absolute">Username</p>
              <input name="username" placeholder="John" type="text" class="border placeholder-gray-400 focus:outline-none
                  focus:border-black w-full pt-4 pr-4 pb-4 pl-4 mt-2 mr-0 mb-0 ml-0 text-base block bg-white
                  border-gray-300 rounded-md"/>
            </div>
            <div class="relative">
              <p class="bg-white pt-0 pr-2 pb-0 pl-2 -mt-3 mr-0 mb-0 ml-2 font-medium text-gray-600 absolute">Email</p>
              <input name="email"placeholder="@gmail.com" type="text" class="border placeholder-gray-400 focus:outline-none
                  focus:border-black w-full pt-4 pr-4 pb-4 pl-4 mt-2 mr-0 mb-0 ml-0 text-base block bg-white
                  border-gray-300 rounded-md"/>
            </div>
            <div class="relative">
              <p class="bg-white pt-0 pr-2 pb-0 pl-2 -mt-3 mr-0 mb-0 ml-2 font-medium text-gray-600
                  absolute">Password</p>
              <input name="password" placeholder="Password" type="password" class="border placeholder-gray-400 focus:outline-none
                  focus:border-black w-full pt-4 pr-4 pb-4 pl-4 mt-2 mr-0 mb-0 ml-0 text-base block bg-white
                  border-gray-300 rounded-md"/>
            </div>
            
         <!--  <div class="flex items-center justify-between mb-4">
				<div class="flex items-center">
					<input type="checkbox" id="remember" class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500 focus:outline-none" checked>
					<label for="remember" class="ml-2 block text-sm text-gray-700 dark:text-gray-300">Remember me</label>
				</div>
				<a href="Register.jsp"
					class="text-xs text-indigo-500 hover:text-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Create
					Account</a>
			</div> -->
            
            <div class="relative">
              <button type="Submit"  class="w-full inline-block pt-4 pr-5 pb-4 pl-5 text-xl font-medium text-center text-white bg-indigo-500
                  rounded-lg transition duration-200 hover:bg-indigo-600 ease">Submit</button>
            </div>
            
            </form>
            
          </div>
        </div>
        <svg viewbox="0 0 91 91" class="absolute top-0 left-0 z-0 w-32 h-32 -mt-12 -ml-12 text-yellow-300
            fill-current"><g stroke="none" strokewidth="1" fillrule="evenodd"><g fillrule="nonzero"><g><g><circle
            cx="3.261" cy="3.445" r="2.72"/><circle cx="15.296" cy="3.445" r="2.719"/><circle cx="27.333" cy="3.445"
            r="2.72"/><circle cx="39.369" cy="3.445" r="2.72"/><circle cx="51.405" cy="3.445" r="2.72"/><circle cx="63.441"
            cy="3.445" r="2.72"/><circle cx="75.479" cy="3.445" r="2.72"/><circle cx="87.514" cy="3.445" r="2.719"/></g><g
            transform="translate(0 12)"><circle cx="3.261" cy="3.525" r="2.72"/><circle cx="15.296" cy="3.525"
            r="2.719"/><circle cx="27.333" cy="3.525" r="2.72"/><circle cx="39.369" cy="3.525" r="2.72"/><circle
            cx="51.405" cy="3.525" r="2.72"/><circle cx="63.441" cy="3.525" r="2.72"/><circle cx="75.479" cy="3.525"
            r="2.72"/><circle cx="87.514" cy="3.525" r="2.719"/></g><g transform="translate(0 24)"><circle cx="3.261"
            cy="3.605" r="2.72"/><circle cx="15.296" cy="3.605" r="2.719"/><circle cx="27.333" cy="3.605" r="2.72"/><circle
            cx="39.369" cy="3.605" r="2.72"/><circle cx="51.405" cy="3.605" r="2.72"/><circle cx="63.441" cy="3.605"
            r="2.72"/><circle cx="75.479" cy="3.605" r="2.72"/><circle cx="87.514" cy="3.605" r="2.719"/></g><g
            transform="translate(0 36)"><circle cx="3.261" cy="3.686" r="2.72"/><circle cx="15.296" cy="3.686"
            r="2.719"/><circle cx="27.333" cy="3.686" r="2.72"/><circle cx="39.369" cy="3.686" r="2.72"/><circle
            cx="51.405" cy="3.686" r="2.72"/><circle cx="63.441" cy="3.686" r="2.72"/><circle cx="75.479" cy="3.686"
            r="2.72"/><circle cx="87.514" cy="3.686" r="2.719"/></g><g transform="translate(0 49)"><circle cx="3.261"
            cy="2.767" r="2.72"/><circle cx="15.296" cy="2.767" r="2.719"/><circle cx="27.333" cy="2.767" r="2.72"/><circle
            cx="39.369" cy="2.767" r="2.72"/><circle cx="51.405" cy="2.767" r="2.72"/><circle cx="63.441" cy="2.767"
            r="2.72"/><circle cx="75.479" cy="2.767" r="2.72"/><circle cx="87.514" cy="2.767" r="2.719"/></g><g
            transform="translate(0 61)"><circle cx="3.261" cy="2.846" r="2.72"/><circle cx="15.296" cy="2.846"
            r="2.719"/><circle cx="27.333" cy="2.846" r="2.72"/><circle cx="39.369" cy="2.846" r="2.72"/><circle
            cx="51.405" cy="2.846" r="2.72"/><circle cx="63.441" cy="2.846" r="2.72"/><circle cx="75.479" cy="2.846"
            r="2.72"/><circle cx="87.514" cy="2.846" r="2.719"/></g><g transform="translate(0 73)"><circle cx="3.261"
            cy="2.926" r="2.72"/><circle cx="15.296" cy="2.926" r="2.719"/><circle cx="27.333" cy="2.926" r="2.72"/><circle
            cx="39.369" cy="2.926" r="2.72"/><circle cx="51.405" cy="2.926" r="2.72"/><circle cx="63.441" cy="2.926"
            r="2.72"/><circle cx="75.479" cy="2.926" r="2.72"/><circle cx="87.514" cy="2.926" r="2.719"/></g><g
            transform="translate(0 85)"><circle cx="3.261" cy="3.006" r="2.72"/><circle cx="15.296" cy="3.006"
            r="2.719"/><circle cx="27.333" cy="3.006" r="2.72"/><circle cx="39.369" cy="3.006" r="2.72"/><circle
            cx="51.405" cy="3.006" r="2.72"/><circle cx="63.441" cy="3.006" r="2.72"/><circle cx="75.479" cy="3.006"
            r="2.72"/><circle cx="87.514" cy="3.006" r="2.719"/></g></g></g></g></svg>
        <svg viewbox="0 0 91 91" class="absolute bottom-0 right-0 z-0 w-32 h-32 -mb-12 -mr-12 text-indigo-500
            fill-current"><g stroke="none" strokewidth="1" fillrule="evenodd"><g fillrule="nonzero"><g><g><circle
            cx="3.261" cy="3.445" r="2.72"/><circle cx="15.296" cy="3.445" r="2.719"/><circle cx="27.333" cy="3.445"
            r="2.72"/><circle cx="39.369" cy="3.445" r="2.72"/><circle cx="51.405" cy="3.445" r="2.72"/><circle cx="63.441"
            cy="3.445" r="2.72"/><circle cx="75.479" cy="3.445" r="2.72"/><circle cx="87.514" cy="3.445" r="2.719"/></g><g
            transform="translate(0 12)"><circle cx="3.261" cy="3.525" r="2.72"/><circle cx="15.296" cy="3.525"
            r="2.719"/><circle cx="27.333" cy="3.525" r="2.72"/><circle cx="39.369" cy="3.525" r="2.72"/><circle
            cx="51.405" cy="3.525" r="2.72"/><circle cx="63.441" cy="3.525" r="2.72"/><circle cx="75.479" cy="3.525"
            r="2.72"/><circle cx="87.514" cy="3.525" r="2.719"/></g><g transform="translate(0 24)"><circle cx="3.261"
            cy="3.605" r="2.72"/><circle cx="15.296" cy="3.605" r="2.719"/><circle cx="27.333" cy="3.605" r="2.72"/><circle
            cx="39.369" cy="3.605" r="2.72"/><circle cx="51.405" cy="3.605" r="2.72"/><circle cx="63.441" cy="3.605"
            r="2.72"/><circle cx="75.479" cy="3.605" r="2.72"/><circle cx="87.514" cy="3.605" r="2.719"/></g><g
            transform="translate(0 36)"><circle cx="3.261" cy="3.686" r="2.72"/><circle cx="15.296" cy="3.686"
            r="2.719"/><circle cx="27.333" cy="3.686" r="2.72"/><circle cx="39.369" cy="3.686" r="2.72"/><circle
            cx="51.405" cy="3.686" r="2.72"/><circle cx="63.441" cy="3.686" r="2.72"/><circle cx="75.479" cy="3.686"
            r="2.72"/><circle cx="87.514" cy="3.686" r="2.719"/></g><g transform="translate(0 49)"><circle cx="3.261"
            cy="2.767" r="2.72"/><circle cx="15.296" cy="2.767" r="2.719"/><circle cx="27.333" cy="2.767" r="2.72"/><circle
            cx="39.369" cy="2.767" r="2.72"/><circle cx="51.405" cy="2.767" r="2.72"/><circle cx="63.441" cy="2.767"
            r="2.72"/><circle cx="75.479" cy="2.767" r="2.72"/><circle cx="87.514" cy="2.767" r="2.719"/></g><g
            transform="translate(0 61)"><circle cx="3.261" cy="2.846" r="2.72"/><circle cx="15.296" cy="2.846"
            r="2.719"/><circle cx="27.333" cy="2.846" r="2.72"/><circle cx="39.369" cy="2.846" r="2.72"/><circle
            cx="51.405" cy="2.846" r="2.72"/><circle cx="63.441" cy="2.846" r="2.72"/><circle cx="75.479" cy="2.846"
            r="2.72"/><circle cx="87.514" cy="2.846" r="2.719"/></g><g transform="translate(0 73)"><circle cx="3.261"
            cy="2.926" r="2.72"/><circle cx="15.296" cy="2.926" r="2.719"/><circle cx="27.333" cy="2.926" r="2.72"/><circle
            cx="39.369" cy="2.926" r="2.72"/><circle cx="51.405" cy="2.926" r="2.72"/><circle cx="63.441" cy="2.926"
            r="2.72"/><circle cx="75.479" cy="2.926" r="2.72"/><circle cx="87.514" cy="2.926" r="2.719"/></g><g
            transform="translate(0 85)"><circle cx="3.261" cy="3.006" r="2.72"/><circle cx="15.296" cy="3.006"
            r="2.719"/><circle cx="27.333" cy="3.006" r="2.72"/><circle cx="39.369" cy="3.006" r="2.72"/><circle
            cx="51.405" cy="3.006" r="2.72"/><circle cx="63.441" cy="3.006" r="2.72"/><circle cx="75.479" cy="3.006"
            r="2.72"/><circle cx="87.514" cy="3.006" r="2.719"/></g></g></g></g></svg>
      </div>
    </div>
  </div>
</div>
<!-- Toast Notification -->
<%
    String msg = request.getParameter("msg");
    if (msg != null) {
%>
<div id="toast" class="z-20 fixed top-5 right-5 p-4 w-96 bg-white border border-gray-300 shadow-lg rounded-md">
    <div class="flex items-center">
        <div class="w-8 h-8 bg-indigo-100 rounded-full flex items-center justify-center"> 
            <svg class="w-5 h-5 text-indigo-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 2l9 21H3L12 2z"></path>
            </svg>
        
        </div>
        <div class="ml-3">
            <p class="text-gray-700 font-semibold">    Successfully Logout!
                <%
                    if ("Empty".equals(msg)) {
                        out.print("Please fill in all fields.");
                    } else if ("InvalidCredentials".equals(msg)) {
                        out.print("Invalid email or password.");
                    } else if ("Success".equals(msg)) {
                        out.print("Login successful!");
                    }
                %>
            </p>
        </div>
    </div>
</div>
<script>
    setTimeout(() => {
        document.getElementById('toast').remove();
    }, 3000);
</script>
<% } %>
</body>
</html>





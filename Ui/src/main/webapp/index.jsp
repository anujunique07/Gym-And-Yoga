<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym & Yoga</title>
    <!-- Tailwind Css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Bootstrap(default) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="src/output.css">
</head>
<body>

<!-- 1st Part -->
  		 <jsp:include page="Header.jsp"></jsp:include>
    
    <!-- Second Part -->
   
    
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-24 mx-auto flex flex-wrap">
        <div class="flex w-full mb-20 flex-wrap">
          <h1 class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4"> Health & Fitness</h1>
          <h3 class="lg:pl-6 lg:w-2/3 mx-auto leading-relaxed text-base">Welcome to Force & Fitness, where your fitness journey begins and excellence is the norm. Our state-of-the-art facility is equipped with the latest fitness technology, and our certified trainers are here to guide you every step of the way. Whether you're looking to build strength, improve your cardio, or achieve a balanced lifestyle, we offer a range of tailored programs to meet your needs. Join our vibrant community today and experience the transformation you've been waiting for. At Force & Fitness, we’re not just a gym; we’re your partner in achieving your health and wellness goals.</h3>

        </div>
        <div class="flex flex-wrap md:-m-2 -m-1">
          <div class="flex flex-wrap w-1/2">
            <div class="md:p-2 p-1 w-1/2">
              <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/gym1.jpg">
            </div>
            <div class="md:p-2 p-1 w-1/2">
              <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/gym-design-planner-6.webp">
            </div>
            <div class="md:p-2 p-1 w-full">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/Sony A7iii Workout Hype Video(1080P_HD).mp4" 
                autoplay 
                loop 
                muted
                playsinline>
              </video>
              
            </div>
          </div>
          <div class="flex flex-wrap w-1/2">
            <div class="md:p-2 p-1 w-full">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/a Cinematic Fitness Video...SONY FX6(4K_HD).webm" 
                autoplay 
                loop 
                muted 
                playsinline 
                id="fitnessVideo">
              </video>
              
              <audio id="hoverAudio" src="Assets/Audio/1.mp3"></audio>
              
              <script>
                const video = document.getElementById('fitnessVideo');
                const audio = document.getElementById('hoverAudio');
              
                // Play audio when mouse enters the video area
                video.addEventListener('mouseenter', () => {
                  audio.play();
                });
              
                // Pause audio when mouse leaves the video area
                video.addEventListener('mouseleave', () => {
                  audio.pause();
                  audio.currentTime = 0; // Reset audio to the beginning
                });
              </script>
              
              
            </div>
            <div class="md:p-2 p-1 w-1/2">
              <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/gym-design-planner-1.webp">
            </div>
            <div class="md:p-2 p-1 w-1/2">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/Gym CINEMATIC FITNESS Video [Sony a7IV with 50mm f1.2 GM] 4k(720P_HD).mp4" 
                autoplay 
                loop 
                muted
                playsinline>
              </video>
            </div>
          </div>
        </div>
      </div>


      <section class="text-gray-600 body-font">
        <div class="container px-2 py-15 mx-auto flex flex-wrap">
          <div class="flex w-full mb-20 flex-wrap">
            <h1 class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">Yoga For Health & Fitness</h1>
            <h2 class="lg:pl-6 lg:w-2/3 mx-auto leading-relaxed text-base">Discover the Power of Yoga – Embrace tranquility and balance with our expert-led yoga classes. Whether you're a beginner or a seasoned practitioner, our diverse range of classes is designed to enhance your flexibility, strength, and inner peace. Join us to rejuvenate your mind and body, and experience the profound benefits of a consistent yoga practice. Your journey to wellness starts here!</h2>
          </div>
          <div class="flex flex-wrap md:-m-2 -m-1">
            <div class="flex flex-wrap w-1/2">
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/yoga.avif">
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga1.jpg">
              </div>
              <div class="md:p-2 p-1 w-full">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/yoga.webm" 
                autoplay 
                loop 
                muted
                playsinline
                onmouseover="playAudio()"
                onmouseout="pauseAudio()">
              </video>
              <audio id="videoAudio" src="Assets/Audio/3.mp3"></audio>
              <script>
                function playAudio() {
                    const audio = document.getElementById('videoAudio');
                    if (audio) {
                        audio.play();
                    }
                }
        
                function pauseAudio() {
                    const audio = document.getElementById('videoAudio');
                    if (audio) {
                        audio.pause();
                        audio.currentTime = 0; // Optionally reset the audio to the start
                    }
                }
            </script>
              </div>



            </div>
            <div class="flex flex-wrap w-1/2">
              <div class="md:p-2 p-1 w-full">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/Yoga2.mp4" 
                autoplay 
                loop 
                muted
                playsinline>
              </video>
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga2.avif">
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga3.webp">
              </div>
            </div>
          </div>
        </div>

    </section>

    
<!-- 3rd Step -->
<footer class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto">
      <div class="flex flex-wrap md:text-left text-center -mb-10 -mx-4">
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">FITNESS CLASSES</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Yoga</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Pilates</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">HIIT</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Strength Training</a>
            </li>
          </nav>
        </div>
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">NUTRITION</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Healthy Recipes</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Diet Plans</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Supplement Guides</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Nutrition Tips</a>
            </li>
          </nav>
        </div>
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">MEMBERSHIP</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Join Now</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Membership Plans</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Personal Training</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Group Classes</a>
            </li>
          </nav>
        </div>
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">WELLNESS</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Mental Health</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Recovery Tips</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Massage Therapy</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Stretching Exercises</a>
            </li>
          </nav>
        </div>
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">ABOUT US</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Our Story</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Meet the Team</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Careers</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Contact Us</a>
            </li>
          </nav>
        </div>
        <div class="lg:w-1/6 md:w-1/2 w-full px-4">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">RESOURCES</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-gray-600 hover:text-gray-800">Blog</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">FAQs</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Events</a>
            </li>
            <li>
              <a class="text-gray-600 hover:text-gray-800">Testimonials</a>
            </li>
          </nav>
        </div>
       
      </div>
    </div>
   
  
  <!--  Forth Part -->
  
   <jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
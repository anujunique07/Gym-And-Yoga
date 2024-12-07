<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
    
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


<!-- Second Part -->
<section class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto flex flex-wrap">
      <div class="flex w-full mb-20 flex-wrap">
        <h1 class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">Gym For Health & Fitness</h1>
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

  <!-- third Part -->
  <footer class="text-gray-600 body-font">
    <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
      <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
        <span class="ml-3 text-xl">Tailblocks</span>
      </a>
      <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">© 2020 Tailblocks —
        <a href="https://twitter.com/knyttneve" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@knyttneve</a>
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
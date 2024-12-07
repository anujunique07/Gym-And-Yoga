<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yoga</title>
     <!-- Tailwind Css -->
     <script src="https://cdn.tailwindcss.com"></script>
     <!-- Bootstrap(default) -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="src/output.css">
</head>
<body>
    <!-- First Part -->

     <jsp:include page="Header.jsp"></jsp:include>



      <!-- Second Part -1 -->



      <header class="bg-white">
        <div class="mx-auto max-w-screen-xl px-4 py-8 sm:px-6 sm:py-12 lg:px-8">
          <div class="flex flex-col items-start gap-4 md:flex-row md:items-center md:justify-between">
            <div>
              <h1 class="text-2xl font-bold text-gray-900 sm:text-3xl">Yoga Training</h1>
      
              <p class="mt-1.5 text-sm text-gray-500">
                You can Apply our Yoga for Normal or Personal Training and Online or Offline both mode available! 
              </p>
            </div>
      
            <div class="flex items-center gap-4">
              <a href="#"class="inline-flex items-center justify-center gap-1.5 rounded border border-gray-200 bg-white px-5 py-3 text-gray-900 transition hover:text-gray-700 focus:outline-none focus:ring">
  <span class="text-sm font-medium">Visit now</span>

  <svg
    xmlns="http://www.w3.org/2000/svg"
    class="size-4"
    fill="none"
    viewBox="0 0 24 24"
    stroke="currentColor"
    stroke-width="2"
  >
    <path
      stroke-linecap="round"
      stroke-linejoin="round"
      d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
    />
  </svg> </a>

      
            <a href="ApplyNow.jsp" class="inline-block rounded bg-indigo-600 px-5 py-3 text-sm font-medium text-white transition hover:bg-indigo-700 focus:outline-none focus:ring"
              role="button">
              Apply Now
              </a>

            </div>
          </div>
        </div>
      </header>


      <!-- Second part 2 -->
      <section class="text-gray-600 body-font">
        <div class="container  pb-16 mx-auto flex flex-wrap">
          <div class="flex flex-wrap md:-m-2 -m-1">
            <div class="flex flex-wrap w-1/2">
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga8.avif">
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga9.jpg">
              </div>
              <div class="md:p-2 p-1 w-full">
                <video 
                alt="gallery" 
                class="w-full h-full object-cover object-center block" 
                src="Assets/Video/Yogaaaa1.mp4" 
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
                src="Assets/Video/Yogaaaa2.webm" 
                autoplay 
                loop 
                muted
                playsinline>
              </video>
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yoga10.jpg">
              </div>
              <div class="md:p-2 p-1 w-1/2">
                <img alt="gallery" class="w-full object-cover h-full object-center block" src="Assets/img/Yogaaa5.jpg">
              </div>
            </div>
          </div>
        </div>
      </section>
    <!-- Second part 3 -->
    <section class="text-gray-600 body-font">
      <div class="container  mx-auto">
        <div class="flex flex-wrap -m-4">
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
              <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/img/Yoga2.avif">
              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-1">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">THE SUBTITLE</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Shooting Stars</h1>
                <p class="leading-relaxed">Photo booth fam kinfolk cold-pressed sriracha leggings jianbing microdosing tousled waistcoat.</p>
              </div>
            </div>
          </div>
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
              <video alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/Video/Yoga2.mp4" 
              autoplay 
              loop 
              muted
              playsinline>
            </video>
                
              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-0">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">Force And Fitness</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Grow Strength</h1>
                <p class="leading-relaxed"> Increase your muscle power and endurance with targeted workouts, proper nutrition, and consistent effort. 
                </p>
              </div>
            </div>
          </div>
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
              <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/img/Yogaaa1.webp">
              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">THE SUBTITLE</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">The 400 Blows</h1>
                <p class="leading-relaxed">Photo booth fam kinfolk cold-pressed sriracha leggings jianbing microdosing tousled waistcoat.</p>
              </div>
            </div>
          </div>
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
              <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/img/Yogaaa7.jpg">
              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">Force & Fitness</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Maintain discipline</h1>
                <p class="leading-relaxed">A healthy sleep cycle includes 7-9 hours of restful sleep, following a regular schedule and maintaining discipline with bedtime routines.</p>
              </div>
            </div>
          </div>
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
              <img alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/img/Yogaaa2.webp">
              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">Force & Fitness</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Grow Muscle</h1>
                <p class="leading-relaxed">To grow muscle, focus on strength training, eat protein-rich foods, stay consistent, prioritize recovery, and get enough rest..</p>
              </div>
            </div>
          </div>
          <div class="lg:w-1/3 sm:w-1/2 p-4">
            <div class="flex relative">
             
              <video alt="gallery" class="absolute inset-0 w-full h-full object-cover object-center" src="Assets/Video/Workout5.webm" 
              autoplay 
              loop 
              muted
              playsinline>
            </video>

              <div class="px-8 py-10 relative z-10 w-full border-4 border-gray-200 bg-white opacity-0 hover:opacity-100">
                <h2 class="tracking-widest text-sm title-font font-medium text-indigo-500 mb-1">Force & Fitness</h2>
                <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Grow Muscle</h1>
                <p class="leading-relaxed">
                  To grow muscle, focus on strength training, eat protein-rich foods, stay consistent, prioritize recovery, and get enough rest..</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

   
    

    <!-- Forth Part -->

    <section class="text-gray-600 body-font">
      <div class="container px-5  py-20 mx-auto flex flex-wrap">
        <div class="flex flex-wrap -mx-4 mt-auto mb-auto lg:w-1/2 sm:w-2/3 content-start sm:pr-10">
          <div class="w-full sm:p-4 px-4 mb-6">
            <h1 class="title-font font-medium text-xl mb-2 text-gray-900"> Achievements</h1>
            <div class="leading-relaxed"> At Gym and Yoga, we are proud of the progress our members are making. Here’s a glimpse into our community's success and the impact of our services.</div>
          </div>
          <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
            <h2 class="title-font font-medium text-3xl text-gray-900">3.5K</h2>
            <p class="leading-relaxed">Active Members</p>
          </div>
          <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
            <h2 class="title-font font-medium text-3xl text-gray-900">2K</h2>
            <p class="leading-relaxed">Personal Training Sessions</p>
          </div>
          <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
            <h2 class="title-font font-medium text-3xl text-gray-900">150</h2>
            <p class="leading-relaxed">Classes per Week</p>
          </div>
          <div class="p-4 sm:w-1/2 lg:w-1/4 w-1/2">
            <h2 class="title-font font-medium text-3xl text-gray-900">30</h2>
            <p class="leading-relaxed">Certified Trainers</p>
          </div>
        </div>
        <div class="lg:w-1/2 sm:w-1/3 w-full rounded-lg overflow-hidden mt-6 sm:mt-0">

          <video alt="gallery" class="object-cover object-center w-full h-full" src="Assets/Video/Yoga3.mp4" 
          autoplay 
          loop 
          muted
          playsinline>
        </video>

        </div>
      </div>
    </section>


    <!-- 5th Part -->
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-20">
          <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Our Management</h1>
          <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Effective gym management involves maintaining equipment, organizing schedules, managing staff, ensuring cleanliness, and fostering a motivating environment for members.</p>
        </div>
        <div class="flex flex-wrap -m-2">
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/80x80">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Arpit Singh</h2>
                <p class="text-gray-500">Owner</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/84x84">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Arjit bala</h2>
                <p class="text-gray-500">Senior Accountant</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/88x88">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Abhijit Roy</h2>
                <p class="text-gray-500">Promotion Head</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/90x90">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Rahul Singh</h2>
                <p class="text-gray-500">Technical & instrument Head
                </p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/94x94">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Ankit Chattarjee </h2>
                <p class="text-gray-500">Training Head</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/98x98">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Rajat Gain</h2>
                <p class="text-gray-500">Gym Mentor</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/100x90">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Siddharth Chatterjee</h2>
                <p class="text-gray-500">Supplement Distributer</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/104x94">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Samrat singh
                </h2>
                <p class="text-gray-500">Marketing And instrument Head</p>
              </div>
            </div>
          </div>
          <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
            <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
              <img alt="team" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="https://dummyimage.com/108x98">
              <div class="flex-grow">
                <h2 class="text-gray-900 title-font font-medium">Rodrigo Monchi</h2>
                <p class="text-gray-500">Health & fitness doctor</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 6th Part -->
   
    <jsp:include page="Footer.jsp"></jsp:include>

      
</body>
</html>
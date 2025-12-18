@extends('frontend.layouts.master')

@section('title', 'Home')

@section('content')
<!-- Page-title-home-1 -->

<div class="page-title-home-1">
    <div class="mb-50">
        <div class="tf-container w-1780">
            <div class="row">
                <div class="col-lg-6">
                    <div class="content">
                        <p class="s-sub-title text-white ">
                            <i class="icon-angles-right moveLeftToRight"></i>
                            Step Into Your Higher Self
                        </p>
                        <p class="s-title text-white-yellow mb-70 text-fs-70">
                            Empire for Future
                            <span class="animationtext clip">
                                <span class="cd-words-wrapper">
                                    <span class="item-text is-hidden">Entrepreneurs</span>
                                    <span class="item-text is-hidden">Builders</span>
                                    <span class="item-text is-visible">Founders</span>
                                </span>
                            </span>
                        </p>
                        <span class="line mb-75"></span>
                        <p class="text font-main-2 fw-5 mb-40">
                           GENIUS Business Advice for
New Entrepreneurs (under $1 million) Our programs give entrepreneurs a significant strategic advantage, with our outcome based strategy.
                        </p>
                        <div class="bot">
                            <a href="https://byteved.com/business-opportunity-survey/" class="tf-btn text-anime-style-1">
                                Start Here
                                <i class="icon-chevron-right"></i>
                            </a>

                            <!-- ✅ Working Video Popup --><div class="video-wrap">
    <a href="javascript:void(0);" class="fs-14 fw-7" onclick="openVideoPopup()">
        <span class="icon style-circle">
            <span class="bg"></span>
            <span class="wave-3"></span>
            <i class="icon-play fs-12"></i>
        </span>
        Watch Video
    </a>
</div>

<!-- ✅ Video Modal -->
<div id="videoModal4" class="video-modal">
    <div class="video-modal-content">
        <span class="video-close" onclick="closeVideoPopup()">&times;</span>
<!--         <iframe id="videoIframe" width="100%" height="100%" frameborder="0" allowfullscreen></iframe> -->
        
        <video id="videoElement" width="100%" height="100%" controls>
      <source src="https://byteved.com/wp-content/uploads/2025/07/c5u-video-b.mp4" type="video/mp4">
<!--             <source src="https://byteved.com/wp-content/uploads/2025/06/C5U-Video.mp4" type="video/mp4"> -->
            Your browser does not support the video tag.
        </video>
       
    </div>
</div>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="image-wrap">
                        <div class="image">
                            <img src="{{ asset('assets/images/slide1.jpg') }}" data-src="{{ asset('assets/images/slide1.jpg') }}" alt="" class="lazyload">
                        </div>
                        <div class="wg-curve-text tf-animate__box animate__slow">                          

<div class="icon img-icon" style=" width: 180px; height: 180px; border-radius: 50%; background: #84d195; display: flex; align-items: center; justify-content: center; overflow: hidden;">

  <!-- spinning circular text -->
  <div style="animation: spin 10s linear infinite; position: absolute; width: 100%; height: 100%;
    @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }">
    
   <!-- top arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="topArc" d="M250,250 m-200,0 a200,200 0 1,1 400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#topArc" startOffset="50%" text-anchor="middle">
      ENTREPRENEUR INSTITUTE
    </textPath>
  </text>
</svg>

<!-- bottom arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="bottomArc" d="M450,250 a200,200 0 1,1 -400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#bottomArc" startOffset="50%" text-anchor="middle">
      — DIGITAL COLLEGE —
    </textPath>
  </text>
</svg>


  </div>

  <!-- center logo -->
  <img 
    src="https://byteved.com/wp-content/uploads/2025/06/logo12.jpg" 
    style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover; object-position: center;" 
  />
</div>						
                            <div class="text-rotate">
                                <div class="circle">
                                    <div class="text" id="circularText"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div><!-- /.Page-title-home-1 -->
         <!-- Page-title-home-1 -->
      <!----  <div class="page-title-home-1">
            <div class="mb-50">
                <div class="tf-container w-1780">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="content">
                                <p class="s-sub-title text-white ">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    Step Into Your Higher Self
                                </p>
                                <p class="s-title text-white-yellow mb-70 text-fs-70">
                                    Empire for future
                                    <span class="animationtext clip">
                                        <span class="cd-words-wrapper">
                                            <span class="item-text is-hidden">Builders</span>
                                            <span class="item-text is-hidden">Founders</span>
                                            <span class="item-text is-visible">Investers</span>
                                        </span>
                                    </span>
                                </p>
                                <span class="line mb-75"></span>
                                <p class="text font-main-2 fw-5 mb-40">
                                    C5U isn't a Traditional Community College. We're a Digital Launchpad for Entrepreneurs — "Learning-as-a-Service", Blending Education, Mentorship, and Practical Startup Resources.
                                </p>
                                <div class="bot">
                                    <a href="our-service.html" class="tf-btn text-anime-style-1">
                                        Start Here
                                        <i class="icon-chevron-right"></i>
                                    </a>
                                    <div class="video-wrap">
                                        <a href="https://youtube.com/shorts/EAECUoU_fK8?si=QsLwxgUNXds7UEaj"
                                            class="popup-youtube fs-14 fw-7" >
                                            <span class="icon style-circle">
                                                <span class="bg"></span>
                                                <span class="wave-3"></span>
                                                <i class="icon-play fs-12"></i>
                                            </span>
                                            Watch Video
                                        </a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="image-wrap">
                                <div class="image">
                                    <img src="./images/slide1.jpg"
                                        data-src="./images/slide1.jpg" alt="" class="lazyload">
                                </div>
                                <div class="wg-curve-text tf-animate__box animate__slow">
                                    <div class="icon">
                                        <i class="flaticon-rocket"></i>
                                    </div>
                                    <div class="text-rotate">
                                        <div class="circle">
                                            <div class="text" id="circularText"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>----><!-- /.Page-title-home-1 -->
<!--<div class="lightbox" id="videoLightbox" onclick="closeLightbox(event)">
    <div class="lightbox-content" onclick="event.stopPropagation()">
      <button class="close-btn" onclick="closeLightbox(event)">&times;</button>
     
      <iframe id="videoFrame" src="" allowfullscreen></iframe>
    </div>
  </div>-->
        <!-- Main-content -->
        <div class="main-content padding-0">


             <!-- Section-feature -->
            <section class="s-feature tf-spacing-3">
                <div class="tf-container w-1780">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="wg-feature-item tf-hover-icon wow fadeInUp" data-wow-delay="0s">
                                <div class="icon-item hover-icon">
                                    <i class="flaticon-target"></i>
                                </div>
                                <p class="title font-main-2 fw-7">
                                    <a >
                                        Build with Purposeful Action
                                    </a>
                                </p>
                                <p class="text">
                                    How would you feel knowing that no matter what direction the world goes in your kids are safe? Foundational principles for entrepreneur success. If you are a parent, time is the dominant factor.
                                </p>
                                <span class="line mb-40"></span>
                                <ul class="benefit-list style-3">
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a >
                                                Success starts at home.
                                            </a>
                                        </p>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a >
                                               Prepare for any future.


                                            </a>
                                        </p>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="wg-feature-item style-2 tf-hover-icon wow fadeInUp" data-wow-delay="0.1s">
                                <div class="icon-item hover-icon">
                                    <i class="flaticon-rocket"></i>
                                </div>
                                <p class="title font-main-2 fw-7">
                                    <a >

                                       World Changing Opportunities
                                    </a>
                                </p>
                                <p class="text change-color">
                                    Self - development is your key to success. Not everyone is an expert at stocks. When in reality it's just a by-product of a really good economy and you need to go deep on what you know really well.
                                </p>
                                <span class="line mb-40"></span>
                                <ul class="benefit-list style-3">
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a >
                                               Self-growth unlocks success.
                                            </a>
                                        </p>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a >
                                                Focus on your strengths.
                                            </a>
                                        </p>
                                    </li>
                                  
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="wg-feature-item style-3 tf-hover-icon wow fadeInUp" data-wow-delay="0.2s">
                                <div class="icon-item hover-icon">
                                    <i class="flaticon-megaphone"></i>
                                </div>
                                <p class="title font-main-2 fw-7">
                                    <a  class="text-white hover-text-main-yellow">

                                        Entrepreneurship Development
                                    </a>
                                </p>
                                <p class="text">
                                    Don't let the lack of, d⁯eny you from becoming the person you desire to be. Access the correct information, strategies, tools, opportunities, and people.
                                </p>
                                <span class="line mb-40"></span>
                                <ul class="benefit-list style-3">
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a  class="text-white hover-text-main-yellow">

                                               Seek the right knowledge.
                                            </a>
                                        </p>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <i class="icon-star-of-life"></i>
                                        </div>
                                        <p>
                                            <a  class="text-white hover-text-main-yellow">

                                               Lack is not your limit.
                                            </a>
                                        </p>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-feature -->

             <!-- Section-about-company-3 -->
            <section class="s-about-company-3 tf-spacing-1">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="content-left">
                                <div class="image s1 tf-hover">
                                    <div class="hover-1">
                                        <img src="{{ asset('assets/images/section/about-3.jpg') }}" data-src="{{ asset('assets/images/section/about-3.jpg') }}"
                                            alt="" class="lazyload">
                                    </div>
                                </div>
                                <div class="image s2 tf-hover">
                                    <div class="hover-1">

                                        <img src="{{ asset('assets/images/section/about-4.jpg') }}" data-src="{{ asset('assets/images/section/about-4.jpg') }}"
                                            alt="" class="lazyload">
                                    </div>
                                </div>
                                <div class="image s3 tf-hover">
                                    <div class="hover-1">
                                        <img src="https://byteved.com/wp-content/themes/vincenttheme/images/img2.jpg" data-src="https://byteved.com/wp-content/themes/vincenttheme/images/img2.jpg"
                                            alt="" class="lazyload">
                                    </div>
                                </div>
                                <div class="wg-curve-text style-3 tf-animate__box-2 animate__slow">
<div class="icon img-icon" style=" width: 180px; height: 180px; border-radius: 50%; background: #84d195; display: flex; align-items: center; justify-content: center; overflow: hidden;">

  <!-- spinning circular text -->
  <div style="animation: spin 10s linear infinite; position: absolute; width: 100%; height: 100%;
    @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }">
    
   <!-- top arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="topArc" d="M250,250 m-200,0 a200,200 0 1,1 400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#topArc" startOffset="50%" text-anchor="middle">
      ENTREPRENEUR INSTITUTE
    </textPath>
  </text>
</svg>

<!-- bottom arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="bottomArc" d="M450,250 a200,200 0 1,1 -400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#bottomArc" startOffset="50%" text-anchor="middle">
      — DIGITAL COLLEGE —
    </textPath>
  </text>
</svg>


  </div>

  <!-- center logo -->
  <img 
    src="https://byteved.com/wp-content/uploads/2025/06/logo12.jpg" 
    style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover; object-position: center;" 
  />
</div>						
                            <div class="text-rotate">
                                <div class="circle">
                                    <div class="text" id="circularText"></div>
                                </div>
                            </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-6 about-right-home-section">
                            <div class="content">
                                <p class="s-sub-title mb-15">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    about company
                                </p>
                                <p class="s-title text-main-green-3 mb-30 text-anime-wave">
                                  The Entrepreneur's Digital
                                    <span>
                                      College
                                    </span>
                                </p>
                                <p class="text mb-40">
                                    In today’s accelerating digital economy, entrepreneurship is evolving just as fast as technology. The new currency isn’t just capital—it’s capability. And just like EVs need reliable charging to go the distance, tomorrow’s entrepreneurs need smart, scalable learning infrastructures to build real momentum.


                                </p>
                                <div class="experience mb-40">
                                    <div class="counter-wrap style-3">
                                        <div class="wg-counter style-2 type-2">
                                            <div class="odometer style-2">35</div>
                                            <span class="sub-odo">+</span>
                                        </div>
                                        <p class="sub-counter">
                                            Years Of <br>
                                            Experience
                                        </p>
                                    </div>
                                    <div class="counter-wrap style-3">
                                        <div class="wg-counter style-2 type-2">
                                            <div class="odometer style-2-2">40</div>
                                            <span class="sub-odo">k</span>
                                            <span class="sub-odo">+</span>
                                        </div>
                                        <p class="sub-counter">
                                            Our Global <br>
                                            Clients
                                        </p>
                                    </div>
                                </div>
                                <p class="text mb-40">
                                    That’s where C5U Entrepreneur Institute comes in: we’re not just a platform—we're the power grid for entrepreneurial growth.
                                </p>
                                <div class="bot">
                                    <a href="https://byteved.com/about/" class="tf-btn style-3 text-anime-style-1">Read More <i class="icon-chevron-right"></i></a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.Section-about-company-3 -->
			
			
			
 <!-- Section cta-2 -->
            <!-- /.Section service-3 -->
            <section class="s-service-3 tf-spacing-1">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="heading mb-70">
                                <p class="s-sub-title justify-center text-white">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                   ENTREPRENEUR  SERVICES
                                </p>
                                <p class="s-title text-white text-center text-anime-style-2">
                                    Expert Guidance for Every Stage of <br>
                                    Your Entrepreneur
                                    <span>
                                        Journey
                                    </span>
                                </p>
                            </div>
                            <div class="slider-wrap">
                                <div class="swiper-container slider-service-2 overflow-hidden">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="wg-service">
                                                <div class="content">
                                                    <div class="icon">
                                                        <i class="flaticon-compensation"></i>
                                                    </div>
                                                    <h3 class="mb-40">
                                                        <a href="https://byteved.com/curriculum/" class="title">
                                                            At C5U Entrepreneur Institute
, we exist to Transform Overlooked Entrepreneurs into strategic System-Builders — equipping them to Create their own Opportunities and drive Economic Change within their Communities.
                                                        </a>
                                                    </h3>
                                                   
                                                    <a href="https://byteved.com/curriculum/" class="btn-view style-3 has-text">
                                                        <span class="plus"> + </span>
                                                        <span class="read font-main-2">View More</span>
                                                    </a>
                                                </div>
                                                <div class="image">
                                                    <img src="{{ asset('assets/images/section/service.jpg') }}"
                                                        data-src="{{ asset('assets/images/img1.jpg') }}" alt="" class="lazyload">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="wg-service">
                                                <div class="content">
                                                    <div class="icon">
                                                        <i class="flaticon-compensation"></i>
                                                    </div>
                                                    <h3 class="mb-40">
                                                        <a href="https://byteved.com/curriculum/" class="title">
                                                            
                                                        At C5U Entrepreneur Institute
, we exist to Transform Overlooked Entrepreneurs into strategic System-Builders — equipping them to Create their own Opportunities and drive Economic Change within their Communities.
                                                  
                                                        </a>
                                                    </h3>
                                                    
                                                    <a href="https://byteved.com/curriculum/" class="btn-view style-3 has-text">
                                                        <span class="plus"> + </span>
                                                        <span class="read font-main-2">View More</span>
                                                    </a>
                                                </div>
                                                <div class="image">
                                                    <img src="{{ asset('assets/images/section/service.jpg') }}"
                                                        data-src="{{ asset('assets/images/section/service.jpg') }}" alt="" class="lazyload">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="direc-group">
                                    <div class="btn-slide slide-prev btn-service-2">
                                        <i class="icon-arrow-top"></i>
                                    </div>
                                    <div class="swiper-pagination tf-pagination style-4">

                                    </div>
                                    <div class="btn-slide slide-next btn-service-2">
                                        <i class="icon-arrow-top1"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <span class="item s1"></span>
                <span class="item s2"></span>
            </section>
            <!-- /.Section service-3 -->

           
			  <!-- Section-case-study-02-->
            <section class="s-case-study-02 catalog-courses">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                                <p class="s-sub-title justify-center">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    latest Catalog
                                </p>
                                <p class="s-title text-center mb-50 text-anime-wave">
                                    All PROGRAMS 
<!--                                     <span>
                                       (Catalog)
                                    </span> -->
                                </p>
                                <div class="wg-tabs style-2">
                                   
                                    <div class="widget-content-tab">
                                        <div class="widget-content-inner active">
                                            <div class="grid-layout-3">
    
            <div class="card-project style-2 tf-hover">
                <div class="tf-overlay"></div>
                <div class="image hover-1">
                    <img src="" alt="program" class="img img-responsive">
                </div>
                <div class="content">
                    <p class="tag-text-wrap">
                        <!-- Optional tags or description here -->
                    </p>
                    <a href=""
                       class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                       Home
                    </a>

                    <a href="" class="tf-btn-readmore style-4">
                        View Program <i class="icon-chevron-right"></i>
                    </a>
                </div>
            </div>
    
</div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-case-study-01 -->

              <!-- Section-working -->
            <section class="s-working tf-spacing-1 work-stepss">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                                <p class="s-sub-title mb-18 justify-center">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    working process
                                </p>
                                <p class="s-title mb-70 text-center text-anime-wave">
                                    Campuses Built for Hustlers,<br>
Not 
                                    <span>
                                       Hallways
                                    </span>
                                </p>
                                <div class="tf-accordion-type-3 accordion" id="accordionWork">
                                    <div class="accordion-item active">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#collapseWorkOne" aria-expanded="true"
                                                aria-controls="collapseWorkOne">
                                                <span class="step">
                                                    Step 01
                                                </span>
                                                <span>
                                                    Open Enrollment A Learner Driven Opportunity
                                                </span>
                                            </button>
                                        </h2>
                                        <div id="collapseWorkOne" class="accordion-collapse collapse show"
                                            data-bs-parent="#accordionWork">
                                            <div class="accordion-body">
                                                <p class="title">
                                                  Entrepreneurial Education
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    "Entrepreneurial Reflection"

Entrepreneurs build more than businesses—they build economies. C5U Entrepreneur Institute transforms how entrepreneurship is taught, offering curated insights to help learners turn ideas into impact and view entrepreneurship as a tool for community growth. 
                                                </p>
                                                
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="https://byteved.com/wp-content/uploads/2025/06/card-blog-item-2.jpg"
                                                    data-src="https://byteved.com/wp-content/uploads/2025/06/card-blog-item-2.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseWorkTwo"
                                                aria-expanded="false" aria-controls="collapseWorkTwo">

                                                <span class="step">
                                                    Step 02
                                                </span>
                                                <span>
                                                   Entrepreneurship
                                                </span>
                                            </button>
                                        </h2>
                                        <div id="collapseWorkTwo" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionWork">
                                            <div class="accordion-body">
                                                <p class="title">
                                                    Entrepreneurship
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    "Human-Centered Entrepreneurship"

Learner-driven journey in line with your entrepreneurial goals with targeted performance levels: "Proof, not promise" approach—students don’t graduate with just a certificate but with a profitable business, investor connections, and a fully functional system, not just hypothetical case studies. Students create real businesses & revenue streams.
                                                </p>
                                                
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="https://byteved.com/wp-content/uploads/2025/08/entrepreneurs-meeting-office-scaled.jpg"
                                                    data-src="https://byteved.com/wp-content/uploads/2025/08/entrepreneurs-meeting-office-scaled.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseWorkThree"
                                                aria-expanded="false" aria-controls="collapseWorkThree">

                                                <span class="step">
                                                    Step 03
                                                </span>
                                                <span>
                                                   Power of Community
                                                </span>

                                            </button>
                                        </h2>
                                        <div id="collapseWorkThree" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionWork">
                                            <div class="accordion-body">
                                                <p class="title">
                                                   Power of Community
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    "Entrepreneurial Ecosystem" C5U Entrepreneur Institute isn't just a set of courses; it’s a community-driven entrepreneurial ecosystem that connects entrepreneurs with their peers, local businesses, mentors, and resources. The program teaches you how to create scalable systems, stimulate economies, and build sustainable businesses that contribute to your community.
                                                </p>
                                               
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="https://byteved.com/wp-content/uploads/2025/08/college-girl-working-with-laptop-after-lessons_11zon-scaled.jpg"
                                                    data-src="https://byteved.com/wp-content/uploads/2025/08/college-girl-working-with-laptop-after-lessons_11zon-scaled.jpg" alt=""
                                                >
                                            </div>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-working -->

            

           

           <!-- Section faq -->
            <section class="s-faq tf-spacing-2">
                <div class="image">
                    <img src="{{ asset('assets/images/section/faq.jpg') }}" data-src="{{ asset('assets/images/section/faq.jpg') }}" alt="" class="lazyload">
                </div>
                <div class="content-wrap">
                    <div class="content-left">
                        <p class="s-sub-title text-white mb-15">
                            <i class="icon-angles-right moveLeftToRight"></i>
                            faqs
                        </p>
                        <p class="s-title text-white mb-30 text-anime-wave">
                           Why Our Method is 
                            <span>
                               Effective?

                            </span>
                        </p>
                        
                    </div>
                    <div class="content-right">
                        <div class="tf-accordion style-2 accordion" id="accordionFaq">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                        C5U Entrepreneur Institute Program Product <br>Mission Statement
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                      <p class="mb-15">  At Category 5 Universe (C5U Entrepreneur Institute), we exist to unlock entrepreneurial freedom for those overlooked by traditional education. Our program is a transformational system that empowers students to build, scale, and monetize their own business ecosystems—without debt, fluff, or delay. 
                                        <h5 class="text-white mb-10">Our promise:</h5>
                                        <p>We don’t just teach entrepreneurship—we create builders. C5U Entrepreneur Institute turns ambition into systems, ideas into income, and learners into leaders. This is not a course. This is a movement. This is how you create your own luck.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                       Building Understanding Gradually
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                       <p class="mb-15"> Each pass through the material adds depth, making learning less overwhelming and more logical.</p>
                                       <h5 class="text-white mb-10">Clarity Over Chaos</h5>
                                        <p>At C5U Entrepreneur Institute, we don’t throw everything at you at once. We guide you through strategic layers—starting with what matters most. Each layer deepens your understanding, creating structure instead of overwhelm.</p>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Improves Retention
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                       <p class="mb-15"> By connecting new details to a strong foundation, information is easier to recall and use.</p>
                                       <h5 class="text-white mb-10">Retention Through Relevance</h5>
                                        <p>You retain what you understand. By anchoring every new insight to a solid foundation, knowledge sticks—and becomes usable, not just memorable.</p>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseFour" aria-expanded="false"
                                        aria-controls="collapseFour">
                                       Saves Time
                                    </button>
                                </h2>
                                <div id="collapseFour" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                        <p class="mb-15">Focusing first on what matters most prevents wasted effort on less important facts.</p>
                                        <h5 class="text-white mb-10">Efficient by Design</h5>
                                        <p>We prioritize essential concepts first, so you spend less time spinning your wheels and more time accelerating your impact. Every layer adds ROI to your learning time.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseFive" aria-expanded="false"
                                        aria-controls="collapseFive">
                                       Boosts Confidence
                                    </button>
                                </h2>
                                <div id="collapseFive" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                        <p class="mb-15">Mastery grows as you see how pieces fit together, making learning more enjoyable and less stressful.</p>
                                        <h5 class="text-white mb-10">Confidence That Compounds</h5>
                                        <p>Each breakthrough builds on the last. As you connect the dots, you don’t just learn—you master. That clarity breeds confidence, and confidence turns into momentum.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseSix" aria-expanded="false"
                                        aria-controls="collapseSix">
                                      In Summary
                                    </button>
                                </h2>
                                <div id="collapseSix" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                        <p>People learn best in layers-starting with the big picture, then adding detail in stages. This method makes learning faster, more effective, and more enjoyable.</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseSeven" aria-expanded="false"
                                        aria-controls="collapseSeven">
                                       Debt-Free Education
                                    </button>
                                </h2>
                                <div id="collapseSeven" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionFaq">
                                    <div class="accordion-body">
                                        <p>Our Flexible Debt-Free Online Programs are designed to Accelerate Entrepreneurial Growth.</p>
                                        
                                        <p>C5U Entrepreneur Institute: Combine Knowledge, Networks, and Real-World applications into a Singular Learning experience.</p>
                                        <p>This is OPPORUNITY, In the Palm of Your Hand.</p>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="item-group">
                        <span class="item item-2"></span>
                        <span class="item item-3"></span>
                    </div>
                </div>

            </section>
            <!-- /.Section faq -->
 <!-- Section feedback-2 -->
            <section class="s-feedback-2 tf-spacing-1">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="heading mb-70">
                                <p class="s-sub-title mb-18 justify-center">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    customer feedback
                                </p>
                                <p class="s-title text-main-green-3 text-center text-anime-style-2">
                                    1380+ Customer
                                    <span>
                                        Say Us
                                    </span>
                                </p>
                            </div>
                            <div class="swiper-container slider-feedback-2">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="wg-testimonial style-3">
                                            <div class="content-left">
                                                <div class="icon style-circle mb-40">
                                                    <i class="icon-quote-left-saying-speech"></i>
                                                </div>
                                                <p class="say font-main-2 mb-30">
                                                    "This course sparked a journey of deep self-discovery and empowered me like nothing else ever has."
                                                </p>
                                                <a class="name fw-7">Dr. Angela Kittle</a>
                                                <p class="duty">Metaphysics Graduate, USA</p>
                                            </div>

                                            <div class="image-wrap">
                                                <span class="item-circle"></span>
                                                <img src="{{ asset('assets/images/item/customer-say-1.png') }}"
                                                    data-src="{{ asset('assets/images/item/customer-say-1.png') }}" alt="" class=" lazyload">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="wg-testimonial style-3">
                                            <div class="content-left">
                                                <div class="icon style-circle mb-40">
                                                    <i class="icon-quote-left-saying-speech"></i>
                                                </div>
                                                <p class="say font-main-2 mb-30">
                                                    "George’s intuitive approach helped me reconnect with my true self—completely transformational."
                                                </p>
                                                <a class="name fw-7"> Elena  </a>
                                                <p class="duty">Development Coach, Australia</p>
                                            </div>

                                            <div class="image-wrap">
                                                <span class="item-circle"></span>
                                                <img src="{{ asset('assets/images/item/customer-say-2.png') }}"
                                                    data-src="{{ asset('assets/images/item/customer-say-2.png') }}" alt="" class=" lazyload">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="wg-testimonial style-3">
                                            <div class="content-left">
                                                <div class="icon style-circle mb-40">
                                                    <i class="icon-quote-left-saying-speech"></i>
                                                </div>
                                                <p class="say font-main-2 mb-30">
                                                    "A monumental work that left me in awe. Every detail was intentional, meaningful, and enlightening."
                                                </p>
                                                <a  class="name fw-7"> Catherine Keller </a>
                                                <p class="duty">Ph.D. Drew University</p>
                                            </div>

                                            <div class="image-wrap">
                                                <span class="item-circle"></span>
                                                <img src="{{ asset('assets/images/item/customer-say-1.png') }}"
                                                    data-src="{{ asset('assets/images/item/customer-say-1.png') }}" alt="" class=" lazyload">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="direc-group">
                                    <div class="btn-slide slide-prev btn-feedback-2 style-3">
                                        <i class="icon-chevron-right1"></i>
                                    </div>
                                    <div class="swiper-pagination tf-pagination style-5"></div>

                                    <div class="btn-slide slide-next btn-feedback-2 style-3">
                                        <i class="icon-chevron-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.Section feedback-2 -->
            
 <!-- Section why-chos-why-choose-2 -->
            <section class="s-why-choose-2 tf-spacing-1 choose-section">

                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="content">
                                <p class="s-sub-title text-white mb-15">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                   Future Ready
                                </p>
                                <p class="s-title text-white mb-20 text-anime-wave">
                                    Discover Your next<br>
                                    <span>
                                         Big Step!
                                    </span>
                                </p>
                                <p class="text-white">👀 Take this 15-minute survey to find out where you stand and get a customized action plan to turn your ideas into profit!</p>
                                <p class="text-white mb-20">👉 Every successful entrepreneur starts somewhere.</p>
                                <ul class="list mb-20">
                                    <li>
                                        
                                        <a class="title">
                                           💡 You’ll Discover:
                                        </a>
                                        <p class="text">
                                           <i class="flaticon-check-mark"></i> Your Entrepreneurial Strengths.
                                        </p>
                                        <p class="text"><i class="flaticon-check-mark"></i> Hidden Opportunities You’re Missing.</p>
                                        <p class="text"><i class="flaticon-check-mark"></i> The Best Capital-Raising Strategy for You.</p>
                                        <p class="text"><i class="flaticon-check-mark"></i> Identify who and what YOU need to launch.</p>
                                        <p class="text mb-15"><i class="flaticon-check-mark"></i> "You don’t need permission — you need a playbook."</p>
                                    </li>
                                    <p>📊 At the end, you’ll see Entrepreneurship as a Network, not a Solo Endeavor.</p>
                                    
                                  
                                   
                                </ul>
								<a href="https://byteved.com/business-opportunity-survey/" class="tf-btn small">
              Start Here
              <i class="icon-chevron-right"></i>
            </a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="content-left s1">
                                <div class="image-wrap">
                                    <div class="image image-cu5-border">
                                        <img src="https://byteved.com/wp-content/uploads/2025/06/card-project-s2-4.jpg"
                                            data-src="https://byteved.com/wp-content/uploads/2025/06/card-project-s2-4.jpg" alt="" class="lazyload">
                                    </div>
<!--                                     <div class="bot">
                                        <div class="review-rating">
                                             <h3 class="new-section">
                                                    Empower. Build. Scale. Succeed.=
                                                </h3>
                                           
                                        </div> -->
                                        <div class="wg-curve-text style-4 logo-steps">
                                     <div class="icon img-icon" style=" width: 180px; height: 180px; border-radius: 50%; background: #84d195; display: flex; align-items: center; justify-content: center; overflow: hidden;">

  <!-- spinning circular text -->
 <div style="animation: spin 10s linear infinite; position: absolute; width: 100%; height: 100%;
    @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }">
    
   <!-- top arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="topArc" d="M250,250 m-200,0 a200,200 0 1,1 400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#topArc" startOffset="50%" text-anchor="middle">
      ENTREPRENEUR INSTITUTE
    </textPath>
  </text>
</svg>

<!-- bottom arc text -->
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="bottomArc" d="M450,250 a200,200 0 1,1 -400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#bottomArc" startOffset="50%" text-anchor="middle">
      — DIGITAL COLLEGE —
    </textPath>
  </text>
</svg>


  </div>

  <!-- center logo -->
  <img 
    src="https://byteved.com/wp-content/uploads/2025/06/logo12.jpg" 
    style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover; object-position: center;" 
  />
</div>						
                            <div class="text-rotate">
                                <div class="circle">
                                    <div class="text" id="circularText"></div>
                                </div>
                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                 </div> -->
                <div class="content-left s2">
                    <div class="image-wrap">
                        <div class="image image-s5u-border">
                            <img src="https://byteved.com/wp-content/uploads/2025/06/card-project-s2-4.jpg" data-src="https://byteved.com/wp-content/uploads/2025/06/card-project-s2-4.jpg"
                                alt="" class="lazyload">
                        </div>
                        <!----<div class="bot">
                         
                          <!------  <div class="wg-curve-text style-4 tf-animate__box-2 animate__slow">
                                 <div class="icon img-icon" style=" width: 180px; height: 180px; border-radius: 50%; background: #84d195; display: flex; align-items: center; justify-content: center; overflow: hidden;">

  <!-- spinning circular text -->
 <!----- <div style="animation: spin 10s linear infinite; position: absolute; width: 100%; height: 100%;
    @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }">
    
   
<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="topArc" d="M250,250 m-200,0 a200,200 0 1,1 400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#topArc" startOffset="50%" text-anchor="middle">
      ENTREPRENEUR INSTITUTE
    </textPath>
  </text>
</svg>


<svg viewBox="0 0 500 500" style="position: absolute; width: 100%; height: 100%;">
  <path id="bottomArc" d="M450,250 a200,200 0 1,1 -400,0" fill="none" />
  <text fill="black" font-size="32" font-weight="bold" letter-spacing="11">
    <textPath href="#bottomArc" startOffset="50%" text-anchor="middle">
      — DIGITAL COLLEGE —
    </textPath>
  </text>
</svg>


  </div>

  
  <img 
    src="https://byteved.com/wp-content/uploads/2025/06/logo12.jpg" 
    style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover; object-position: center;" 
  />
</div>						
                            <div class="text-rotate">
                                <div class="circle">
                                    <div class="text" id="circularText"></div>
                                </div>
                            </div>
                            </div>
                           
                        </div>------>
                    </div>
                </div>

            </section>
            <!-- /.Section why-chos-why-choose-2 -->
           

            <!-- Section-new-blog -->
            <section class="s-new-blog tf-spacing-1 blogs-home-page">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content text-center mb-70">
                                <p class="s-sub-title justify-center mb-17">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    news & Blog
                                </p>
                                <p class="s-title text-anime-wave">
                                   Insights for the Next-Gen<br> 
                                    <span>
                                       Entrepreneur
                                    </span>
                                </p>
                            </div>
                            <div class="swiper-container slider-blog overflow-hidden">
                                <div class="swiper-wrapper">
									
									
									 
                                    <div class="swiper-slide">
                                        <div class="card-blog-item tf-hover">
                                            <a href="">
                                                <div class="entry-image mb-30 hover-1 hover-14">
                                                   
                                                        <img src="" alt="" class="lazyload">
                                                    
                                                        <img src="https://via.placeholder.com/620x505" alt="No image" class="lazyload">
                                                    
                                                    <div class="entry-date">
                                                        <p class="day"></p>
                                                        <p class="month"></p>
                                                    </div>
                                                </div>
                                            </a>
                                            
                                            <a href="" class="title fw-7 mb-10 text-clamp-2">
                                                Home
                                            </a>

                                            <a href="" class="tf-btn style-3 text-anime-style-1">
                                                Read More <i class="icon-chevron-right"></i>
                                            </a>
                                        </div>
                                    </div>
									
									          
								
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-new-blog -->
			 <!-- Section contact -->
            <section class="s-contact">
                <div class="tf-container ">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content-wrap">
                                <div class="content-left">
                                    <p class="s-sub-title mb-17">
                                        <i class="icon-angles-right moveLeftToRight"></i>
                                        need consultations
                                    </p>
                                    <p class="s-title text-anime-wave">
                                        Ready to Get Free <span>
                                            Consultation ?
                                        </span>
                                    </p>
                                    <ul class="list ">
                                        
                                        <li class="wow fadeInUp" data-wow-delay="0.2s">
                                            <p class="cap">"Getting started in our Entrepreneur Program is simple and designed to meet you where you are!"</p>
                                        <p class="cap">A Community of Top Performers Consulting from a Human Experience.</p>
                                       <p class="cap">Helping entrepreneurs create magic and get closer to their goals too.</p> 
<!--                                             <p class="infor">
                                                 <br>
                                                
                                            </p> -->
                                       
                                    </ul>
                                </div>
                                <div class="content-right">
                                    <p class="title mb-30 text-center font-main-2">
                                        Get Free Consultation
                                    </p>
 			 
									
<!--                                    <form action="#" class="form-contact style-3">
                                        <div class="cols mb-20">
                                            <fieldset>
                                                <input type="text" placeholder="Full Name" required>
                                            </fieldset>
                                            <fieldset>
                                                <input type="text" placeholder="Phone" required>
                                            </fieldset>
                                        </div>
                                        <div class="cols mb-20">
                                            <fieldset>
                                                <input type="email" placeholder="Email" required>
                                            </fieldset>
                                            <fieldset>
                                                <input type="text" placeholder="Subject" required>

                                            </fieldset>
                                        </div>
                                        <div class="cols mb-20">
                                            <fieldset>
                                                <textarea class="h-100px" placeholder="Write message"></textarea>
                                            </fieldset>
                                        </div>
                                        <button type="submit" class="tf-btn full">
                                            Get Consultation
                                            <i class="icon-chevron-right"></i>
                                        </button>
                                    </form>  -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section><!-- /.Section-contact -->
			<!-- Section contact -->



            <!-- Section-partner --> <!-- Section-new-blog -->
            <section class="s-new-blog tf-spacing-1 brands-footer-section">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content text-center mb-70">
                                <p class="s-sub-title justify-center mb-17">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                   Empowering Greatness
                                </p>
                                <p class="s-title text-anime-wave">
                                  Powering Visionary 
                                    <span>
                                      Brands
                                    </span>
                                </p>
                            </div>
            <section class="s-partner">
                <div class="swiper-container slider-partner">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a>
                                <span class="tf-overlay"></span>
                                <img class="img1" src="{{ asset('assets/images/brand1.png') }}" alt="">
                                <img class="img2" src="{{ asset('assets/images/brand1.png') }}" alt="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a>
                                <span class="tf-overlay"></span>
                                <img class="img1" src="{{ asset('assets/images/brand2.png') }}" alt="">
                                <img class="img2" src="{{ asset('assets/images/brand2.png') }}" alt="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a>
                                <span class="tf-overlay"></span>
                                <img class="img1" src="{{ asset('assets/images/brand3.png') }}" alt="">
                                <img class="img2" src="{{ asset('assets/images/brand3.png') }}" alt="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a>
                                <span class="tf-overlay"></span>
                                <img class="img1" src="{{ asset('assets/images/brand4.png') }}" alt="">
                                <img class="img2" src="{{ asset('assets/images/brand4.png') }}" alt="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a>
                                <span class="tf-overlay"></span>
                                <img class="img1" src="{{ asset('assets/images/brand5.png') }}" alt="">
                                <img class="img2" src="{{ asset('assets/images/brand5.png') }}" alt="">
                            </a>
                        </div>
                        
                    </div>
                </div>
            </section>
						</div>
					</div>
					</div>
			</section><!-- /.Section-partner -->

  
        </div><!-- /.Main-content -->
@endsection

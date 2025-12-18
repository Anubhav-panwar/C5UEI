@extends('frontend.layouts.master')

@section('title', '100 CEO Army Mastermind')

@section('content')
<!-- Page-title -->
        <div class="tf-page-title ">
            <div class="content-wrap">
                <div class="bg-image">
                    <div class="rellax" data-rellax-speed="-10">
                        <img src="{{ asset('assets/images/page-title/page-title.jpg') }}" alt="">
                    </div>
                </div>
                <div class="tf-overlay"></div>
                <div class="content">
                    <div class="tf-container">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="title">
                                  100 CEO Army Mastermind
                                    
                                </p>
                                <div class="breadcrums">
                                    <a href="/">
                                        Home
                                    </a>
                                    <div class="icon">
                                        <i class="icon-chevron-r"></i>
                                    </div>
                                    <a class="current">
                                         100 CEO Army Mastermind
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div><!-- /.Page-title -->
        
         
            <!-- Section-faq -->
            <section class="s-faq-2 tf-spacing-1">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="content">
                                <p class="s-sub-title">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    Community
                                </p>
                                <p class="s-title mb-40 text-anime-wave">
CEO Mastermind
                                    <span>
                                      Hub
                                    </span>
                                </p>
                                <div class="tf-accordion style-3 accordion" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                aria-expanded="false" aria-controls="collapseOne">
                                                
                                        What is this thing, your talking about?                                 
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse "
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <p>You know, THAT THING! The thing that you don't operate from the point that you are an expert. You operate from the point that you found this thing and it works. You sell solutions to problems and answers to questions. </p><p>

You show people what to do with their hands. Your an entrepreneur, a creator. You help people to understand their industry on a deeper level.</p><p>

With your creative mind and life experience, it's how you create value for other people.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button " type="button" data-bs-toggle="collapse"
                                                data-bs-target="#collapseTwo" aria-expanded="true"
                                                aria-controls="collapseTwo">
                                               
                                        Who's it for?                                   
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                The community is designed for business owners, looking to scale their businesses,   and build strategic partnerships, entrepreneurs who are looking to achieve remarkable success, and earn at least $100,000 yearly profit, and experts looking to share knowledge, and provide coaching, tips, and transformation guidance.   If you're looking to connect, collaborate, and elevate with like-minded individuals driven to push the boundaries of their businesses, this exclusive mastermind is designed for you.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                aria-expanded="false" aria-controls="collapseThree">
                                               
                                        What you'll get?                                    
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <ul>
                                                    <li>All the benefits and features of listed in the next set of questions, enhanced by the collective intelligence of a focused mastermind group.</li>
                                                    <li>Personalized coaching from our Top-tiered industry partners, aimed to harness the collective energy of the group and guide your journey to even greater success.</li>
                                                    <li>Exclusive in-person events that provide an unparalleled opportunity to network, share ideas, and forge lasting relationships with other high-level course creators in the mastermind.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item ">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed last" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                                aria-expanded="false" aria-controls="collapseFour">
                                                
                                        How do I join the 100-CEO Army?                                 
                                            </button>
                                        </h2>
                                        <div id="collapseFour" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                You can join the waiting-list through the Category 5 website. Once you’ve completed the process, you’ll receive your welcome kit, access credentials, and information about upcoming events and resources.
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="image-wrap">
                                <div class="image">
                                    <img src="{{ asset('assets/images/widget/card-case-2.jpg') }}" data-src="{{ asset('assets/images/widget/card-case-2.jpg') }}" alt=""
                                        class="lazyload">
                                </div>
                                <div class="item-customer style-3 rellax default" data-rellax-speed="0.3">
                                    <a href="#" class="mb-15">10m+ Customer</a>
                                    <ul class="list-author mb-40">
                                        <li>
                                            <img src="{{ asset('assets/images/avatar/testimonial-author-1.jpg') }}" alt="">
                                        </li>
                                        <li>
                                            <img src="{{ asset('assets/images/avatar/customer-1.jpg') }}" alt="">
                                        </li>
                                        <li>
                                            <img src="{{ asset('assets/images/avatar/customer-3.jpg') }}" alt="">
                                        </li>
                                        <li>
                                            <img src="{{ asset('assets/images/avatar/customer-4.jpg') }}" alt="">
                                        </li>
                                    </ul>
                                    <span class="line mb-30"></span>
                                    <div class="wg-counter style-6">
                                        <div class="odometer style-6">10</div>
                                        <span class="sub-odo">%</span>
                                    </div>
                                    <p>
                                        Customers are Satisfied with the Services
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-faq -->
   <!-- Section-working -->
               <footer class="tf-footer ceo-mail">
            <div class="footer-top">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="content">
                                <p class="title font-main-2 text-anime-style-2">
                                    The Power of Collective<br> 
                                    <span> Success. </span>
                                </p>
                                <h5 class="text-white">Time to rally the troops. </h5>
                                <p class="text">
                                    Join the 100-CEO Army Mastermind Community, it's more than just gaining access to expertise; it's about building a community that thrives on collaboration, innovation, and ambition.

Your environment is an expression of your beliefs.

Here, you're not just an aspiring entrepreneur; you're an essential part of a team destined for greatness.

Join 100's of other entrepreneurs and top performers to get actionable tips, so you get on the fast track to a simple, profitable, impactful business.
                                </p>
                                

                                       <div class="col-lg-9 offset-lg-1">
                                <div class="subscribe-wrap">
<!--                                     <form action="#" id="form-sub" class="form-sub style-2">
                                        <fieldset>
                                            <input type="text" placeholder="Email Address" required="" />
                                        </fieldset>
                                       <a href="#" class="tf-btn text-anime-style-1">Join waitlist
                                    <i class="icon-chevron-right"></i></a>
                                    </form> -->
                                    
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer><!-- /.Footer -->
          <!-- Section-case-study-02-->
            <section class="s-case-study-02 ceoarmy-page">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                               
                                <div class="wg-tabs style-2">
                                   
                                    <div class="widget-content-tab">
                                        <div class="widget-content-inner active">
                                            <div class="grid-layout-2">
                                                <div class="card-project style-2 tf-hover">
                                                    <div class="tf-overlay"></div>
                                                    <div class="image hover-1">
                                                        <img src="{{ asset('assets/images/widget/card-project-s2-1.jpg') }}"
                                                            data-src="{{ asset('assets/images/widget/card-project-s2-1.jpg') }}" alt=""
                                                            class="lazyload">
                                                    </div>
                                                    
                                                </div>
                                                <div class="card-project style-2 tf-hover ">
                                                    <div class="tf-overlay"></div>
                                                    <div class="image hover-1">
                                                        <img src="{{ asset('assets/images/widget/card-project-s2-2.jpg') }}"
                                                            data-src="{{ asset('assets/images/widget/card-project-s2-2.jpg') }}" alt=""
                                                            class="lazyload">
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
@endsection

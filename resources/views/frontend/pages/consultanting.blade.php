@extends('frontend.layouts.master')

@section('title', 'Consulting')

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
                                  Consulting
                                    
                                </p>
                                <div class="breadcrums">
                                    <a href="/">
                                        Home
                                    </a>
                                    <div class="icon">
                                        <i class="icon-chevron-r"></i>
                                    </div>
                                    <a class="current">
                                       Consulting
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div><!-- /.Page-title -->

<!-- Page-title-home-2 -->
        <div class="page-title-home-2">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="swiper-container slider-home-2">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="slide-home-2">
                                        <div class="tf-overlay"></div>
                                        <div class="image">
                                            <img src="{{ asset('assets/images/page-title/page-title-home-2-3.jpg') }}"
                                                data-src="{{ asset('assets/images/section/about-7.jpg') }}" alt=""
                                                class="tf-animate-zoom-in-out lazyload">
                                        </div>
                                        <div class="content-wrap">
                                            <div class="content">
                                                
                                                <p
                                                    class="s-title text-fs-35 text-white mb-50 tf-fade-right fade-item-2">
                                                    <span>
                                                       
                                                    </span> <br>
                                                    "Getting started in our Entrepreneur <br>Program is simple and designed to meet<br> you where you are!"
                                                </p>
                                                <p class="text-white mb-20">A Community of Top Performers Consulting from a Human Experience.<br>

Helping entrepreneurs create magic and get closer to their goals too.

</p>
<a href="https://calendly.com/workdeepnothard/30min" target="_blank" class="tf-btn style-13 text-anime-style-1 pt-10" style="">Book a Call Today!<i class="icon-chevron-right"></i>
                                    </a>
                                                <div class="tf-fade-bottom fade-item-3">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              
                            </div>
                            <div class="swiper-pagination tf-pagination style-3">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.Page-title-home-2 -->

         <!-- Section faq -->
            <section class="s-faq tf-spacing-2">
                <div class="image">
                    <img src="https://byteved.com/wp-content/themes/vincenttheme/images/section/faq.jpg" data-src="https://byteved.com/wp-content/uploads/2025/06/32-scaled.jpg" alt="" class="lazyload">
                </div>
                <div class="content-wrap">
                    <div class="content-left">
                        
                        <p class="s-title text-white mb-30 text-anime-wave">
                           FAQs – Entrepreneur Consulting. 
                           
                        </p>
                        
                    </div>
                    <div class="content-right">
                        <div class="tf-accordion style-2 accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                        We Understand.
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <h5 class="mb-10 text-white">Your Current Situation:</h5>
                                      <p class="mb-15">  We know you’re serious about becoming an entrepreneur, but you may feel overwhelmed trying to figure out where to start or how to scale without making costly mistakes.</p>
                                        <h5 class="mb-10 text-white">What’s Needed:</h5>
                                      <p class="mb-15">You need a clear roadmap, real-world strategies, and unlimited support — and that’s exactly what Category 5 Universe delivers. Our program is designed to help you confidently Build, Scale, and make an Impact in your entrepreneurial journey, whether starting your first business or scaling a company.</p>
                                      <h5 class="mb-10 text-white">Next Steps:</h5>
                                      <p class="mb-15">The next step would be to first review our program details, send us an email, or schedule a brief call to see how we can support your entrepreneurial goals starting today.</p>
                                      <h5 class="mb-10 text-white">Does that match what you need?</h5>
                                      
                                      <h5 class="mb-10 text-white">Did we miss anything?</h5>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                       Do we perform magic tricks?
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                       <p class="mb-15"> "Did Elon Musk or Steve Jobs ever perform magic tricks?" </p>
                                       
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Who's it for?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                       <p class="mb-15">Those taking their first steps into the world of entrepreneurship seeking a fool-proof path to set up and launch a thriving venture and looking to achieve remarkable success.</p>
                                       
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseFour" aria-expanded="false"
                                        aria-controls="collapseFour">
                                       What will I get?
                                    </button>
                                </h2>
                                <div id="collapseFour" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <ul class="list-consult">
                                            <li>Step-by-step Training. Get confidence and clarity by following Category 5's' proven "Online transformational" training program broken down into manageable tasks and clear milestones.</li>
                                            <li>Personalized Roadmap & Feedback. Submit your work to an entrepreneur consultant for feedback so you can ensure you properly apply the frameworks for your world changing venture.</li>
                                            <li>Insights from Entrepreneur consultants. Exclusive monthly live Q&A sessions that help you tackle challenges and leverage opportunities.</li>
                                            <li>Time-saving Tools. Pre-written email scripts and page templates that help you accelerate your path to profitability.</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseFive" aria-expanded="false"
                                        aria-controls="collapseFive">
                                       How it works?
                                    </button>
                                </h2>
                                <div id="collapseFive" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p class="mb-15">Build a profitable creative idea... from the beginning. With our top-tier entrepreneur consultants as your guide, you'll move seamlessly from pinpointing your niche to building your audience, crafting your business model, and launching or scaling your product. It's your entire creative blueprint.</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseSix" aria-expanded="false"
                                        aria-controls="collapseSix">
                                     What is my first step to joining the consulting program?
                                    </button>
                                </h2>
                                <div id="collapseSix" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>Visit "Before Your Session" below, select your consultation time, and take the first step toward transforming your ideas into a tangible product. If you have questions about what to expect, we’re here to answer!"</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseSeven" aria-expanded="false"
                                        aria-controls="collapseSeven">
                                      After you fill out the form below?
                                    </button>
                                </h2>
                                <div id="collapseSeven" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>We will schedule an initial consultation where we’ll discuss your goals, challenges, and the areas you want to focus on.</p>
                                        
                                        
                                    </div>
                                </div>
                            </div>


                            <!------------->
                             <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseeight" aria-expanded="false"
                                        aria-controls="collapseeight">
                                      What can I look forward to after our conslutation call?
                                    </button>
                                </h2>
                                <div id="collapseeight" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>We will put you on the appointment calendar if we mutually agree to work together. We’ll tailor a creator plan that includes actionable steps, personalized strategies, and ongoing support to help you reach your objectives.</p>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapsenine" aria-expanded="false"
                                        aria-controls="collapsenine">
                                      How does appointment scheduling work?
                                    </button>
                                </h2>
                                <div id="collapsenine" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>When you've completed purchasing you'll be able to login to your consulting account and can find out the next steps required to book a time for your appointment from there.</p>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseten" aria-expanded="false"
                                        aria-controls="collapseten">
                                      If I'm not happy with my purchase can I get a refund?
                                    </button>
                                </h2>
                                <div id="collapseten" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>Please get in contact at any time if you're not satisfied with your coaching. We do our best to ensure all creators are happy and need to determine the eligibility of refunds on a case-by-case basis.

</p>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapsetens" aria-expanded="false"
                                        aria-controls="collapsetens">
                                      Is it possible to buy coaching more than once?
                                    </button>
                                </h2>
                                <div id="collapsetens" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>For sure! But, we recommend you join our 100-CEO Army Community in order to gain access to exclusive opportunities and network with other industry leaders.</p>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseSeven" aria-expanded="false"
                                        aria-controls="collapseSeven">
                                      What other services do we offered?
                                    </button>
                                </h2>
                                <div id="collapseSeven" class="accordion-collapse collapse"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <ul class="last-list-cons">
                                            <li>Government Contracting</li>
                                            <li>Leadership Development</li>
                                            <li>Systems & Marketing Strategy</li>
                                            <li>Nonprofit Fund Rising Consultant</li>
                                            <li>Venture Capital</li>
                                            <li>Film Finance Consultant</li>
                                            <li>Contractual Agreements</li>
                                            <li>Proposal Writing</li>
                                            <li>Content Calendar</li>
                                            <li>Pitch Decks</li>
                                             <li>Website building</li>
                                              <li>Life Coaching</li>

                                        </ul>



                                        <p>We will schedule an initial consultation where we’ll discuss your goals, challenges, and the areas you want to focus on.</p>
                                        
                                        
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
                                        Before the Magic  <span>
                                            happens...
                                        </span>
                                    </p>
                                    <p>“Your last 3 business ideas didn’t do great.

Let’s pretend for a min this one is going to do great, if it was going to do great, what would it look like?”

Please fill out the form below to help guide the hocus pocus consulting session.</p>
                                   
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
@endsection

@extends('frontend.layouts.master')

@section('title', 'Admissions')

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
                                  Admissions
                                    
                                </p>
                                <div class="breadcrums">
                                    <a href="/">
                                        Home
                                    </a>
                                    <div class="icon">
                                        <i class="icon-chevron-r"></i>
                                    </div>
                                    <a class="current">
                                        Admissions
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div><!-- /.Page-title -->
  
         <!-- Section-working -->
            <section class="s-working tf-spacing-1">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                                <p class="s-sub-title mb-18 justify-center">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    working process
                                </p>
                                <p class="s-title mb-70 text-center text-anime-wave">
                                    Explore Enrollment
                                    <span>
                                        Processes
                                    </span>
                                </p>
                                <div class="tf-accordion-type-3 accordion" id="accordionExample">
                                    <div class="accordion-item active">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                                <span class="step">
                                                    Step 01
                                                </span>
                                                <span>
                                                    Open Enrollment A Learner Driven Opportunity
                                                </span>
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse show"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <p class="title">
                                                   Open Enrollment A Learner Driven Opportunity
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    Our Program is OPEN ENROLLMENT, it's a Learner-Driven model.
<br>
We are committed to EXPANDING ACCESS to a World-Class,<br> outcome-based education to those who demonstrate a <br> willingness to earn their place in C5U by ENROLLING in our digital programs.
                                                </p>
                                                
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="{{ asset('assets/images/widget/accordion-type-3.jpg') }}"
                                                    data-src="{{ asset('assets/images/widget/accordion-type-3.jpg') }}" alt=""
                                                    class="lazyload">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                aria-expanded="false" aria-controls="collapseTwo">

                                                <span class="step">
                                                    Step 02
                                                </span>
                                                <span>
                                                   Selective Admission for Visionary Entrepreneurs
                                                </span>
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <p class="title">
                                                    Selective Admission for Visionary Entrepreneurs
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    At C5U, we don't accept everyone. We accept only those who demonstrate the willingness to be self-starting, learner-driven entrepreneurs. Visionary, Ambition, and Strategic Thinking are <br>necessary to create a Legacy.
                                                </p>
                                                
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="{{ asset('assets/images/widget/accordion-type-3-2.jpg') }}"
                                                    data-src="{{ asset('assets/images/widget/accordion-type-3-2.jpg') }}" alt=""
                                                    class="lazyload">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                aria-expanded="false" aria-controls="collapseThree">

                                                <span class="step">
                                                    Step 03
                                                </span>
                                                <span>
                                                   C5U Standard Prove You Can Build Differently
                                                </span>

                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <p class="title">
                                                    C5U Standard Prove You Can Build Differently
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                    "Each step (Courses you're enrolled in) is designed to verify your alignment with the C5U Standard. Few will complete the process.<br>

Those who do will never build businesses the same way again."
                                                </p>
                                               
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="{{ asset('assets/images/widget/accordion-type-3-3.jpg') }}"
                                                    data-src="{{ asset('assets/images/widget/accordion-type-3-3.jpg') }}" alt=""
                                                    class="lazyload">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item last">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                                aria-expanded="false" aria-controls="collapseFour">

                                                <span class="step">
                                                    Step 04
                                                </span>
                                                <span>
                                                   Elite Programs by Invitation for the Committed
                                                </span>
                                            </button>
                                        </h2>
                                        <div id="collapseFour" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <p class="title">
                                                    Elite Programs by Invitation for the Committed
                                                </p>
                                                <p class="text mb-25 tf-fade-item fade-1">
                                                   Category 5 Universe-Elite (Programs) are by Invitation Only.

Once <br>it's been determined that you're serious about being an<br> entrepreneur.

We will send you: Admissions Assessment to <br>determine if you have the Mindset, Vision, and Readiness to Earn <br>Access to Category 5 Universe-Elite.
                                                </p>
                                                
                                            </div>
                                        </div>
                                        <div class="image tf-hover">
                                            <div class="hover-1">
                                                <img src="{{ asset('assets/images/widget/accordion-type-3-4.jpg') }}"
                                                    data-src="{{ asset('assets/images/widget/accordion-type-3-4.jpg') }}" alt=""
                                                    class="lazyload">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-working -->
 <section class="saylo-admissions">
  <div class="container">
    <div class="content">
      <h2>Apply For Free & Enroll Quickly</h2>
      <p>We strive to make it as easy as possible to complete the admissions process – and there’s no fee to 
        <a href="#" class="link-cta">apply <i class="fas fa-external-link-alt"></i></a>!
      </p>
      <p>Debt-Free programs, you can apply for admission and enroll in courses almost immediately.</p>

      <h3 class="adm-adm">Explore Admission Processes:</h3>
      <ul class="process-list">
        <li><a ><i class="flaticon-check-mark"></i> Undergraduate Admissions (Bachelor's)</a></li>
        <li><a ><i class="flaticon-check-mark"></i> Graduate Admissions (Master's)</a></li>
        <li><a ><i class="flaticon-check-mark"></i> International Admissions</a></li>
      </ul>

       <h3 class="adm-adm">Three-Step Application</h3>
       <p class="pt-2">only three steps are needed to begin an online ENTREPRENEUR JOURNEY in 3-2-1......at C5UEI:</p>
      <ul class="process-list">
        <li><a href="https://byteved.com/business-opportunity-survey/"><i class="flaticon-check-mark"></i>LISTEN - Take the survey today.Undergraduate Admissions (Bachelor's)</a></li>
        <li><a href="https://byteved.com/programs/"><i class="flaticon-check-mark"></i>LEARN - Enroll in a course today and remian debt-free.</a></li>
        <li><a href="https://byteved.com/entrepreneurship-ebooks/" ><i class="flaticon-check-mark"></i>DO - Monetize off your renewed entrepreneurial knowledge base.</a></li>
      </ul>
    </div>

    <div class="cta-panel">
      <h4>Take the Next Step</h4>
      <ul class="cta-list">
        <li><a href="https://byteved.com/consultanting/"><i class="fas fa-arrow-right"></i> Request Info</a></li>
        <li><a href="https://byteved.com/programs/"><i class="fas fa-arrow-right"></i> Apply Now <i class="fas fa-external-link-alt link-icon"></i></a></li>
<!--         <li><a href="#"><i class="fas fa-arrow-right"></i> Call +1 (858) 325-9320
 </a></li> -->
        <li><a href="https://byteved.com/contact/"><i class="fas fa-arrow-right"></i> Schedule Admissions Call <i class="fas fa-external-link-alt link-icon"></i></a></li>
      </ul>
    </div>
  </div>
</section>
 <!-- /.Section-slider-project -->
            <section class="value-framework">
                <div class="footer-top">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="content">
                                <p class="title font-main-2 debit-free">
                                    Debit-Free
                                    
                                </p>
                               <p class="value-para">
								GENIUS Business Advice For New
Entrepreneurs (under $1M)
Digital Launchpad for Entrepreneurs Not a Traditional Community College
								</p>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
             <!-- Section-cta -->
            <section class="s-cta">

                <div class="tf-container w-1780">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="wrap">
                                <div class="tf-overlay">
                                </div>
                                <div class="bg-image">
                                    <div class="rellax" data-rellax-speed="0.3">
                                        <img src="{{ asset('assets/images/section/cta.jpg') }}" data-src="{{ asset('assets/images/section/cta.jpg') }}" alt=""
                                            class="lazyload">
                                    </div>
                                </div>
                                <div class="content">
                                    <p class="s-title text-white mb-40 text-clamp-4 text-anime-wave">
                                        Apply For Free & <br>Enroll
                                        <span>
                                            Quickly
                                        </span>
                                    </p>
                                    <p class="text-white mb-40">We strive to make it as easy as possible to complete the admissions process, and there's no fee to apply!

You can ENROLL and start taking courses almost immediately. </p>
                                    <a href="https://byteved.com/business-opportunity-survey/" class="tf-btn style-13 text-anime-style-1">
                                        Start Here
                                        <i class="icon-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section><!-- /.Section-cta -->
@endsection

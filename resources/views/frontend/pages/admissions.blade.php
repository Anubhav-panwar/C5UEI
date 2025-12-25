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


    <style>
        /* =========================
   Admissions Section Layout
========================= */
.saylo-admissions{
  padding: 70px 0;
  background: #f6f9fc; /* light section bg like screenshot */
}

.saylo-admissions .container{
  max-width: 1180px;
  margin: 0 auto;
  padding: 0 16px;
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  gap: 40px;
}

.saylo-admissions .content{
  flex: 1;
  min-width: 0;
}

.saylo-admissions .content h2{
  font-size: clamp(34px, 4vw, 54px);
  line-height: 1.05;
  font-weight: 900;
  color: #0a2a43;
  margin: 0 0 14px;
}

.saylo-admissions .content p{
  margin: 0 0 10px;
  color: #556575;
  font-size: 16px;
  line-height: 1.6;
}

.saylo-admissions .link-cta{
  font-weight: 800;
  color: #0a2a43;
  text-decoration: none;
  border-bottom: 1px solid rgba(10,42,67,.25);
}
.saylo-admissions .link-cta:hover{
  border-bottom-color: rgba(10,42,67,.6);
}

/* Left list styles */
.saylo-admissions .adm-adm{
  margin: 18px 0 10px;
  font-size: 34px;
  line-height: 1.1;
  font-weight: 900;
  color: #0a2a43;
}

.saylo-admissions .process-list{
  list-style: none;
  padding: 0;
  margin: 0 0 16px;
}
.saylo-admissions .process-list li{
  margin: 10px 0;
}
.saylo-admissions .process-list a{
  display: inline-flex;
  align-items: center;
  gap: 10px;
  font-weight: 700;
  color: #0a2a43;
  text-decoration: none;
}
.saylo-admissions .process-list i{
  font-size: 14px;
}

/* =========================
   Right CTA Panel (red box)
========================= */
.saylo-admissions .cta-panel{
  width: 340px;              /* close to screenshot */
  background: #062b4a;       /* deep navy */
  border-radius: 12px;
  padding: 26px 22px;
  box-shadow: 0 16px 34px rgba(2, 6, 23, 0.18);
  position: relative;
}

.saylo-admissions .cta-panel h4{
  margin: 0 0 16px;
  color: #ffffff;
  font-size: 22px;
  font-weight: 900;
}

.saylo-admissions .cta-list{
  list-style: none;
  padding: 0;
  margin: 0;
  display: grid;
  gap: 14px;
}

/* White pill buttons */
.saylo-admissions .cta-list a{
  background: #ffffff;
  border-radius: 10px;
  padding: 14px 16px;
  display: flex;
  align-items: center;
  gap: 12px;
  text-decoration: none;
  color: #0a2a43;
  font-weight: 900;
  font-size: 18px;
  line-height: 1;
  box-shadow: 0 10px 20px rgba(2, 6, 23, 0.10);
  transition: transform .15s ease, box-shadow .15s ease;
}

.saylo-admissions .cta-list a:hover{
  transform: translateY(-1px);
  box-shadow: 0 14px 26px rgba(2, 6, 23, 0.14);
}

/* Arrow icon like screenshot */
.saylo-admissions .cta-list a .fa-arrow-right{
  font-size: 18px;
  color: #0a2a43;
}

/* external link icon to the far right */
.saylo-admissions .cta-list a .link-icon{
  margin-left: auto;
  font-size: 13px;
  opacity: .9;
}

/* Make "Schedule Admissions Call" wrap like screenshot */
.saylo-admissions .cta-list a{
  white-space: normal;
}
.saylo-admissions .cta-list a:last-child{
  line-height: 1.05;
}

/* =========================
   Responsive
========================= */
@media (max-width: 992px){
  .saylo-admissions .container{
    flex-direction: column;
  }
  .saylo-admissions .cta-panel{
    width: 100%;
    max-width: 420px;
  }
}

    </style>
    <div class="cta-panel">
      <h4>Take the Next Step</h4>
      <ul class="cta-list">
        <li><a href="https://byteved.com/consultanting/"><i class="fas fa-arrow-right"></i> Request Info</a></li>
        <li><a href="https://byteved.com/programs/"><i class="fas fa-arrow-right"></i> Apply Now <i class="fas fa-external-link-alt link-icon"></i></a></li>

<li>
  <a href="https://byteved.com/contact/">
    <i class="fas fa-arrow-right"></i>
    <span>Schedule<br>Admissions Call</span>
    <i class="fas fa-external-link-alt link-icon"></i>
  </a>
</li>
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

@extends('frontend.layouts.master')

@section('title', 'Contact')

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
                                  Contact
                                    
                                </p>
                                <div class="breadcrums">
                                    <a href="/">
                                        Home
                                    </a>
                                    <div class="icon">
                                        <i class="icon-chevron-r"></i>
                                    </div>
                                    <a class="current">
                                       Contact
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div><!-- /.Page-title -->
     
<section class="s-map">
  <div class="box-map">
    <div class="map-image-wrapper">
      <img src="https://byteved.com/wp-content/uploads/2025/08/contact-img2.jpeg" alt="Office" class="map-image">
    </div>
    <div class="content-wrap">
      <div class="tf-container">
        <div class="row">
          <div class="col-lg-7 offset-lg-5">
            <div class="content">
              <div class="comment-wrap style-2">
                <h3 class="text-anime-wave">Send Us Message</h3>
                <p class="note mb-40">Your email address will not be published. Required fields are marked *</p>

<!-- 				  <div class="form-comment style-3">
					  
				  </div>  -->
                  
<!--                  <form action="#" class="form-comment style-3">
                  <div class="cols mb-20">
                    <fieldset><input type="text" placeholder="Name" required></fieldset>
                    <fieldset><input type="number" placeholder="Phone" required></fieldset>
                  </div>
                  <div class="cols mb-20">
                    <fieldset><input type="email" placeholder="Email" required></fieldset>
                    <fieldset><input type="text" placeholder="Subject" required></fieldset>
                  </div>
                  <div class="cols mb-20">
                    <fieldset><textarea placeholder="Message"></textarea></fieldset>
                  </div>
                  <div class="checkbox-item mb-30">
                    <label>
                      <span class="text">Save my name, email, and website in this browser for the next time I comment.</span>
                      <input type="checkbox" class="checkbox-item" checked>
                      <span class="btn-checkbox"></span>
                    </label>
                  </div>
                  <div class="bot">
                    <button type="submit" class="tf-btn text-anime-style-1">
                      Send Message Us
                      <i class="icon-chevron-right"></i>
                    </button>
                  </div>
                </form>  -->

                <!-- Contact Info Section -->
              <!---  <div class="info-box">
                  <div class="info-row">
                    <i class="fas fa-envelope info-icon"></i>
                    <div class="info-content">
                      <strong>Email</strong>
                      <span>example@domain.com</span>
                    </div>
                  </div>
                  <div class="info-row">
                    <i class="fas fa-phone info-icon"></i>
                    <div class="info-content">
                      <strong>Phone</strong>
                      <span>+0123456789, +9876543210</span>
                    </div>
                  </div>
                  <div class="info-row">
                    <i class="fas fa-map-marker-alt info-icon"></i>
                    <div class="info-content">
                      <strong>Office location</strong>
                      <span>#007, Street name, Bigtown BG23 4YZ, England</span>
                    </div>
                  </div>
                </div>--->
                <!-- End Contact Info -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection

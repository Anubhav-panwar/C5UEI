<footer class="tf-footer style-3">
    <div class="tf-container">
        <div class="row">
            <!-- <div class="col-lg-12">
                <div class="footer-inner">
                    <div class="footer-inner-wrap">
                        <div class="logo-site">
                            <a href="https://byteved.com/vincent-dev">
                                <img id="logo_footer" data-retina="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/logo1.jpg"
                                    src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/logo1.jpg" alt="" />
                            </a>
                        </div>

                        <ul class="social-list">
                            <li>
                                <a href="https://www.facebook.com/profile.php?id=61576667211268&mibextid=ZbWKwL" target="_blank">
                                    <i class="icon-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/c5uinstitute/profilecard/" target="_blank">
                                    <i class="fab fa-instagram fa-lg"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://tiktok.com/@100ceoarmy" target="_blank">
                                    <i class="fab fa-tiktok"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://x.com/100FishCEO" target="_blank">
                                    <i class="icon-twitter"></i>
                                </a>
                            </li>
                        </ul>

                    </div>

                    <div class="footer-inner-wrap footer-col-block">
                        <h5 class="footer-title footer-title-desktop last-view-head">Quick Links</h5>
                        <div class="menu-footer-menu-container">
                            <ul id="menu-footer-menu" class="list tf-collapse-content">
                                <li id="menu-item-62" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62"><a title="ABOUT US" href="https://byteved.com/vincent-dev/about/">ABOUT US</a></li>
                                <li id="menu-item-65" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-65"><a title="PROGRAMS" href="https://byteved.com/vincent-dev/programs/">PROGRAMS</a></li>
                                <li id="menu-item-63" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-63"><a title="ADMISSIONS" href="https://byteved.com/vincent-dev/admissions/">ADMISSIONS</a></li>
                                <li id="menu-item-61" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-61"><a title="STUDENT EXPERIENCE" href="https://byteved.com/vincent-dev/blog/">STUDENT EXPERIENCE</a></li>
                                <li id="menu-item-64" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64"><a title="CONTACT" href="https://byteved.com/vincent-dev/contact/">CONTACT</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-inner-wrap form-wrap">
                        <h5 class="footer-title">Programs</h5>
                        <ul class="list tf-collapse-content">
                            <li>
                                <a href="https://byteved.com/vincent-dev/course-catalog/">
                                    Course Catalog </a>
                            </li>
                            <li>
                                <a href="https://byteved.com/vincent-dev/ultimate-business-plan/">
                                    Ultimate Business Plan Template </a>
                            </li>
                            <li>
                                <a href="https://byteved.com/vincent-dev/100-ceo-army-mastermind/">
                                    100 CEO Army Mastermind </a>
                            </li>
                            <li>
                                <a href="https://byteved.com/vincent-dev/curriculum/">
                                    Entrepreneurship 101 Real-World Curriculum </a>
                            </li>
                            <li>
                                <a href="https://byteved.com/vincent-dev/partnership/">
                                    Partnership </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-inner-wrap s1">
                        <div class="wrap footer-col-block">
                            <h5 class="footer-title footer-title-desktop">Subscribe Now</h5>
                            <div id="form-sub" class="form-sub style-4">
                                <fieldset>
                                    <div class="icon">
                                        <p><i class="icon-envelope"></i></p>
                                        <p><input size="40" maxlength="400" class="wpcf7-form-control wpcf7-email wpcf7-validates-as-required wpcf7-text wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email Address" value="" type="email" name="your_email" /></p>
                                    </div>
                                </fieldset>
                                <p><button type="submit" class="tf-btn">Subscribe<i class="icon-chevron-right"></i></button></p>
                            </div>
                        </div>
                    </div>

                </div>
            </div> -->
            <div class="col-lg-12">
                <div class="footer-bottom relative">
                    <a class="footer-go-top">
                        <i class="icon-arrow-top fs-8"></i>
                    </a>
                    <p class="no-copy style-2">
                        Copyright © 2025 <span> Category5universe </span> , All Rights Reserved.
                    </p>
                    <div class="policy-list">
                        <ul class="list">
                            <li>
                                <a href="#"> Privacy Policy </a>
                            </li>
                            <li>
                                <a href="#"> Terms and Conditions </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
@php($assetJsFiles = array_filter(glob(public_path('assets/js/*.js')), fn($f) => basename($f) !== 'jquery.min.js'))
@foreach ($assetJsFiles as $file)
<script src="{{ asset('assets/js/' . basename($file)) }}"></script>
@endforeach

<link rel='stylesheet' id='brands-styles-css'
    href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/brands.css?ver=9.9.5' media='all' />
  <link rel='stylesheet' id='twentythirteen-fonts-css'
    href='https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A300%2C400%2C700%2C300italic%2C400italic%2C700italic%7CBitter%3A400%2C700&#038;subset=latin%2Clatin-ext&#038;display=fallback'
    media='all' />
  <link rel='stylesheet' id='twentythirteen-style-css'
    href='https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/style.css?ver=20201208' media='all' />
  <link rel='stylesheet' id='dashicons-css'
    href='https://byteved.com/vincent-dev/wp-includes/css/dashicons.min.css?ver=6.9' media='all' />
  <link rel='stylesheet' id='popup-maker-site-css'
    href='//byteved.com/vincent-dev/wp-content/uploads/pum/pum-site-styles.css?generated=1755345635&#038;ver=1.20.5'
    media='all' />
  <link rel='stylesheet' id='learnpress-widgets-css'
    href='https://byteved.com/vincent-dev/wp-content/plugins/learnpress/assets/css/widgets.min.css?ver=4.2.8.4'
    media='all' />
  <script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery.min.js?ver=3.7.1"
    id="jquery-core-js"></script>
  <script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1"
    id="jquery-migrate-js"></script>
  <script
    src="https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/js/select2.min.js?ver=4.1.0-beta.0"
    id="select2-js" defer data-wp-strategy="defer"></script>
  <script
    src="https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.9.9.5"
    id="jquery-blockui-js" defer data-wp-strategy="defer"></script>
<script>
    function openVideoPopup() {
        const modal = document.getElementById("videoModal4");
        const video = document.getElementById("videoElement");
        modal.style.display = "block";
        video.currentTime = 0;
        video.play();
    }

    function closeVideoPopup() {
        const modal = document.getElementById("videoModal4");
        const video = document.getElementById("videoElement");
        video.pause();
        video.currentTime = 0;
        modal.style.display = "none";
    }
</script>
<script>
    $(document).ready(function() {
        $('.popup-video').magnificPopup({
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false
        });
    });
</script>
</div>
</body>

</html>

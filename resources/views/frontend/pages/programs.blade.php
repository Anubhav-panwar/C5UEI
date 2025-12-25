@extends('frontend.layouts.master')

@section('title', 'Programs')

@section('content')
    <style id="wp-custom-css">

      /* ✅ Seamless marquee loop */
.s-break .tf-marquee{
  overflow: hidden;
  background: #051229; /* optional */
}

.s-break .marquee-track{
  display: flex;
  width: max-content;
  will-change: transform;
  animation: marqueeLoop 18s linear infinite; /* speed */
}

.s-break .wrap-marquee{
  display: flex;
  align-items: center;
  flex-wrap: nowrap;
}

.s-break .marquee-item{
  flex: 0 0 auto;
  padding: 18px 40px; /* spacing between repeats */
}

.s-break .marquee-item p{
  margin: 0;
  color: #fff;
  font-weight: 900;
  font-size: 28px; /* match your screenshot */
  white-space: nowrap;
}

/* Move by exactly half because we duplicated the track */
@keyframes marqueeLoop{
  0%   { transform: translateX(0); }
  100% { transform: translateX(-50%); }
}

/* Optional: pause on hover */
.s-break .tf-marquee:hover .marquee-track{
  animation-play-state: paused;
}

        /* --- Launch Section (Enroll Today) --- */
        .launch-llc-section {
            max-width: 1100px;
            margin: 0 auto;
            padding: 10px 16px 0;
            text-align: center;
        }

        .launch-llc-section .s-title {
            font-size: clamp(34px, 4.2vw, 56px);
            font-weight: 900;
            letter-spacing: -0.02em;
            margin: 0 0 6px;
            color: #0b1220;
        }

        .llc-subtitle {
            margin: 0 0 22px;
            font-size: 16px;
            color: #516076;
        }

        .llc-form-row {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 18px;
            flex-wrap: wrap;
            margin: 10px 0 50px;
        }

        /* Dropdown shell */
        .llc-dropdown {
            position: relative;
            width: min(360px, 90vw);
            display: flex;
            align-items: center;
            border: 2px solid #0b1630;
            padding: 0;
            border-radius: 14px;
            background: #ffffff;
            height: 58px;
        }

        .llc-dropdown .dropdown-number {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            width: 34px;
            height: 34px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            background: #0b1630;
            color: #ffffff;
            font-weight: 800;
            font-size: 14px;
            z-index: 2;
            pointer-events: none;
        }

        .llc-dropdown select {
            width: 100%;
            height: 100%;
            border: none;
            background: transparent;
            color: #0b1220;
            font-weight: 600;
            font-size: 15px;
            padding: 0 44px 0 62px;
            outline: none;
            appearance: none;
        }

        /* Start button */
        .llc-button {
            height: 58px;
            min-width: 180px;
            padding: 0 28px;
            border-radius: 14px;
            background: #0b1630;
            color: #ffffff !important;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-weight: 800;
            text-decoration: none !important;
            box-shadow: 0 12px 24px rgba(2, 6, 23, 0.12);
            transition: transform .15s ease, box-shadow .15s ease;
            cursor: pointer;
        }

        .llc-button:hover {
            transform: translateY(-1px);
            box-shadow: 0 16px 30px rgba(2, 6, 23, 0.16);
        }

        /* --- Help Cards (Side-by-Side) --- */
        .entity-help-links {
            max-width: 1100px;
            margin: 40px auto 0;
            padding: 6px 16px 24px;
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 22px;
            text-align: left;
        }

        .help-cardss {
            border: 1px solid #e5e7eb;
            background: #ffffff;
            border-radius: 14px;
            padding: 22px 22px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            box-shadow: 0 10px 20px rgba(2, 6, 23, 0.05);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .help-cardss:hover {
            border-color: #051229;
            box-shadow: 0 4px 10px rgba(5, 18, 41, 0.08);
        }

        .text-contentss strong {
            display: block;
            font-size: 18px;
            font-weight: 900;
            color: #0b1220;
            margin-bottom: 4px;
        }

        .text-contentss p {
            margin: 0;
            color: #516076;
            font-size: 14px;
            line-height: 1.45;
        }

        .text-contentss a {
            text-decoration: none;
            color: inherit;
        }

        .arrow.arrow-curriculum {
            width: 44px;
            height: 44px;
            border-radius: 10px;
            background: #0b1630;
            color: #ffffff;
            display: grid;
            place-items: center;
            font-size: 24px;
            font-weight: 900;
            line-height: 1;
        }

        .help-cardss>a {
            display: inline-flex;
            text-decoration: none;
        }

        @media (max-width: 900px) {
            .entity-help-links {
                grid-template-columns: 1fr;
            }
            .llc-dropdown, .llc-button {
                width: min(520px, 92vw);
            }
        }

        /* --- Tabs Container (Listen, Learn, Do) --- */
        .tabs-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: auto;
            gap: 40px;
            align-items: flex-start;
            padding-top: 40px;
        }

        .tabs-left {
            flex: 1 1 400px;
        }

        .tabs-header {
            display: flex;
            border-radius: 12px;
            overflow: hidden;
            background: #f1f1f1;
            margin-bottom: 24px;
        }

        .tab-button {
            flex: 1;
            padding: 14px 20px;
            border: none;
            font-weight: 600;
            cursor: pointer;
            background: transparent;
            transition: all 0.3s ease;
            color: #333;
        }

        .tab-button.active {
            background-color: #051229;
            color: #fff;
        }

        .tab-content {
            display: none;
            flex-direction: column;
            gap: 20px;
        }

        .tab-content.active {
            display: flex;
        }

        .tab-card {
            display: flex;
            align-items: center;
            padding: 16px;
            background-color: #fff;
            border-radius: 16px;
            box-shadow: 0 4px 12px rgb(5 18 41);
            transition: box-shadow 0.3s ease;
            margin-bottom: 15px;
        }

        .card-icon {
            width: 64px;
            height: 64px;
            border-radius: 16px;
            background-color: #fff;
            border: 2px solid #051229;
            padding: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            font-weight: bold;
            color: #ff5e14;
            margin-right: 16px;
            flex-shrink: 0;
        }

        .card-icon img {
            border-radius: 5px;
            width: 100%;
            height: auto;
        }

        .card-text {
            font-size: 16px;
            line-height: 1.4;
            font-weight: 500;
        }

        .tabs-right {
            flex: 1 1 500px;
        }

        .tabs-right img {
            width: 100%;
            border-radius: 24px;
            object-fit: cover;
        }

        @media (max-width: 768px) {
            .tabs-container {
                flex-direction: column;
            }
            .tabs-right {
                order: -1;
            }
        }

        /* --- C5U Learn Tabs (License/Resell/Build) --- */
        .c5u-learn-tabs-two-column {
            padding: 60px 20px;
            font-family: 'Poppins', sans-serif;
            background-color: #fff;
        }

        .c5u-learn-container {
            max-width: 1300px;
            margin: auto;
        }

        .c5u-learn-row {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: flex-start;
        }

        .c5u-learn-left, .c5u-learn-right {
            flex: 1;
            min-width: 300px;
        }

        .c5u-learn-heading h2 {
            font-size: 36px;
            font-weight: 700;
        }

        .c5u-learn-heading span {
            color: #0b2b64;
        }

        .c5u-learn-heading p {
            margin: 10px 0 30px;
            color: #555;
        }

        .c5u-learn-tab-buttons {
            display: flex;
            gap: 15px;
            margin-bottom: 30px;
        }

        .c5u-tab-btn {
            padding: 10px 20px;
            background: #f3f3f3;
            border-radius: 8px;
            border: none;
            font-weight: 600;
            cursor: pointer;
            width: 30%;
        }

        .c5u-tab-btn.active {
            background-color: #051229;
            color: #fff;
        }

        .c5u-tab-panel {
            display: none;
        }

        .c5u-tab-panel.active {
            display: block;
        }

        .c5u-learn-right img {
            width: 100%;
            border-radius: 12px;
        }

        @media (max-width: 768px) {
            .c5u-learn-row {
                flex-direction: column;
            }
            .c5u-learn-right {
                order: -1;
            }
        }

        /* --- Dashboard Section --- */
        section.section.dashboard-section {
            padding-top: 40px;
            padding-bottom: 50px;
            margin-top: 90px;
            margin-bottom: 80px;
            background-color: #051229;
        }

        section.section.dashboard-section table,
        section.section.dashboard-section th,
        section.section.dashboard-section td {
            border: 1px solid #fff !important;
        }

        section.section.dashboard-section .left-content {
            flex: 1 1 40%;
            border: 2px solid #fff;
            border-radius: 10px;
            padding: 20px;
        }

        section.section.dashboard-section .left-content h1 {
            font-size: 42px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        section.section.dashboard-section .left-content p {
            font-size: 18px;
            color: var(--text-muted);
            line-height: 1.6;
        }

        section.section.dashboard-section img {
            padding-top: 4%;
            max-width: 100%;
        }

        section.section.dashboard-section .right-content {
            flex: 1 1 55%;
            border: 2px solid #fff;
            border-radius: 12px;
            padding: 15px 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.06);
        }

        section.section.dashboard-section .right-content h4 {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        section.section.dashboard-section table {
            width: 100%;
            border-collapse: collapse;
        }

        section.section.dashboard-section th,
        section.section.dashboard-section td {
            padding: 12px 15px;
            text-align: left;
            font-size: 15px;
            color: #fff;
            border-bottom: 1px solid #fff;
        }

        section.section.dashboard-section th {
            font-weight: 600;
        }

        section.section.dashboard-section .status {
            padding: 6px 14px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
            display: inline-block;
        }

        section.section.dashboard-section .good {
            background-color: #d6f5e7;
            color: #2b7a4b;
        }

        section.section.dashboard-section .pending {
            background-color: #ffe7cc;
            color: #c27800;
        }

        @media (max-width: 768px) {
            section.section.dashboard-section .container .row {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }
            section.section.dashboard-section .left-content,
            section.section.dashboard-section .right-content {
                width: 100%;
            }
        }

        /* --- Learn Tab Specifics --- */
        .widget-content-inner.learn-tab-layout {
            padding: 40px 30px;
            border-radius: 12px;
        }

        .learn-tab-layout .learn-card {
            background: linear-gradient(145deg, #ffffff, #f0f0f0);
            border: 3px solid #051229;
            border-radius: 16px;
            padding: 15px 15px;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 10px 18px rgba(0, 0, 0, 0.03);
            transition: all 0.3s ease;
            position: relative;
            height: 100%;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .learn-tab-layout .learn-card:hover {
            transform: translateY(-6px);
            background: linear-gradient(145deg, #ffffff, #e9f3f8);
            box-shadow: 0 15px 28px rgba(0, 0, 0, 0.1);
        }

        .learn-tab-layout .learn-icon {
            width: 60px;
            height: 60px;
        }

        .learn-tab-layout .learn-icon img {
            width: 100%;
            height: auto;
            object-fit: contain;
        }

        .learn-tab-layout h5 {
            font-size: 24px;
            font-weight: 600;
            color: #111;
            margin: 0;
        }

        .learn-tab-layout .learn-arrow {
            font-size: 24px;
            background-color: #051229;
            font-weight: bold;
            position: absolute;
            right: 20px;
            padding: 7px;
            border-radius: 6px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .learn-button {
            background-color: #051229;
            color: var(--White);
            font-size: 18px;
            font-weight: 700;
            line-height: 22px;
            padding: 15px 31px 15px 30px;
            border-radius: 10px;
            border: none;
            cursor: pointer;
        }

        /* --- Modals --- */
        .modal {
            display: none;
            position: fixed;
            z-index: 9999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background: rgba(0, 0, 0, 0.7);
        }

        .modal-content {
            background: white;
            margin: 5% auto;
            padding: 20px;
            max-width: 900px;
            width: 90%;
            border-radius: 8px;
            position: relative;
            max-height: 90vh;
            overflow-y: auto;
        }

        .close {
            position: absolute;
            right: 15px;
            top: 10px;
            font-size: 28px;
            color: #aaa;
            cursor: pointer;
        }

        .close:hover {
            color: #000;
        }

        /* --- Pricing/Cards Override --- */
        .price-program .wg-pricing .price {
            font-size: 40px !important;
        }
        
        .card-service-2 .image img, 
        .card-project .image img {
            width: 100%;
            object-fit: cover;
        }

        .tf-btn.style-15 {
            background-color: #051229;
            color: #fff;
            padding: 12px 24px;
            border-radius: 6px;
            display: inline-block;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .value-btn {
            background-color: #051229;
            color: #fff;
            font-size: 18px;
            font-weight: 700;
            padding: 15px 30px;
            border-radius: 10px;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        /* --- Utility/Misc --- */
        .mb-70 { margin-bottom: 70px; }
        .mb-20 { margin-bottom: 20px; }
        .text-center { text-align: center; }
        .text-white { color: #fff; }
        
        .catalog-courses .swiper-slide {
            height: auto;
        }
        
        .list-about li {
            list-style: none;
            margin-bottom: 10px;
        }
        
        .list-about i {
            color: #84d195;
            margin-right: 8px;
        }

    </style>
    
    <div class="tf-page-title ">
        <div class="content-wrap">
            <div class="bg-image">
                <div class="rellax" data-rellax-speed="-10">
                    <img src="https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/./images/page-title/page-title.jpg"
                        alt="">
                </div>
            </div>
            <div class="tf-overlay"></div>
            <div class="content">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="title">
                                PROGRAMS
                            </p>
                            <div class="breadcrums">
                                <a href="https://byteved.com/vincent-dev">
                                    Home
                                </a>
                                <div class="icon">
                                    <i class="icon-chevron-r"></i>
                                </div>
                                <a class="current">
                                    PROGRAMS </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <section class="s-break">
  <div class="tf-marquee type-2 default text-run">
    <div class="marquee-track">
      
      <!-- Track 1 (your current items) -->
      <div class="wrap-marquee">
        <div class="marquee-item"><div class="s1"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s2"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s1"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s2"><p>Enroll Today !-</p></div></div>
      </div>

      <!-- Track 2 (duplicate same items) -->
      <div class="wrap-marquee" aria-hidden="true">
        <div class="marquee-item"><div class="s1"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s2"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s1"><p>Enroll Today !-</p></div></div>
        <div class="marquee-item"><div class="s2"><p>Enroll Today !-</p></div></div>
      </div>

    </div>
  </div>
</section>


    <section class="s-our-saylo tf-spacing-1 gap-purpose program-section">
        <div class="tf-container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="heading">
                        <p class="s-title text-main-green-3 text-anime-wave">
                            Start Entrepreneurship <br>with
                            <span>Intent</span>
                        </p>
                    </div>
                </div>
                <div class="col-lg-5">
                    <h6 class="mb-15">Entrepreneurs don't just build businesses—they build economies.</h6>
                    <p>Experience a Debt-free, Transformative Approach to Entrepreneurial Education that's Structured,
                        Strategic, and Success Driven.</p>
                </div>

                <div class="col-lg-12">
                    <div class="wg-tabs">
                        <ul class="overflow-x-auto menu-tab main-tabss">
                            <li class="item active"><a href="javascript:void(0)"><span>Enroll</span></a></li>
                            <li class="item"><a href="javascript:void(0)"><span>Featured</span></a></li>
                            <li class="item"><a href="https://byteved.com/vincent-dev/entrepreneurship-ebooks/"
                                    target="_blank"><span>Library</span></a></li>
                            <li class="item"><a href="javascript:void(0)"><span>Learn</span></a></li>

                        </ul>

                        <div class="widget-content-tab">
                            <div class="widget-content-inner active">
                                <div class="launch-llc-section">
                                    <h2 class="s-title text-center">Enroll today</h2>
                                    <p class="llc-subtitle">Say goodbye to stress and hello to your new business.</p>

                                    <div class="llc-form-row">

                                        <div class="llc-dropdown">
                                            <span class="dropdown-number">1</span>
                                            <select id="curriculum_category" name="curriculum_category">
                                                <option value="">Pick Course</option>
                                                <option value="9">Advanced Concepts</option>
                                                <option value="14">All Collection</option>
                                                <option value="7">Entrepreneurship eBooks</option>
                                                <option value="5">Foundational Concepts</option>
                                                <option value="6">Funding and Finance</option>
                                                <option value="11">Leadership and Team Building</option>
                                                <option value="13">Marketing and Sales</option>
                                                <option value="12">Operations and Scaling</option>
                                                <option value="10">Personal Development</option>
                                                <option value="4">Podcast - Course and eBook reviews.</option>
                                                <option value="8">Spiritual &amp; Mental Health eBooks</option>
                                            </select>
                                        </div>

                                        <div class="llc-dropdown">
                                            <span class="dropdown-number">2</span>
                                            <select id="lp_course_select" name="lp_course_select">
                                                <option value="">Pick Curriculum</option>
                                            </select>
                                        </div>
                                        <a id="start-course-btn" class="llc-button">Start Here</a>
                                    </div>

                                </div>

                                <section class="entity-help-links">
                                    <div class="help-cardss">
                                        <div class="text-contentss">
                                            <strong>Discover your next big step!</strong>
                                            <p>Quick 15-Minute survey to find out where you stand, turn your ideas into
                                                profit!</p>
                                        </div>
                                        <a href="https://byteved.com/vincent-dev/business-opportunity-survey/">
                                            <div class="arrow arrow-curriculum">&rsaquo;</div>
                                        </a>
                                    </div>

                                    <div class="help-cardss">
                                        <div class="text-contentss">
                                            <a href="https://byteved.com/vincent-dev/the-navigator/"> <strong>Too Big To
                                                    Fail</strong></a>
                                            <p>The go-to Licensing ecosystem for entrepreneurial education.</p>
                                        </div>
                                        <a href="https://byteved.com/vincent-dev/the-navigator/">
                                            <div class="arrow arrow-curriculum">&rsaquo;</div>
                                        </a>
                                    </div>
                                </section>
                            </div>

                            <div class="widget-content-inner form-froms">

                                <section class="s-service-4 tf-spacing-1 course-two"
                                    style="padding-top:0px; display:none !important;">
                                    <div class="tf-container">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <div class="grid-layout-2"
                                                    style="display: grid; grid-template-columns: repeat(3, 1fr); display:none;">

                                                    <div class="card-service-2 tf-hover">
                                                        <div class="image hover-1 hover-14">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1inp1o2h5hso1otu1g7a1caj90tu.avif"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1inp1o2h5hso1otu1g7a1caj90tu.avif"
                                                                alt="3-2-1: I Create My Own Luck" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/courses/3-2-1-i-create-my-own-luck/"
                                                                class="title fw-7">
                                                                3-2-1: I Create My Own Luck </a>
                                                            <br>
                                                            <span class="lh-sm">
                                                                Program Overview BUILD | SCALE | IMPACT The C5U
                                                                Entrepreneurial Framework is an 8-12
                                                                week hands-on, outcome-driven entrepreneurship program
                                                                designed to equip aspiring
                                                                entrepreneurs with the &hellip; <br><a
                                                                    href="https://byteved.com/vincent-dev/courses/3-2-1-i-create-my-own-luck/"
                                                                    class="more-link"><span
                                                                        class="meta-nav">&rarr;</span></a></span>

                                                            <h6 class="mb-10 list-formation">Success Pathways &amp;
                                                                Milestones</h6>
                                                            <ul>
                                                                <li>$1K Pathway – Validate and launch your idea.</li>
                                                                <li>$100K Pathway – Scale your business systems and
                                                                    automation.</li>
                                                                <li>$1M Pathway – Dominate your market with authority and
                                                                    influence.</li>
                                                                <li>Make $1K before you finish the course.</li>
                                                            </ul>
                                                        </div>
                                                    </div>


                                                    <div class="card-service-2 tf-hover">
                                                        <div class="image hover-1 hover-14">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/millinaire12.png"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/millinaire12.png"
                                                                alt="The Millionaire Fork in the Road" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/courses/the-millionaire-fork-in-the-road/"
                                                                class="title fw-7">
                                                                The Millionaire Fork in the Road </a>
                                                            <br>
                                                            <span class="lh-sm">
                                                                Help learners identify their decision-making style and its
                                                                effect on business growth
                                                                by placing them in a high-stakes entrepreneurial
                                                                scenario.</span>

                                                            <p>
                                                                You’re launching your first premium product on Category 5.
                                                                You’ve built buzz, set up
                                                                your landing page, and have $5,000 left in your launch
                                                                budget. Your inbox dings —
                                                                three opportunities have just landed on your desk… but you
                                                                can only pursue one. Choose
                                                                wisely. Your decision will shape your brand’s future.
                                                            </p>
                                                        </div>
                                                    </div>


                                                    <div class="card-service-2 tf-hover">
                                                        <div class="image hover-1 hover-14">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/08/ceo.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/08/ceo.jpg"
                                                                alt="Modern CEO: Paradox of Freedom" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/courses/modern-ceo-paradox-of-freedom/"
                                                                class="title fw-7">
                                                                Modern CEO: Paradox of Freedom </a>
                                                            <br>
                                                            <span class="lh-sm">
                                                                This is a 9-week implementation program designed for
                                                                service-based entrepreneurs who
                                                                are stuck in the &#8220;do-it-all&#8221; trap. You’ll go
                                                                from &hellip; <br><a
                                                                    href="https://byteved.com/vincent-dev/courses/modern-ceo-paradox-of-freedom/"
                                                                    class="more-link"><span
                                                                        class="meta-nav">&rarr;</span></a></span>

                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </section>



                                <section class="s-pricing tf-spacing-3 price-program"
                                    style="padding-top: 0px !important;">
                                    <div class="tf-container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="heading mb-70">
                                                    <p class="s-sub-title mb-18 justify-center">
                                                        <i class="icon-angles-right moveLeftToRight"></i>
                                                        FEATURED Products
                                                    </p>
                                                    <p class="s-title text-center">
                                                        Flexible, Debt-Free Learning for <br>Entrepreneurial
                                                        <span>
                                                            Growth
                                                    </p>
                                                    <h5 class="text-center">Get Started W/ these 3 best-Sellers</h5>
                                                </div>
                                            </div>



                                            <div class="col-lg-4 col-md-6">
                                                <div class="wg-pricing last ">

                                                    <div class="price-wrap mb-20">
                                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1inp1o2h5hso1otu1g7a1caj90tu.avif"
                                                            class="plan-img">
                                                        <p class="price mb-20">
                                                            <a
                                                                href="https://byteved.com/vincent-dev/courses/3-2-1-i-create-my-own-luck/">
                                                                3-2-1: I Create My Own Luck </a>
                                                        </p>
                                                        <ul>
                                                            <li><span class="lh-sm">
                                                                    Program Overview BUILD | SCALE | IMPACT The C5U
                                                                    Entrepreneurial Framework is an 8-12
                                                                    week hands-on, outcome-driven entrepreneurship program
                                                                    designed to equip aspiring
                                                                    entrepreneurs with the &hellip; <br><a
                                                                        href="https://byteved.com/vincent-dev/courses/3-2-1-i-create-my-own-luck/"
                                                                        class="more-link"><span
                                                                            class="meta-nav">&rarr;</span></a></span>

                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <a href="https://byteved.com/vincent-dev/courses/3-2-1-i-create-my-own-luck/"
                                                        class="tf-btn style-3 full mb-35">
                                                        ENROLL
                                                        <i class="icon-chevron-right"></i>
                                                    </a>

                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="wg-pricing last ">

                                                    <div class="price-wrap mb-20">
                                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/millinaire12.png"
                                                            class="plan-img">
                                                        <p class="price mb-20">
                                                            <a
                                                                href="https://byteved.com/vincent-dev/courses/the-millionaire-fork-in-the-road/">
                                                                The Millionaire Fork in the Road </a>
                                                        </p>
                                                        <ul>
                                                            <li><span class="lh-sm">
                                                                    Help learners identify their decision-making style and
                                                                    its effect on business growth
                                                                    by placing them in a high-stakes entrepreneurial
                                                                    scenario.</span>

                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <a href="https://byteved.com/vincent-dev/courses/the-millionaire-fork-in-the-road/"
                                                        class="tf-btn style-3 full mb-35">
                                                        ENROLL
                                                        <i class="icon-chevron-right"></i>
                                                    </a>

                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="wg-pricing last ">

                                                    <div class="price-wrap mb-20">
                                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/08/ceo.jpg"
                                                            class="plan-img">
                                                        <p class="price mb-20">
                                                            <a
                                                                href="https://byteved.com/vincent-dev/courses/modern-ceo-paradox-of-freedom/">
                                                                Modern CEO: Paradox of Freedom </a>
                                                        </p>
                                                        <ul>
                                                            <li><span class="lh-sm">
                                                                    This is a 9-week implementation program designed for
                                                                    service-based entrepreneurs who
                                                                    are stuck in the &#8220;do-it-all&#8221; trap. You’ll go
                                                                    from &hellip; <br><a
                                                                        href="https://byteved.com/vincent-dev/courses/modern-ceo-paradox-of-freedom/"
                                                                        class="more-link"><span
                                                                            class="meta-nav">&rarr;</span></a></span>

                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <a href="https://byteved.com/vincent-dev/courses/modern-ceo-paradox-of-freedom/"
                                                        class="tf-btn style-3 full mb-35">
                                                        ENROLL
                                                        <i class="icon-chevron-right"></i>
                                                    </a>

                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </section>
                            </div>

                            <div class="widget-content-inner">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>Your Business Growth Hub</h3>
                                        <p>Access a curated collection of tools, funding insights, and practical guides to
                                            help you
                                            launch, grow, and scale with confidence. Whether you're just starting or
                                            optimizing, C5UEI’s
                                            Library helps you build smarter and faster.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="widget-content-inner learn-tab-layout">
                                <div class="row g-4">
                                    <div class="col-md-4">
                                        <a class="learn-card"
                                            href="https://byteved.com/vincent-dev/ultimate-business-plan/">
                                            <div class="learn-icon icon-images">
                                                <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1itbre8d1hg1s0bmjt12b25m6r.avif"
                                                    alt="Bizzee Guides" />
                                            </div>
                                            <h5 class="icon-first-heading">Ultimate Business Plan</h5>

                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <a class="learn-card" href="https://byteved.com/vincent-dev/course-catalog/">
                                            <div class="learn-icon">
                                                <img src="https://cdn-icons-png.flaticon.com/512/1828/1828942.png"
                                                    alt="Tools" />
                                            </div>
                                            <h5>Tools</h5>
                                            <div class="learn-arrow">&rsaquo;</div>
                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <a class="learn-card" href="https://byteved.com/vincent-dev/blog/">
                                            <div class="learn-icon">
                                                <img src="https://cdn-icons-png.flaticon.com/512/1828/1828859.png"
                                                    alt="Blog Articles" />
                                            </div>
                                            <h5>Blog Articles</h5>
                                            <div class="learn-arrow">&rsaquo;</div>
                                        </a>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="learn-card learn-cont">


                                            <button class="learn-button" onclick="openModal()">
                                                C5UEI 101
                                            </button>
                                            <div class="learn-arrow">&rsaquo;</div>
                                        </div>
                                    </div>

                                    <div id="learnModal" class="modal">
                                        <div class="modal-content">
                                            <span class="close" onclick="closeModal()">&times;</span>
                                            <div class="modal-body">
                                                <h2>Entrepreneurship: A Step-by-Step Guide to Starting, Launching, Scaling,
                                                    Marketing, and
                                                    Raising Capital for Your Business</h2>
                                                <p><strong>Introduction:</strong><br>
                                                    Entrepreneurship is an exciting and challenging journey, but it's often
                                                    filled with
                                                    uncertainty. Whether you're a budding entrepreneur with a dream or a
                                                    seasoned professional
                                                    looking to refine your skills, this guide is designed to help you
                                                    through every stage of
                                                    building a successful business. From ideation to scaling, each chapter
                                                    will provide you with
                                                    practical, actionable steps to take control of your entrepreneurial
                                                    path.</p>

                                                <p>This book is not just about theory—it's about practice. By the end of
                                                    this journey, you'll
                                                    have your own business, a solid marketing strategy, a clear growth plan,
                                                    and the knowledge
                                                    to raise capital effectively. The steps are broken down in a way that
                                                    allows you to focus on
                                                    one milestone at a time.</p>

                                                <h3>Chapter 1: Laying the Foundation - Understanding Entrepreneurship</h3>
                                                <p><strong>Step 1: Defining Your Why</strong><br>
                                                    Before diving into the world of business, you need to clarify your
                                                    motivation. Why do you
                                                    want to become an entrepreneur? What are your personal and professional
                                                    goals? Write down
                                                    your reasons in a journal to refer back to when challenges arise.</p>

                                                <p><strong>Step 2: Understanding What Entrepreneurship Is</strong><br>
                                                    Entrepreneurship isn't just about starting a business; it's about
                                                    solving problems and
                                                    creating value. Successful entrepreneurs identify opportunities where
                                                    others see obstacles.
                                                    Take the time to read case studies of entrepreneurs who inspire you, and
                                                    write down three
                                                    lessons you can apply to your journey.</p>

                                                <h3>Chapter 2: Idea Generation and Market Validation</h3>
                                                <p><strong>Step 1: Brainstorming Ideas</strong><br>
                                                    Great businesses begin with great ideas. Set aside time each day to
                                                    brainstorm business
                                                    ideas. Start by looking at your own experiences. What problems have you
                                                    encountered that
                                                    need solutions? Write down at least 10 business ideas, no matter how big
                                                    or small.</p>

                                                <p><strong>Step 2: Narrowing Down Your Ideas</strong><br>
                                                    Evaluate your list of ideas by asking these questions:</p>
                                                <ul>
                                                    <li>Is there a clear market need for this idea?</li>
                                                    <li>Do you have the skills or passion to execute it?</li>
                                                    <li>How difficult would it be to scale?</li>
                                                </ul>
                                                <p>
                                                    Choose the top three ideas and do a preliminary market analysis for each
                                                    one. This can
                                                    involve informal surveys, online research, and competitor analysis.
                                                </p>

                                                <p><strong>Step 3: Market Validation</strong><br>
                                                    Once you’ve narrowed your ideas, it’s time to validate. Conduct deeper
                                                    research into your
                                                    target market. Interview potential customers, use surveys, and analyze
                                                    industry trends. Your
                                                    goal is to ensure that your product or service solves a real problem for
                                                    your target
                                                    audience.</p>

                                                <h3>Chapter 3: Building a Business Model</h3>
                                                <p><strong>Step 1: Creating a Business Model Canvas</strong><br>
                                                    The Business Model Canvas is a simple yet powerful tool to map out your
                                                    business. It covers
                                                    key areas like value proposition, customer segments, revenue streams,
                                                    and cost structure.
                                                    Download or draw a canvas template and start filling it out based on
                                                    your research.</p>

                                                <p><strong>Step 2: Testing Assumptions</strong><br>
                                                    Every business model has assumptions. Identify the key assumptions in
                                                    your canvas—such as
                                                    pricing or customer demand—and test them. Run small experiments, such as
                                                    launching a basic
                                                    version of your product or service (a Minimum Viable Product or MVP) to
                                                    gather feedback.</p>

                                                <h3>Chapter 4: Writing a Business Plan</h3>
                                                <p><strong>Step 1: Drafting the Business Plan</strong><br>
                                                    A business plan serves as your roadmap. It should outline your business
                                                    goals, target
                                                    market, competitive landscape, and financial projections. Begin with a
                                                    draft that includes
                                                    the following sections:</p>
                                                <ul>
                                                    <li>Executive Summary</li>
                                                    <li>Business Overview</li>
                                                    <li>Market Analysis</li>
                                                    <li>
                                                        Organizational Structure</li>
                                                    <li>Product or Service Line</li>
                                                    <li>
                                                        Marketing Strategy</li>

                                                    <li>Financial Plan</li>
                                                </ul>

                                                <p><strong>Step 2: Crafting Financial Projections</strong><br>
                                                    Use your research and market data to develop financial forecasts. Create
                                                    a three-year
                                                    projection, including revenue, expenses, and cash flow. Use online
                                                    templates or tools to
                                                    ensure your financials are realistic.</p>

                                                <p><strong>Step 3: Refining Your Plan</strong><br>
                                                    Once your first draft is complete, seek feedback from mentors, peers, or
                                                    professionals.
                                                    Revise your plan as necessary, ensuring it reflects both your vision and
                                                    the realities of
                                                    the market.</p>

                                                <h3>Chapter 5: Legal Considerations and Business Registration</h3>
                                                <p><strong>Step 1: Choosing the Right Structure</strong><br>
                                                    The type of business entity you choose (sole proprietorship, LLC,
                                                    corporation, etc.) will
                                                    affect your taxes, personal liability, and growth potential. Research
                                                    each structure and
                                                    decide which is best for your business.</p>

                                                <p><strong>Step 2: Registering Your Business</strong><br>
                                                    Follow the legal steps to register your business with your local and
                                                    national government.
                                                    This may include filing for a business name, obtaining necessary
                                                    permits, and registering
                                                    for taxes. Keep all documentation in one place for easy reference.</p>

                                                <h3>Chapter 6: Preparing for Launch</h3>
                                                <p><strong>Step 1: Building Your Brand</strong><br>
                                                    Your brand is more than just a logo—it's how customers perceive you.
                                                    Work on your brand
                                                    identity, which includes your name, logo, colors, voice, and message.
                                                    What story does your
                                                    business tell? Ensure it's consistent across all platforms.</p>

                                                <p><strong>Step 2: Developing Your Website</strong><br>
                                                    A professional website is crucial for credibility. You can either build
                                                    it yourself using
                                                    tools like WordPress or Wix, or hire a professional. Ensure your website
                                                    is user-friendly,
                                                    mobile-responsive, and optimized for search engines (SEO).</p>

                                                <p><strong>Step 3: Setting Up Social Media</strong><br>
                                                    Establish a presence on key social media platforms where your target
                                                    customers spend time.
                                                    Create profiles, develop a content plan, and start engaging with your
                                                    audience. Social media
                                                    will be a key part of your marketing strategy later.

                                                </p>

                                                <h3>Chapter 7: Soft Launch and Customer Feedback</h3>
                                                <p><strong>Step 1: Planning Soft Launch</strong><br>
                                                    A soft launch is a way to introduce your product or service to a limited
                                                    audience. It allows
                                                    you to test your processes, gather feedback, and make adjustments before
                                                    a full launch. Plan
                                                    your soft launch by selecting a small group of customers who fit your
                                                    ideal profile.</p>

                                                <p><strong>Step 2: Collecting Feedback</strong><br>
                                                    After the soft launch, collect feedback from your early customers. What
                                                    worked well? What
                                                    can be improved? Use their input to refine your product, service, and
                                                    customer experience.
                                                </p>

                                                <h3>Chapter 8: Scaling Your Business</h3>
                                                <p><strong>Step 1: Evaluating Growth</strong><br>
                                                    Once your business is running smoothly, it's time to think about
                                                    scaling. Revisit your
                                                    Business Model Canvas and identify areas where you can grow. This might
                                                    include expanding
                                                    your customer base, adding new products, or entering new markets.</p>

                                                <p><strong>Step 2: Automating Operations</strong><br>
                                                    To scale efficiently, you’ll need to automate key processes. Identify
                                                    repetitive tasks that
                                                    can be automated with tools like CRM systems, accounting software, and
                                                    marketing platforms.
                                                    This frees up time and resources for strategic growth.</p>

                                                <h3>Chapter 9: Marketing and Customer Acquisition</h3>
                                                <p><strong>Step 1: Developing a Marketing Strategy</strong><br>
                                                    Your marketing strategy should focus on how to attract and retain
                                                    customers. Use your
                                                    research to develop a clear value proposition, and identify the channels
                                                    where your audience
                                                    is most active. Popular channels include social media, content
                                                    marketing, email campaigns,
                                                    and paid ads.</p>

                                                <p><strong>Step 2: Launching Your First Campaign</strong><br>
                                                    Once your strategy is in place, launch your first marketing campaign.
                                                    This could be a social
                                                    media blitz, a Google Ads campaign, or an email newsletter. Monitor the
                                                    results closely,
                                                    using metrics such as click-through rates, conversion rates, and
                                                    customer acquisition costs.
                                                </p>

                                                <h3>Chapter 10: Fundraising and Raising Capital</h3>
                                                <p><strong>Step 1: Identifying Funding Options</strong><br>
                                                    You’ll need capital to scale your business. There are several funding
                                                    options to consider:
                                                </p>
                                                <ul>
                                                    <li>Bootstrapping (self-funding)</li>
                                                    <li>Angel Investors</li>
                                                    <li>Venture Capital</li>
                                                    <li>Crowdfunding</li>
                                                    <li>Small Business Loans</li>

                                                </ul>
                                                <p>
                                                    Research each option and determine which one fits your business model
                                                    and growth stage.
                                                </p>
                                                <p><strong>Step 2: Preparing an Investor Pitch</strong><br>
                                                    If you’re seeking outside investment, you’ll need a compelling pitch.
                                                    Your pitch should
                                                    include:</p>
                                                <ul>
                                                    <li>A clear value proposition</li>
                                                    <li>Financial projections</li>
                                                    <li>Market opportunity</li>
                                                    <li>Use of funds</li>
                                                    <p>
                                                        Prepare a 10-12 slide pitch deck and practice presenting it to
                                                        potential investors.
                                                    </p>

                                                </ul>
                                                <h3>Chapter 11: Managing Growth</h3>
                                                <p><strong>Step 1: Hiring and Building a Team</strong><br>
                                                    As your business grows, so will your need for talent. Develop a hiring
                                                    plan that outlines
                                                    key positions, desired skills, and recruitment strategies. Focus on
                                                    building a team that
                                                    complements your strengths and drives the business forward.</p>

                                                <p><strong>Step 2: Tracking Key Performance Indicators (KPIs)</strong><br>
                                                    Set up a system for tracking KPIs that reflect your business's health.
                                                    Common KPIs include
                                                    customer acquisition cost, lifetime value, and profit margins. Use tools
                                                    like dashboards or
                                                    spreadsheets to track and analyze your progress.</p>

                                                <h3>Conclusion: The Entrepreneurial Journey</h3>
                                                <p>Building a business is a journey filled with learning, adaptation, and
                                                    growth. Use this
                                                    guide as your roadmap to success, but remember that every business is
                                                    unique. Stay flexible,
                                                    keep learning, and enjoy the process of building something meaningful.
                                                </p>
                                                <p><strong>Next Steps:</strong><br>
                                                <ul>
                                                    <li>Implement the strategies you’ve learned.</li>
                                                    <li>Seek feedback and iterate.</li>
                                                    <li>Continue scaling your business with confidence.</li>
                                                </ul>
                                                <p>This step-by-step guide gives you a clear path to follow as you embark on
                                                    your
                                                    entrepreneurial journey. </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <a class="learn-card"
                                            href="https://byteved.com/vincent-dev/entrepreneur-intelligence-efficiency-ebook-podcast-review/">
                                            <div class="learn-icon">
                                                <img src="https://cdn-icons-png.flaticon.com/512/1828/1828970.png"
                                                    alt="Podcast Reviews" />
                                            </div>
                                            <h5>Podcast Reviews</h5>
                                            <div class="learn-arrow">&rsaquo;</div>
                                        </a>
                                    </div>




                                    </div> </div> </div>
                    </div>
                </div>
    </section>

    <section class="s-feedback-2 tf-spacing-1 build-section" style="margin-top: 70px !important;">
        <div class="tf-container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="heading mb-70">

                        <p class="s-title text-main-green-3 text-center ">
                            Build, Scale & Impact your local
                            <br> community with
                            <span>
                                C5UEI
                            </span>
                        <p class="text-center">Think idea & your business launch.
                            <br> We exist before or after you have consulted with a business coach attended the master
                            classes, been
                            to the universities.
                        </p>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <section class="tabs-container">
            <div class="tabs-left">
                <div class="tabs-header">
                    <button class="tab-button active" data-tab="plan">Listen</button>
                    <button class="tab-button" data-tab="start">Learn</button>
                    <button class="tab-button" data-tab="grow">Do</button>
                </div>

                <div id="plan" class="tab-content active">
                    <div class="tab-card">
                        <div class="card-icon">🎧</div>
                        <div class="card-text">
                            <strong>Weekly Entrepreneur Podcast:</strong><br>
                            Listen to real‑world startup insights and success stories.
                            <audio controls style="width:100%; margin-top:8px;">
                                <source src="https://byteved.com/vincent-dev/wp-content/uploads/2025/08/speech.mp3"
                                    type="audio/mpeg">
                                Your browser does not support audio.
                            </audio>
                        </div>
                    </div>

                    <div class="tab-card">
                        <div class="card-icon">🎥</div>
                        <div class="card-text">
                            <strong>Startup Video Tutorials:</strong><br>
                            Watch expert-led videos guiding you through each pathway.
                            </div>
                    </div>


                    <div class="tab-card">
                        <div class="card-icon">⭐</div>
                        <div class="card-text">
                            <strong>User Testimonials:</strong><br>
                            “This program helped me move from $1K to $100K fast.” — Alex R.<br><br>
                            “The $1M Pathway gave me systems that really scale.” — Jamie L.
                        </div>
                    </div>
                </div>




                <div id="start" class="tab-content">
                    <div class="tab-card">
                        <div class="card-icon">
                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-7.jpg">
                        </div>
                        <div class="card-text"><strong>Education, Entrepreneurship, and the Power of Community</strong>
                        </div>
                    </div>
                    <div class="tab-card">
                        <div class="card-icon">
                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-6.jpg">
                        </div>
                        <div class="card-text">
                            <strong>A Smart Path To Business Ownership: Acquisition</strong>

                        </div>
                    </div>
                    <div class="tab-card">
                        <div class="card-icon">
                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-5.jpg">
                        </div>
                        <div class="card-text">
                            <strong>Millions of Small Businesses Will Soon Be for Sale. Here’s How</strong>

                        </div>
                    </div>
                    <div class="tab-card">
                        <div class="card-icon">
                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-4.jpg">
                        </div>
                        <div class="card-text">
                            <strong>Entrepreneurs, Increase Your Startup Success Rate: Exploit A</strong>

                        </div>
                    </div>
                </div>

                <div id="grow" class="tab-content">
                    <div class="tab-card">
                        <div class="card-icon">📈</div>
                        <div class="card-text">Scale your business with expert tools and support.</div>
                    </div>
                    <div class="tab-card">
                        <div class="card-icon">🤝</div>
                        <div class="card-text">Join a powerful community and expand your network.</div>
                    </div>
                </div>
            </div>

            <div class="tabs-right">
                <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-8-1.jpg"
                    alt="Entrepreneur working">
            </div>
        </section>


        <section class="c5u-learn-tabs-two-column">
            <div class="c5u-learn-container">
                <div class="c5u-learn-heading">
                    <p class="s-title text-main-green-3 text-center">
                        Own What You <span>Learn.</span>
                    </p>
                    <p class="text-center">License it. Resell it. Build your own business using it.
                        <br>"Each purchase includes the content from previous volumes and grants <br>resell rights, allowing
                        you
                        to sell the course for full profit"
                    </p>
                </div>
                <div class="c5u-learn-row">

                    <div class="c5u-learn-left">


                        <div class="c5u-learn-tab-buttons">
                            <button class="c5u-tab-btn active" data-tab="llc">License</button>
                            <button class="c5u-tab-btn" data-tab="s-corp">Resell</button>
                            <button class="c5u-tab-btn" data-tab="c-corp">Build</button>
                        </div>

                        <div class="c5u-tab-panel active" id="llc">

                            <p class="mb-15">
                                <strong>LICENSE IT</strong><br> You don't just consume the knowledge - you license the
                                power.
                            </p>
                            <p class="mb-15">
                                10 ways you can license C5U assets and make them work for you:
                            </p>
                            <p>
                                <strong>Topic What It Means Student Benefit</strong>
                            </p>
                            <ul class="list mb-50 list-about catalog-list-para">
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Plug-and-Play Curriculum License full 8-12 week
                                        programs Teach
                                        your own cohorts with C5U-quality curriculum.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Entrepreneur Workbooks Use editable learning
                                        guides Create
                                        local learning clubs or student groups.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Al-Powered Templates License business plan +
                                        pitch templates
                                        Help others launch faster using your branded tools.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Branded Funnel Systems Use our funnel kits as
                                        yours Launch
                                        your agency or productized service.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> License to Train Teach C5U systems in workshops
                                        Build
                                        community-based bootcamps in schools or cities.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Local Academy Rights Run your own local "mini
                                        C5U" Claim
                                        city-level impact (e.g., Detroit CEO Academy).
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> eBook Reprint Rights Resell or bundle C5U
                                        eBooks Monetize or
                                        lead-gen with branded thought leadership.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Certification Authority Issue student
                                        badges/certs Become a
                                        certifying body under the C5U network.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Private Label Launch Kits Launch new programs
                                        under your brand
                                        Save years of curriculum building.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Custom Licensing Bundles Package content for
                                        schools or orgs
                                        Close B2B deals with ready-made educational solutions.
                                    </p>

                                </li>
                            </ul>
                        </div>

                        <div class="c5u-tab-panel" id="s-corp">
                            <p class="mb-15">
                                <strong>RESELL IT</strong><br> You own the rights. Now own the revenue.
                            </p>
                            <p class="mb-15">
                                10 ways to turn C5U content into cash - instantly:
                            </p>
                            <p>
                                <strong>Topic What It Means Student Benefit</strong>

                            </p>
                            <ul class="list mb-50 list-about catalog-list-para">
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Keep 100% Profits No royalty fees Set your own
                                        price and keep
                                        every dollar.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Sell to Individuals Offer direct-to-consumer
                                        courses Build
                                        your own customer base.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Bundle with Coaching Add C5U into your programs
                                        Increase
                                        perceived value instantly.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Launch a Digital Storefront Host your own
                                        education platform
                                        Shopify-style income with educational products.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Affiliate Upgrade System Refer and earn Stack
                                        passive tuition
                                        income.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Group License Selling Sell to schools,
                                        churches, nonprofits
                                        Unlock institutional budgets.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Weekly Drop Model Release new content on a
                                        schedule Build
                                        urgency, scarcity, and loyalty.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Social Monetization Kits Plug templates into
                                        your IG, TikTok,
                                        or email Turn audience into income.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Prebuilt Funnels Import funnels + email
                                        sequences Go live in
                                        under 24 hours.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> 10. Recurring Revenue Models.
                                    </p>

                                </li>
                            </ul>
                        </div>

                        <div class="c5u-tab-panel" id="c-corp">
                            <p class="mb-15">
                                <strong>BUILD WITH IT</strong><br> You're not just a reseller. You're a system builder.
                            </p>
                            <p class="mb-15">
                                10 ways to use C5U tools to launch real business infrastructure:
                            </p>
                            <p>
                                <strong>Topic What It Means Student Benefit</strong>
                            </p>
                            <ul class="list mb-50 list-about catalog-list-para">
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Build a School Launch a city-based or virtual
                                        academy Position
                                        yourself as an educational entrepreneur.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Launch a Challenge Funnel Use our $1K Challenge
                                        System Turn
                                        learning into income for your students.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Turn Templates into Services Offer biz plans,
                                        landing pages,
                                        and systems as a freelancer Launch an agency powered by C5U.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Add to Existing Business Plug in to your brand
                                        Coaches,
                                        consultants, and creatives upgrade their offerings instantly.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Create Your Own Bootcamp Run weekend or 6-week
                                        intensives
                                        Monetize live teaching and community.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Get Policy + Grant Backing Use C5U licensing to
                                        partner with
                                        city programs Leverage local money to scale your academy.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Offer Franchise-Style Models Sell your own
                                        programs powered by
                                        C5U IP Multiply your message, city to city.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Stack Monetization Paths Combine courses +
                                        coaching +
                                        affiliate + tools Maximize LTV of each student.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Track Student Results Use badge systems +
                                        business audits
                                        Prove ROI and attract partners or press.
                                    </p>

                                </li>
                                <li>
                                    <p class="font-main-2">
                                        <i class="flaticon-check-mark"></i> Legacy Engine Turn your academy into a
                                        self-running system
                                        Exit, license, or scale your education business
                                    </p>

                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="c5u-learn-right">
                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/07/ggg.jpg"
                            alt="Learning Together">
                    </div>
                </div>
            </div>
        </section>






        <section class="s-case-study-02 catalog-courses catalogsss">
            <div class="tf-container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="content">
                            <p class="s-sub-title justify-center">
                                <i class="icon-angles-right moveLeftToRight"></i>
                                latest Catalog
                            </p>
                            <p class="s-title text-main-green-3 text-center" style="padding-bottom:30px;">
                                See Opportunities Before the
                                <br>world does
                            </p>
                            <div class="wg-tabs style-2">
                                <div class="widget-content-tab">
                                    <div class="widget-content-inner active">

                                        <div class="swiper catalogSwiper">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-8-1-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-8-1-300x262.jpg"
                                                                alt="Advanced Concepts" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/advanced-concepts/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Advanced Concepts </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/advanced-concepts/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-6-300x220.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-6-300x220.jpg"
                                                                alt="All Collection" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/all-collection/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                All Collection </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/all-collection/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-7-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-7-300x262.jpg"
                                                                alt="Entrepreneurship eBooks" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/entrepreneurship-ebooks/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Entrepreneurship eBooks </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/entrepreneurship-ebooks/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-6-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-6-300x262.jpg"
                                                                alt="Foundational Concepts" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/foundational-concepts/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Foundational Concepts </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/foundational-concepts/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-5-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-5-300x262.jpg"
                                                                alt="Funding and Finance" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/funding-and-finance/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Funding and Finance </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/funding-and-finance/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-4-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-4-300x262.jpg"
                                                                alt="Leadership and Team Building" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/leadership-and-team-building/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Leadership and Team Building </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/leadership-and-team-building/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-3-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-3-300x262.jpg"
                                                                alt="Marketing and Sales" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/marketing-and-sales/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Marketing and Sales </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/marketing-and-sales/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-2-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-2-300x262.jpg"
                                                                alt="Operations and Scaling" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/operations-and-scaling/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Operations and Scaling </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/operations-and-scaling/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-1-300x262.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-1-300x262.jpg"
                                                                alt="Personal Development" class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/personal-development/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Personal Development </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/personal-development/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/pexels-mikhail-nilov-6893950-300x200.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/pexels-mikhail-nilov-6893950-300x200.jpg"
                                                                alt="Podcast - Course and eBook reviews."
                                                                class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/podcast-course-and-ebook-reviews/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Podcast - Course and eBook reviews. </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/podcast-course-and-ebook-reviews/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="card-project style-2 tf-hover">
                                                        <div class="tf-overlay"></div>
                                                        <div class="image hover-1">
                                                            <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/partners-sitting-table-working-cafe_11zon-300x200.jpg"
                                                                data-src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/partners-sitting-table-working-cafe_11zon-300x200.jpg"
                                                                alt="Spiritual &amp; Mental Health eBooks"
                                                                class="lazyload">
                                                        </div>
                                                        <div class="content">
                                                            <a href="https://byteved.com/vincent-dev/course-category/spiritual-mental-health-ebooks/"
                                                                class="title font-main-2 fw-7 hover-text-main-yellow mb-25">
                                                                Spiritual &amp; Mental Health eBooks </a>
                                                            <a href="https://byteved.com/vincent-dev/course-category/spiritual-mental-health-ebooks/"
                                                                class="tf-btn-readmore style-4">
                                                                View Courses <i class="icon-chevron-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                                        </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section dashboard-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading mb-70">

                            <p class="s-title text-center text-white">
                                Your Personalized
                                <span>
                                    Dashboard
                            </p>
                            <p class="text-center text-white">Everything you need: Business essentials and reminders in one
                                place.
                            </p>
                        </div>
                    </div>
                    <div class="left-content">
                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/09/image-9.png"
                            alt="Dashboard Image" />
                        </div>

                    <div class="right-content">
                        <h4 class="text-white">📋 My Companies</h4>
                        <table>
                            <thead>
                                <tr class="text-white">
                                    <th>Company Name</th>
                                    <th>State</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>SharpShave Barbers LLC</td>
                                    <td>Texas</td>
                                    <td><span class="status good">Good Standing</span></td>
                                </tr>
                                <tr>
                                    <td>PureGlow Haircare LLC</td>
                                    <td>New Mexico</td>
                                    <td><span class="status good">Good Standing</span></td>
                                </tr>
                                <tr>
                                    <td>Harmony FOUNDATION</td>
                                    <td>Oklahoma</td>
                                    <td><span class="status pending">Order Pending</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

    </section>


    <section class="value-framework">
        <div class="footer-top">
            <div class="tf-container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="content">
                            <p class="title font-main-2 text-dark">
                                High Value Framework:
                                <span class="text-dark"> Marketing Strategy </span>
                            </p>
                            <ul class="mb-20">
                                <li>learn how to position your business for grants and funding</li>
                                <li>Discover local, state and federal resources that most people overlook</li>
                                <li>Built a business plan that make your brand fundable</li>
                                <li>Get access to template, funding strategies, and real examples</li>
                                <li>Receive support from a community of entrepreneurs all moving forward like you</li>
                            </ul>
                            <a href="https://byteved.com/vincent-dev/about/" class="value-btn">About
                                Us <i class="icon-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @endsection
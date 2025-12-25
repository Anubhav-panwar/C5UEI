@extends('frontend.layouts.master')

@section('title', 'Admissions')

@section('content')
    <style id='wp-emoji-styles-inline-css'>
        img.wp-smiley, img.emoji { display: inline !important; border: none !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0 !important; }
    </style>
    <link rel='stylesheet' id='wp-block-library-css' href='https://byteved.com/vincent-dev/wp-includes/css/dist/block-library/style.min.css?ver=6.9' media='all' />
    <link rel='stylesheet' id='wc-blocks-style-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks.css?ver=wc-9.9.6' media='all' />
    <link rel='stylesheet' id='contact-form-7-css' href='https://byteved.com/vincent-dev/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=6.0.6' media='all' />
    <link rel='stylesheet' id='pmpro_frontend_base-css' href='https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/css/frontend/base.css?ver=3.3.2' media='all' />
    <link rel='stylesheet' id='woocommerce-layout-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=9.9.6' media='all' />
    <link rel='stylesheet' id='woocommerce-general-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=9.9.6' media='all' />
    <link rel='stylesheet' id='twentythirteen-style-css' href='https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/style.css?ver=20201208' media='all' />
    <link rel='stylesheet' id='dashicons-css' href='https://byteved.com/vincent-dev/wp-includes/css/dashicons.min.css?ver=6.9' media='all' />
    
    <script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
    <script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>

    <style id="wp-custom-css">
        /* --- General Layout Fixes --- */
        body.blog.logged-in.admin-bar.wp-embed-responsive.wp-theme-vincenttheme.single-author.sidebar.customize-support .row {
            padding-bottom: 0px !important;
        }

        /* --- Blog Card Styling --- */
        section.s-new-blog.tf-spacing-1 .card-blog-item.tf-hover {
            margin-bottom: 40px;
        }

        /* --- Blog Image Sizing (General) --- */
        section.s-new-blog.tf-spacing-1 img.ls-is-cached.lazyloaded {
            height: 250px !important;
            max-height: 300px !important;
        }

        /* --- Blog Image Sizing (Specific / Responsive) --- */
        body.blog.logged-in.admin-bar.wp-embed-responsive.wp-theme-vincenttheme.theme-vincenttheme.woocommerce-js.single-author section.s-new-blog.tf-spacing-1 img.ls-is-cached.lazyloaded {
            width: 100%;
            height: 250px !important;
            max-height: 300px !important;
            object-fit: cover !important;
        }

        /* --- Pagination Styling --- */
        .pagination-wrapper li span.current {
            background-color: #051229 !important;
        }

        /* --- Utility Classes Used --- */
        .mb-70 { margin-bottom: 70px; }
        .mb-17 { margin-bottom: 17px; }
        .mb-30 { margin-bottom: 30px; }
        .mt-40 { margin-top: 40px; }
        .text-center { text-align: center; }
        .fw-7 { font-weight: 700; }
        
    </style>

    <div class="tf-page-title ">
        <div class="content-wrap">
            <div class="bg-image">
                <div class="rellax" data-rellax-speed="-10">
                    <img src="https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/./images/page-title/page-title.jpg" alt="">
                </div>
            </div>
            <div class="tf-overlay"></div>
            <div class="content">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="title">Blogs</p>
                            <div class="breadcrums">
                                <a href="https://byteved.com/vincent-dev">Home</a>
                                <div class="icon"><i class="icon-chevron-r"></i></div>
                                <a class="current">Blogs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="s-new-blog tf-spacing-1" style="padding-bottom:40px;">
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
                            <span>Entrepreneur</span>
                        </p>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1itg021n715u41ni21q2t1dh148be.avif" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">11</p>
                                            <p class="month">Jun</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/" class="title fw-7 mb-10 text-clamp-2">
                                    It’s time to re-think higher education in America 
                                </a>
                                <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-5-300x220.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">11</p>
                                            <p class="month">May</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/" class="title fw-7 mb-10 text-clamp-2">
                                    4 Millionaire Success Habits to Implement Today 
                                </a>
                                <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-6-300x220.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">09</p>
                                            <p class="month">May</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/" class="title fw-7 mb-10 text-clamp-2">
                                    Millions of Small Businesses Will Soon Be for Sale. Here&#8217;s How Smart Entrepreneurs Are Cashing In 
                                </a>
                                <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-10 mb-10">
                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/entrepreneurs-increase-your-startup-success-rate-exploit-a-trending-niche-in-large-markets/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-8-300x220.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">08</p>
                                            <p class="month">May</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/entrepreneurs-increase-your-startup-success-rate-exploit-a-trending-niche-in-large-markets/" class="title fw-7 mb-10 text-clamp-2">
                                    Entrepreneurs, Increase Your Startup Success Rate: Exploit A Trending Niche In Large Markets 
                                </a>
                                <a href="https://byteved.com/vincent-dev/entrepreneurs-increase-your-startup-success-rate-exploit-a-trending-niche-in-large-markets/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/your-idea-isnt-enough-why-you-need-a-business-model-that-makes-money/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/partners-sitting-table-working-cafe_11zon-300x200.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">25</p>
                                            <p class="month">Mar</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/your-idea-isnt-enough-why-you-need-a-business-model-that-makes-money/" class="title fw-7 mb-10 text-clamp-2">
                                    Your Idea Isn’t Enough: Why You Need A Business Model That Makes Money 
                                </a>
                                <a href="https://byteved.com/vincent-dev/your-idea-isnt-enough-why-you-need-a-business-model-that-makes-money/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/a-smart-path-to-business-ownership-acquisition-entrepreneurship/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/pexels-thirdman-7651924-300x200.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">15</p>
                                            <p class="month">Mar</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/a-smart-path-to-business-ownership-acquisition-entrepreneurship/" class="title fw-7 mb-10 text-clamp-2">
                                    A Smart Path To Business Ownership: Acquisition Entrepreneurship 
                                </a>
                                <a href="https://byteved.com/vincent-dev/a-smart-path-to-business-ownership-acquisition-entrepreneurship/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-10 mb-10">
                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/the-system-isnt-broken-it-was-built-that-way/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-project-s2-7-300x262.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">09</p>
                                            <p class="month">Mar</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/the-system-isnt-broken-it-was-built-that-way/" class="title fw-7 mb-10 text-clamp-2">
                                    The system isn&#8217;t broken, it was built that way! 
                                </a>
                                <a href="https://byteved.com/vincent-dev/the-system-isnt-broken-it-was-built-that-way/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/most-people-shouldnt-even-consider-running-a-marathon/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/running-marathon-300x200.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">08</p>
                                            <p class="month">Mar</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/most-people-shouldnt-even-consider-running-a-marathon/" class="title fw-7 mb-10 text-clamp-2">
                                    Most people shouldn&#8217;t even consider running a marathon&#8230; 
                                </a>
                                <a href="https://byteved.com/vincent-dev/most-people-shouldnt-even-consider-running-a-marathon/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card-blog-item tf-hover">
                                <a href="https://byteved.com/vincent-dev/whats-the-most-useful-business-related-book-youve-ever-read/">
                                    <div class="entry-image mb-30 hover-1 hover-14">
                                        <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/book-b-225x300.jpg" alt="" class="lazyload">
                                        <div class="entry-date">
                                            <p class="day">02</p>
                                            <p class="month">Mar</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="https://byteved.com/vincent-dev/whats-the-most-useful-business-related-book-youve-ever-read/" class="title fw-7 mb-10 text-clamp-2">
                                    What&#8217;s the most useful business-related book you&#8217;ve ever read? 
                                </a>
                                <a href="https://byteved.com/vincent-dev/whats-the-most-useful-business-related-book-youve-ever-read/" class="tf-btn style-3 text-anime-style-1">
                                    Read More <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="pagination-wrapper mt-40">
                        <ul class='page-numbers'>
                            <li><span aria-label="Page 1" aria-current="page" class="page-numbers current">1</span></li>
                            <li><a aria-label="Page 2" class="page-numbers" href="https://byteved.com/vincent-dev/blog/page/2/">2</a></li>
                            <li><a aria-label="Page 3" class="page-numbers" href="https://byteved.com/vincent-dev/blog/page/3/">3</a></li>
                            <li><a class="next page-numbers" href="https://byteved.com/vincent-dev/blog/page/2/">Next »</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </section>
    @endsection
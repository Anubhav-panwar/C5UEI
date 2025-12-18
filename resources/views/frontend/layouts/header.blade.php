<header class="tf-header">
  <div class="tf-container w-1780">
    <div class="row">
      <div class="col=lg-12">
        <div class="header-inner">
          <div class="header-left">
            <div class="logo-site">
              <a href="{{ url('/') }}">
                <img id="logo_header"
                     src="{{ asset('assets/images/logo1.jpg') }}"
                     data-retina="{{ asset('assets/images/logo1.jpg') }}"
                     alt="Logo"
                     width="139"
                     height="39">
              </a>
            </div>
          </div>

          <div class="header-center">
            <nav class="main-nav">
              <ul class="nav-list">
                <li class="menu-item"><a href="{{ url('/') }}">Home</a></li>
                <li class="menu-item"><a href="{{ url('/about') }}">About</a></li>
                <li class="menu-item"><a href="{{ url('/programs') }}">Programs</a></li>
                <li class="menu-item"><a href="{{ url('/admissions') }}">Admissions</a></li>
                <li class="menu-item"><a href="{{ url('/contact') }}">Contact</a></li>
              </ul>
            </nav>
          </div>

          <div class="header-right">
            <div class="user-login-icon" id="userIcon">
              <a href="#" aria-label="User">
                <i class="fa fa-user"></i>
              </a>
            </div>

            <a href="{{ url('/consultanting') }}" class="tf-btn small">
              Start Here
              <i class="icon-chevron-right"></i>
            </a>

            <div class="union mobile-button">
              <span class="dot"></span><span class="dot"></span><span class="dot"></span>
            </div>
            <div class="union btn-open-welcome">
              <span class="dot"></span><span class="dot"></span><span class="dot"></span>
            </div>
          </div>
        </div>

        <!-- MOBILE NAV -->
        <div class="mobile-nav-wrap">
          <div class="overlay-mobile-nav"></div>
          <div class="inner-mobile-nav overflow-y-auto">
            <div class="top">
              <div class="logo">
                <a href="{{ url('/') }}" rel="home" class="main-logo">
                  <img id="mobile-logo_header" alt="Logo" src="{{ asset('assets/images/logo1.jpg') }}">
                </a>
                <div class="mobile-nav-close">
                  <i class="icon-xmark"></i>
                </div>
              </div>

              <nav id="mobile-main-nav" class="mobile-main-nav">
                <ul id="menu-mobile-menu" class="menu">
                  <li class="menu-item"><a class="item-menu-mobile" href="{{ url('/') }}">HOME</a></li>
                  <li class="menu-item"><a class="item-menu-mobile" href="{{ url('/about') }}">ABOUT</a></li>
                  <li class="menu-item"><a class="item-menu-mobile" href="{{ url('/programs') }}">PROGRAMS</a></li>
                  <li class="menu-item"><a class="item-menu-mobile" href="{{ url('/admissions') }}">ADMISSIONS</a></li>
                  <li class="menu-item"><a class="item-menu-mobile" href="{{ url('/contact') }}">CONTACT</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
        <!-- END MOBILE NAV -->

      </div>
    </div>
  </div>
</header>
<!-- HEADER END -->

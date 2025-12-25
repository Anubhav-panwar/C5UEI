<!-- Footer -->
<footer class="tf-footer style-3">
  <div class="tf-container">
    <div class="row">
      <div class="col-lg-12">
        <div class="footer-inner">
          <div class="footer-inner-wrap">
            <div class="logo-site">
              <a href="{{ url('/') }}">
                <img id="logo_footer"
                     data-retina="{{ asset('assets/images/logo1.jpg') }}"
                     src="{{ asset('assets/images/logo1.jpg') }}"
                     alt="Logo" />
              </a>
            </div>

            <ul class="social-list">
              <li><a href="#" target="_blank" rel="noopener"><i class="icon-facebook"></i></a></li>
              <li><a href="#" target="_blank" rel="noopener"><i class="fab fa-instagram fa-lg"></i></a></li>
              <li><a href="#" target="_blank" rel="noopener"><i class="fab fa-tiktok"></i></a></li>
              <li><a href="#" target="_blank" rel="noopener"><i class="icon-twitter"></i></a></li>
            </ul>
          </div>

          <div class="footer-inner-wrap footer-col-block">
            <h5 class="footer-title footer-title-desktop last-view-head">Quick Links</h5>
            <ul class="list tf-collapse-content">
              <li><a href="{{ url('/') }}">Home</a></li>
              <li><a href="{{ url('/about') }}">About</a></li>
              <li><a href="{{ url('/programs') }}">Programs</a></li>
              <li><a href="{{ url('/admissions') }}">Admissions</a></li>
              <li><a href="{{ url('/contact') }}">Contact</a></li>
            </ul>
          </div>

          <div class="footer-inner-wrap form-wrap">
            <h5 class="footer-title">Programs</h5>
            <ul class="list tf-collapse-content">
              <li><a href="{{ url('/course-catalog') }}">Course Catalog</a></li>
              <li><a href="{{ url('/ultimate-business-plan') }}">Ultimate Business Plan Template</a></li>
              <li><a href="{{ url('/100-ceo-army-mastermind') }}">100 CEO Army Mastermind</a></li>
              <li><a href="{{ url('/curriculum') }}">Entrepreneurship 101 Real-World Curriculum</a></li>
              <li><a href="{{ url('/partnership') }}">Partnership</a></li>
            </ul>
          </div>

          <div class="footer-inner-wrap s1">
            <div class="wrap footer-col-block">
              <h5 class="footer-title footer-title-desktop">Subscribe Now</h5>

              <!-- Frontend-only placeholder form (no backend submission) -->
              <form action="#" id="form-sub" class="form-sub style-4" onsubmit="return false;">
                <fieldset>
                  <div class="icon"><i class="icon-envelope"></i></div>
                  <input type="email" placeholder="Email Address" required />
                </fieldset>
                <button type="submit" class="tf-btn">
                  Subscribe <i class="icon-chevron-right"></i>
                </button>
              </form>
            </div>
          </div>

        </div>
      </div>

      <div class="col-lg-12">
        <div class="footer-bottom relative">
          <a class="footer-go-top"><i class="icon-arrow-top fs-8"></i></a>
          <p class="no-copy style-2">
            Copyright © {{ date('Y') }} <span>Category5universe</span>, All Rights Reserved.
          </p>
          <div class="policy-list">
            <ul class="list">
              <li><a href="{{ url('/privacy-policy') }}">Privacy Policy</a></li>
              <li><a href="{{ url('/terms-and-conditions') }}">Terms and Conditions</a></li>
            </ul>
          </div>
        </div>
      </div>

    </div>
  </div>
</footer>
<!-- /.Footer -->

<!-- Bootstrap 5 JS (bundle includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Theme JS (local) -->
<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/lazysize.min.js') }}"></script>
<script src="{{ asset('assets/js/wow.min.js') }}"></script>
<script src="{{ asset('assets/js/swiper-bundle.min.js') }}"></script>
<script src="{{ asset('assets/js/swiper.js') }}"></script>
<script src="{{ asset('assets/js/odometer.min.js') }}"></script>
<script src="{{ asset('assets/js/counter.js') }}"></script>
<script src="{{ asset('assets/js/magnific-popup.min.js') }}"></script>
<script src="{{ asset('assets/js/gsap.min.js') }}"></script>
<script src="{{ asset('assets/js/ScrollTrigger.min.js') }}"></script>
<script src="{{ asset('assets/js/Splitetext.js') }}"></script>
<script src="{{ asset('assets/js/textanimate.js') }}"></script>
<script src="{{ asset('assets/js/gsap-animation.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const btn = document.querySelector(".footer-go-top");
    if (!btn) return;

    btn.addEventListener("click", function (e) {
      e.preventDefault();
      window.scrollTo({ top: 0, behavior: "smooth" });
    });
  });
</script>

<script>
  // Accordion: auto close others
  document.addEventListener('click', function () {
    document.querySelectorAll('.accordion-button').forEach(btn => {
      btn.addEventListener('click', function () {
        const allItems = document.querySelectorAll('.accordion-collapse');
        allItems.forEach(item => {
          const current = this.closest('.accordion-item')?.querySelector('.accordion-collapse');
          if (current && item !== current) {
            const instance = bootstrap.Collapse.getInstance(item);
            if (instance) instance.hide();
          }
        });
      });
    });
  }, { once: true });

  function openModal() {
    const m = document.getElementById("learnModal");
    if (!m) return;
    m.style.display = "block";
    document.body.style.overflow = "hidden";
  }
  function closeModal() {
    const m = document.getElementById("learnModal");
    if (!m) return;
    m.style.display = "none";
    document.body.style.overflow = "";
  }
  window.addEventListener('click', function(event) {
    const modal = document.getElementById("learnModal");
    if (modal && event.target === modal) closeModal();
  });

  // Login modal script (only if markup exists)
  document.addEventListener("DOMContentLoaded", function () {
    const userIcon = document.getElementById("userIcon");
    const loginModal = document.getElementById("loginModal");
    const closeLogin = document.getElementById("closeLogin");
    const loginForm = document.getElementById("loginForm");
    const signupForm = document.getElementById("signupForm");
    const showSignup = document.getElementById("showSignup");
    const showLogin = document.getElementById("showLogin");

    if (userIcon && loginModal) {
      userIcon.onclick = function (e) {
        e.preventDefault();
        loginModal.style.display = "block";
        if (loginForm) loginForm.style.display = "block";
        if (signupForm) signupForm.style.display = "none";
      };
    }
    if (closeLogin && loginModal) {
      closeLogin.onclick = function () {
        loginModal.style.display = "none";
      };
    }
    window.addEventListener('click', function (event) {
      if (loginModal && event.target === loginModal) loginModal.style.display = "none";
    });

    if (showSignup) {
      showSignup.onclick = function (e) {
        e.preventDefault();
        if (loginForm) loginForm.style.display = "none";
        if (signupForm) signupForm.style.display = "block";
      };
    }
    if (showLogin) {
      showLogin.onclick = function (e) {
        e.preventDefault();
        if (signupForm) signupForm.style.display = "none";
        if (loginForm) loginForm.style.display = "block";
      };
    }

    // Magnific video popup (if used)
    if (window.jQuery) {
      jQuery('.popup-video').magnificPopup({
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false
      });
    }
  });

  // Video modal helper
  function openVideoPopup() {
    const modal = document.getElementById("videoModal4");
    const video = document.getElementById("videoElement");
    if (!modal || !video) return;
    modal.style.display = "block";
    video.currentTime = 0;
    video.play?.();
  }
  function closeVideoPopup() {
    const modal = document.getElementById("videoModal4");
    const video = document.getElementById("videoElement");
    if (!modal || !video) return;
    video.pause?.();
    video.currentTime = 0;
    modal.style.display = "none";
  }

  // Circular text
  (function () {
    const text = "Entrepreneur Institute - Digital College";
    const container = document.getElementById("circularText");
    if (!container) return;
    const angleStep = 360 / text.length;
    container.innerHTML = "";
    for (let i = 0; i < text.length; i++) {
      const span = document.createElement("span");
      span.innerText = text[i];
      span.style.transform = `rotate(${i * angleStep}deg)`;
      container.appendChild(span);
    }
  })();

  // Swiper (catalog)
  document.addEventListener("DOMContentLoaded", function () {
    if (typeof Swiper === 'undefined') return;
    new Swiper(".catalogSwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      loop: true,
      autoplay: { delay: 3500, disableOnInteraction: false },
      breakpoints: { 320: { slidesPerView: 1 }, 768: { slidesPerView: 2 }, 1024: { slidesPerView: 3 } },
      navigation: { nextEl: ".swiper-button-next", prevEl: ".swiper-button-prev" },
    });
  });

  // Tabs helper patterns
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll('.tab-button').forEach(button => {
      button.addEventListener('click', () => {
        document.querySelectorAll('.tab-button').forEach(btn => btn.classList.remove('active'));
        document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));
        button.classList.add('active');
        const tabId = button.getAttribute('data-tab');
        const el = tabId ? document.getElementById(tabId) : null;
        if (el) el.classList.add('active');
      });
    });

    document.querySelectorAll(".tab-btn").forEach(btn => {
      btn.addEventListener("click", () => {
        const target = btn.getAttribute("data-tab");
        document.querySelectorAll(".tab-btn").forEach(b => b.classList.remove("active"));
        btn.classList.add("active");
        document.querySelectorAll(".tab-content").forEach(c => {
          c.classList.remove("active");
          if (c.id === target) c.classList.add("active");
        });
      });
    });

    document.querySelectorAll(".accordion-header").forEach(header => {
      header.addEventListener("click", () => {
        header.parentElement?.classList.toggle("open");
      });
    });

    document.querySelectorAll('.c5u-tab-btn').forEach(button => {
      button.addEventListener('click', () => {
        document.querySelectorAll('.c5u-tab-btn').forEach(btn => btn.classList.remove('active'));
        document.querySelectorAll('.c5u-tab-panel').forEach(panel => panel.classList.remove('active'));
        button.classList.add('active');
        const tab = button.getAttribute('data-tab');
        const panel = tab ? document.getElementById(tab) : null;
        if (panel) panel.classList.add('active');
      });
    });
  });
</script>

<script>
  // Assessment scoring (kept; redirects updated to local routes)
  document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector(".wpcf7 form");
    if (!form) return;

    form.addEventListener("submit", function () {
      let score = 0;

      // Sliders (0–10 each)
      const sliders = form.querySelectorAll('input[type="range"]');
      sliders.forEach(slider => score += parseInt(slider.value || '0', 10));

      // MCQs (A=2, B=1, C=0)
      for (let i = 1; i <= 5; i++) {
        const input = form.querySelector(`input[name="mcq${i}"]:checked`);
        if (input) {
          if (String(input.value).startsWith("A")) score += 2;
          else if (String(input.value).startsWith("B")) score += 1;
        }
      }

      const hidden = form.querySelector('#total_score');
      if (hidden) hidden.value = score;

      sessionStorage.setItem('assessment_score', String(score));
    });

    document.addEventListener('wpcf7mailsent', function (event) {
      const f = event.target;
      const score = parseInt(f.querySelector('#total_score')?.value || '0', 10);

      if (score <= 40) window.location.href = "{{ url('/result-dreamer') }}";
      else if (score <= 70) window.location.href = "{{ url('/result-doer') }}";
      else window.location.href = "{{ url('/result-builder') }}";
    });
  });
</script>

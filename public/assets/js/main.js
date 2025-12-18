/**
 *tabs();
 *textRotate();
 *videoPopup();
 *accordionActive();
 *btnLoadMore();
 *openWelcome();
 *openNavMobile();
 *animateText();
 *animateBoxVideo();
 *animateImgItem();
 *headerSticky();
 *headerChangeBg();
 *goTop();
 *retinaLogos();
 *hoverTextAnimate();
 *footer();
 *tabImage();
 *bgImage();
 *socialActive();
 *preloader();
 **/

(function ($) {
    ("use strict");
    var openNavMobile = () => {
        if ($(".tf-header").hasClass("tf-header")) {
            $(".mobile-button").on("click", () => {
                $(".mobile-nav-wrap").toggleClass("active");
                $("body").toggleClass("no-scroll");
            });

            $(".overlay-mobile-nav").on("click", () => {
                $(".mobile-nav-wrap").toggleClass("active");
                $("body").toggleClass("no-scroll");
            });
            $(".mobile-nav-close").on("click", () => {
                $(".mobile-nav-wrap").toggleClass("active");
                $("body").toggleClass("no-scroll");
            });

            $(document).on(
                "click",
                ".menu-item-has-children-mobile",
                function () {
                    var args = { duration: 200 };
                    if ($(this).hasClass("active")) {
                        $(this).children(".sub-menu-mobile").slideUp(args);
                        $(this).removeClass("active");
                    } else {
                        $(".sub-menu-mobile").slideUp(args);
                        $(this).children(".sub-menu-mobile").slideDown(args);
                        $(".menu-item-has-children-mobile").removeClass(
                            "active"
                        );
                        $(this).addClass("active");
                    }
                }
            );
        }
    };
    var retinaLogos = function () {
        var retina = window.devicePixelRatio > 1 ? true : false;
        if (retina) {
            var tfheader = $("#logo_header").data("retina");
            $("#logo_header").attr({ src: tfheader, width: 139, height: 39 });

            var tffooter = $("#logo_footer").data("retina");
            $("#logo_footer").attr({ src: tffooter, width: 139, height: 39 });
        }
    };
    var goTop = function () {
        if ($("div").hasClass("progress-wrap")) {
            var progressPath = document.querySelector(".progress-wrap path");
            var pathLength = progressPath.getTotalLength();
            progressPath.style.transition =
                progressPath.style.WebkitTransition = "none";
            progressPath.style.strokeDasharray = pathLength + " " + pathLength;
            progressPath.style.strokeDashoffset = pathLength;
            progressPath.getBoundingClientRect();
            progressPath.style.transition =
                progressPath.style.WebkitTransition =
                    "stroke-dashoffset 10ms linear";
            var updateprogress = function () {
                var scroll = $(window).scrollTop();
                var height = $(document).height() - $(window).height();
                var progress = pathLength - (scroll * pathLength) / height;
                progressPath.style.strokeDashoffset = progress;
            };
            updateprogress();
            $(window).scroll(updateprogress);
            var offset = 200;
            var duration = 0;
            jQuery(window).on("scroll", function () {
                var offset = 200; // Thay đổi giá trị này theo ý muốn
                var scrollTop = jQuery(this).scrollTop();
                var footerOffsetTop = jQuery(".footer-go-top").offset().top;
                var windowHeight = jQuery(window).height();

                if (
                    scrollTop > offset &&
                    scrollTop + windowHeight < footerOffsetTop
                ) {
                    jQuery(".progress-wrap").addClass("active-progress");
                } else {
                    jQuery(".progress-wrap").removeClass("active-progress");
                }
            });

            jQuery(".progress-wrap").on("click", function (event) {
                event.preventDefault();
                jQuery("html, body").animate({ scrollTop: 0 }, duration);
                return false;
            });
        }
    };
    var headerSticky = function () {
        if ($(".header").length > 0) {
            let didScroll;
            let lastScrollTop = 0;
            let delta = 5;
            let navbarHeight = $(".header").outerHeight();
            const section = $(".header").get(0);
            const rect = section.getBoundingClientRect();

            $(window).scroll(function (event) {
                if ($(this).scrollTop() >= navbarHeight + rect.top) {
                    didScroll = true;
                    $(".header").addClass("scrollHeader");
                } else {
                    setInterval(function () {
                        if ($(this).scrollTop() <= rect.top) {
                            $(".header").css("top", "unset");
                            $(".header").removeClass("scrollHeader");
                        }
                    }, 250);
                }
            });

            setInterval(function () {
                if (didScroll) {
                    let st = $(this).scrollTop();
                    if (Math.abs(lastScrollTop - st) <= delta) {
                        return;
                    }
                    if (st > lastScrollTop && st > navbarHeight) {
                        $(".header").css("top", `-${navbarHeight}px`);
                    } else {
                        if (st + $(window).height() < $(document).height()) {
                            $(".header").css("top", "0px");
                        }
                    }
                    lastScrollTop = st;
                    didScroll = false;
                }
            }, 250);
        }
    };

    var headerChangeBg = function () {
        $(window).on("scroll", function () {
            if ($(window).scrollTop() > 50) {
                $(".header.header-style-absolute").addClass("header-bg");
            } else {
                $(".header.header-style-absolute").removeClass("header-bg");
            }
        });
    };
    var tabs = function () {
        $(".wg-tabs").each(function () {
            $(this).find(".widget-content-tab").children().hide();
            $(this).find(".widget-content-tab").children(".active").show();
            $(this)
                .find(".menu-tab")
                .children(".item")
                .on("click", function () {
                    var liActive = $(this).index();
                    var contentActive = $(this)
                        .siblings()
                        .removeClass("active")
                        .parents(".wg-tabs")
                        .find(".widget-content-tab")
                        .children()
                        .eq(liActive);
                    contentActive.addClass("active").fadeIn("slow");
                    contentActive.siblings().removeClass("active");
                    $(this)
                        .addClass("active")
                        .parents(".wg-tabs")
                        .find(".widget-content-tab")
                        .children()
                        .eq(liActive)
                        .siblings()
                        .hide();
                });
        });
    };
    var textRotate = function () {
        if ($(".wg-curve-text").length > 0) {
            if ($(".text-rotate").length > 0) {
                const text = "Agency - Business - Consulting -";
                const chars = text.split("");
                const degree = 360 / chars.length;

                $(".text-rotate .text").each(function () {
                    const $circularText = $(this);
                    $circularText.empty();
                    chars.forEach((char, i) => {
                        const $span = $("<span></span>")
                            .text(char)
                            .css({
                                transform: `rotate(${i * degree}deg)`,
                            });
                        $circularText.append($span);
                    });
                });
            }
        }
    };
    var videoPopup = function () {
        if ($("div").hasClass("video-wrap")) {
            $(".popup-youtube").magnificPopup({
                type: "iframe",
            });
        }
    };

    var accordionActive = function () {
        $(".tf-accordion-type-3 .accordion-header").on("click", function () {
            const $accordionItem = $(this).closest(".accordion-item");
            if ($accordionItem.hasClass("active")) {
                $accordionItem.removeClass("active");
            } else {
                $(".tf-accordion-type-3 .accordion-item").removeClass("active");
                $accordionItem.addClass("active");
            }
        });
    };

    var btnLoadMore = function () {
        $(".btn-loadMore").click(function () {
            var container = $(this).closest(".container-loadmore");

            var hiddenItems = container.find(".item.hidden");

            hiddenItems.slice(0, 1).each(function (index) {
                $(this)
                    .removeClass("hidden")
                    .hide()
                    .fadeIn(400 * (index + 1));
            });

            if (container.find(".item.hidden").length === 0) {
                $(this).hide();
            }
        });
    };
    var openWelcome = function () {
        $(".btn-open-welcome").on("click", () => {
            $(".box-welcome").toggleClass("active");
            $("body").toggleClass("no-scroll");
        });
        $(".box-welcome .tf-overlay").on("click", () => {
            $(".box-welcome").toggleClass("active");
            $("body").toggleClass("no-scroll");
        });
        $(".btn-close-welcome").on("click", () => {
            $(".box-welcome").toggleClass("active");
            $("body").toggleClass("no-scroll");
        });
    };

    var animateBoxVideo = function () {
        $(window).on("scroll", function () {
            $(
                ".tf-animate__box, .tf-animate__box-2, .tf-animate__rotate-left, .tf-animate__rotate-right"
            ).each(function () {
                const sectionOffsetTop = $(this).offset().top;
                const sectionHeight = $(this).outerHeight();
                const scrollPosition = $(window).scrollTop();
                const windowHeight = $(window).height();
                if (
                    scrollPosition + windowHeight > sectionOffsetTop + 100 &&
                    scrollPosition < sectionOffsetTop + sectionHeight - 100
                ) {
                    if ($(this).hasClass("tf-animate__box")) {
                        $(this).addClass(
                            "animate__animated  animate__zoomInLeft"
                        );
                    } else if ($(this).hasClass("tf-animate__box-2")) {
                        $(this).addClass(
                            "animate__animated animate__zoomInRight"
                        );
                    }
                }
            });
        });
    };
    var animateText = function () {
        if (window.innerWidth <= 767) {
            let animatedTextElements = document.querySelectorAll(
                ".text-anime-style-1, .text-anime-style-2, .text-anime-wave"
            );

            animatedTextElements.forEach((element) => {
                if (element.animation) {
                    element.animation.progress(1).kill();
                    element.split.revert();
                }

                gsap.set(element, { clearProps: "all" });
            });

            return;
        }
        if ($(".text-anime-style-1").length) {
            let animatedTextElements = document.querySelectorAll(
                ".text-anime-style-1"
            );
            animatedTextElements.forEach((element) => {
                if (element.animation) {
                    element.animation.progress(1).kill();
                    element.split.revert();
                }

                element.split = new SplitText(element, {
                    type: "words",
                });

                element.split.words.forEach((word, index) => {
                    gsap.set(word, {
                        opacity: 0,
                        scale: index % 2 === 0 ? 1.5 : 0.8,
                        transformOrigin: "center center",
                    });
                });

                element.animation = gsap.to(element.split.words, {
                    scrollTrigger: {
                        trigger: element,
                        start: "top 90%",
                        toggleActions: "play reverse play reverse",
                    },
                    scale: 1,
                    opacity: 1,
                    duration: 1,
                    ease: "power2.out",
                });
            });
        }

        if ($(".text-anime-style-2").length) {
            let animatedTextElements = document.querySelectorAll(
                ".text-anime-style-2"
            );

            animatedTextElements.forEach((element) => {
                if (element.animation) {
                    element.animation.progress(1).kill();
                    element.split.revert();
                }

                element.split = new SplitText(element, {
                    type: "lines",
                    linesClass: "split-line",
                });

                gsap.set(element.split.lines, {
                    opacity: 1,
                    y: 0,
                    rotateY: -90,
                });

                element.animation = gsap.to(element.split.lines, {
                    scrollTrigger: {
                        trigger: element,
                        start: "top 90%",
                        toggleActions: "play reverse play reverse",
                    },
                    y: 0,
                    rotateY: 0,
                    opacity: 1,
                    duration: 1,
                    ease: "power2.out",
                    stagger: 0.1,
                });
            });
        }
        if ($(".text-anime-wave").length > 0) {
            let animatedTextElements =
                document.querySelectorAll(".text-anime-wave");
            animatedTextElements.forEach((element) => {
                if (element.animation) {
                    element.animation.progress(1).kill();
                    element.split.revert();
                }
                element.split = new SplitText(element, {
                    type: "lines,words,chars",
                    linesClass: "split-line",
                });
                gsap.set(element, { perspective: 400 });

                gsap.set(element.split.chars, {
                    opacity: 0,
                    y: "30px",
                });
                element.animation = gsap.to(element.split.chars, {
                    scrollTrigger: {
                        trigger: element,
                        start: "top 90%",
                        toggleActions: "play reverse play reverse",
                    },
                    opacity: 1,
                    y: "0",
                    duration: 0.6,
                    ease: "back",
                    transformOrigin: "0% 50% -50",
                    stagger: {
                        amount: 1,
                        from: "start",
                        ease: "sine.inOut",
                    },
                });
            });
        }
    };
    var animateImgItem = function () {
        $(window).on("scroll", function () {
            const isSmallScreen =
                window.matchMedia("(max-width: 550px)").matches;

            $(
                ".tf-animate-1, .tf-animate-2, .tf-animate-3, .tf-animate-4"
            ).each(function () {
                const sectionOffsetTop = $(this).offset().top;
                const sectionHeight = $(this).outerHeight();
                const scrollPosition = $(window).scrollTop();
                const windowHeight = $(window).height();

                if (isSmallScreen) {
                    if (
                        scrollPosition + windowHeight > sectionOffsetTop + 20 &&
                        scrollPosition < sectionOffsetTop + sectionHeight - 20
                    ) {
                        $(this).addClass("active-animate");
                    }
                } else {
                    if (
                        scrollPosition + windowHeight >
                            sectionOffsetTop + 100 &&
                        scrollPosition < sectionOffsetTop + sectionHeight - 100
                    ) {
                        $(this).addClass("active-animate");
                    }
                }
            });
        });
    };
    var hoverTextAnimate = function () {
        if ($(".hover-fade-text").length > 0) {
            $(".hover-fade-text").each(function () {
                const box = $(this);
                const textElement = box.find(".text-anime-wave-2");
                if (textElement.length) {
                    textElement[0].split = new SplitText(textElement[0], {
                        type: "words",
                    });
                    gsap.set(textElement[0].split.words, {
                        opacity: 0,
                        y: "30px",
                    });

                    box.on("mouseenter", function () {
                        gsap.to(textElement[0].split.words, {
                            opacity: 1,
                            y: "0",
                            duration: 0.4,
                            ease: "power1.out",
                            stagger: 0.1,
                        });
                    });
                    box.on("mouseleave", function () {
                        gsap.to(textElement[0].split.words, {
                            opacity: 0,
                            y: "30px",
                            duration: 0.4,
                            ease: "power1.in",
                            stagger: 0.1,
                        });
                    });
                }
            });
        }
    };
    var footer = function () {
        var args = { duration: 250 };
        $(".footer-title-mobile").on("click", function () {
            $(this).parent(".footer-col-block").toggleClass("open");
            if (!$(this).parent(".footer-col-block").is(".open")) {
                $(this).next().slideUp();
            } else {
                $(this).next().slideDown();
            }
        });
    };
    var tabImage = function () {
        $("#tabs .tab-links").on("click", ".item-link", function () {
            var tab_id = $(this).attr("data-tab");

            $("#tabs .tab-links .item-link").removeClass("current");
            $(this).addClass("current");

            $(".tab-content").hide();
            $("#" + tab_id).show();
        });

        $("#tabs-fade .tab-links").on("click", ".item-link", function () {
            var tab2_id = $(this).attr("data-tab");

            $("#tabs-fade .tab-links .item-link").removeClass("current");
            $(this).addClass("current");

            $(".tab-content").fadeOut();
            $("#" + tab2_id).fadeIn();
        });
    };
    var bgImage = function () {
        var pageSection = $(".bg-img");
        pageSection.each(function (indx) {
            if ($(this).attr("data-background")) {
                $(this).css(
                    "background-image",
                    "url(" + $(this).data("background") + ")"
                );
            }
        });
    };
    var socialActive = function () {
        $(document).ready(function () {
            $(".card-guide .icon").hover(
                function () {
                    $(this).siblings(".social-list").addClass("active");
                },
                function () {}
            );

            $(".card-guide").on("mouseleave", function () {
                $(this).find(".social-list").removeClass("active");
            });
        });
    };
    var preloader = function () {
        $("#loading").fadeOut("slow", function () {
            $(this).remove();
        });
    };
    // Dom Ready
    $(function () {
        tabs();
        textRotate();
        videoPopup();
        accordionActive();
        btnLoadMore();
        openWelcome();
        openNavMobile();
        animateText();
        animateBoxVideo();
        animateImgItem();
        headerSticky();
        headerChangeBg();
        goTop();
        retinaLogos();
        hoverTextAnimate();
        footer();
        tabImage();
        bgImage();
        socialActive();
        preloader();
    });
})(jQuery);

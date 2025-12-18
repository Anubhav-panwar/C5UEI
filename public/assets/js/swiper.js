if ($(".slider-project").length > 0) {
    var swiper = new Swiper(".slider-project", {
        loop: true,
        slidesPerView: 2.137647058823529,
        spaceBetween: 85,
        centeredSlides: true,
        pagination: {
            el: ".swiper-pagination.tf-pagination",
            clickable: true,
        },
        breakpoints: {
            0: {
                slidesPerView: 1,
                spaceBetween: 30,
            },
            991: {
                slidesPerView: 1.3,
                spaceBetween: 30,
            },
            1200: {
                slidesPerView: 1.5,
                spaceBetween: 30,
            },
            1440: { slidesPerView: 2 },
        },
    });
}
if ($(".slider-team").length > 0) {
    var swiper = new Swiper(".slider-team", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            450: {
                slidesPerView: 1.3,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            930: {
                slidesPerView: 3,
            },
            1070: {
                slidesPerView: 3.5,
            },

            1300: { slidesPerView: 4 },
        },
    });
}

if ($(".testimonial-thumbs").length > 0) {
    var direction = $(".slider-testimonial-thumb").data("direction");
    var thumbs = new Swiper(".slider-testimonial-thumb", {
        spaceBetween: 30,
        slidesPerView: 1,
        direction: "horizontal",
        simulateTouch: false,
    });
    var main = new Swiper(".slider-testimonial", {
        spaceBetween: 0,
        slidesPerView: 1,
        observer: true,
        observeParents: true,
        simulateTouch: true,

        thumbs: {
            swiper: thumbs,
        },
        pagination: {
            el: ".swiper-pagination.style-2.tf-pagination",
            clickable: true,
        },
    });
}
if (".slider-blog".length > 0) {
    var swiper = new Swiper(".slider-blog", {
        slidesPerView: 3,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            651: {
                slidesPerView: 1.5,
            },

            850: {
                slidesPerView: 2,
            },
            991: {
                slidesPerView: 2.5,
            },
            1200: { slidesPerView: 3 },
        },
    });
}
if (".slider-partner".length > 0) {
    var swiper = new Swiper(".slider-partner", {
        slidesPerView: 6,
        loop: true,
        autoplay: {
            pauseOnMouseEnter: true,
            delay: 0,
            disableOnInteraction: false,
        },
        speed: 7000,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            450: {
                slidesPerView: 2,
            },
            550: {
                slidesPerView: 2.5,
            },
            991: {
                slidesPerView: 4,
            },
            1600: {
                slidesPerView: 6,
            },
        },
    });
}
if (".slider-home-2".length > 0) {
    var swiper = new Swiper(".slider-home-2", {
        slidesPerView: 1,
        centeredSlides: true,
        effect: "fade",
        speed: 900,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination.style-3.tf-pagination",
            clickable: true,
        },
    });
}

if (".slider-service".length > 0) {
    var swiper = new Swiper(".slider-service", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            930: {
                slidesPerView: 3,
            },
            1070: {
                slidesPerView: 3.5,
            },

            1300: { slidesPerView: 4 },
        },
        pagination: {
            el: ".service-pagination",
            clickable: true,
        },
    });
}
if (".slider-case".length > 0) {
    var swiper = new Swiper(".slider-case", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            991: {
                slidesPerView: 3,
            },
            1400: {
                slidesPerView: 3.5,
            },
            1600: { slidesPerView: 4 },
        },
    });
}
if (".slider-feedback".length > 0) {
    var swiper = new Swiper(".slider-feedback", {
        slidesPerView: 2,
        spaceBetween: 30,
        navigation: {
            prevEl: ".btn-slider-feedback.slide-prev",
            nextEl: ".btn-slider-feedback.slide-next",
        },
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            767: {
                slidesPerView: 1.5,
            },
            991: {
                slidesPerView: 2,
            },
        },
    });
}
if (".slider-feedback-2".length > 0) {
    var swiper = new Swiper(".slider-feedback-2", {
        slidesPerView: 1.5,
        spaceBetween: 30,
        navigation: {
            prevEl: ".btn-feedback-2.slide-prev",
            nextEl: ".btn-feedback-2.slide-next",
        },
        pagination: {
            el: ".swiper-pagination.style-5.tf-pagination",
            clickable: true,
        },
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            991: {
                slidesPerView: 1.5,
            },
        },
    });
}
if (".slider-feedback-3".length > 0) {
    var swiper = new Swiper(".slider-feedback-3", {
        slidesPerView: 2.6,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            767: {
                slidesPerView: 1.5,
            },
            991: {
                slidesPerView: 2,
            },
            1300: { slidesPerView: 2.6 },
        },
    });
}
if (".slider-box-icon".length > 0) {
    var swiper = new Swiper(".slider-box-icon", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            930: {
                slidesPerView: 3,
            },
            1070: {
                slidesPerView: 3.5,
            },

            1300: { slidesPerView: 4 },
        },
    });
}
if (".slider-service-2".length > 0) {
    var swiper = new Swiper(".slider-service-2", {
        slidesPerView: 1,
        speed: 300,
        pagination: {
            el: ".swiper-pagination.style-4.tf-pagination",
            clickable: true,
        },
        navigation: {
            prevEl: ".btn-service-2.slide-prev",
            nextEl: ".btn-service-2.slide-next",
        },
    });
}
if (".slider-case-2".length > 0) {
    var swiper = new Swiper(".slider-case-2", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            651: {
                slidesPerView: 1.5,
            },

            850: {
                slidesPerView: 2,
            },
            991: {
                slidesPerView: 2.5,
            },
            1570: {
                slidesPerView: 3.5,
            },

            1800: { slidesPerView: 4 },
        },
    });
}
if (".slider-our-advisor".length > 0) {
    var swiper = new Swiper(".slider-our-advisor", {
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            425: {
                slidesPerView: 1.5,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            930: {
                slidesPerView: 3,
            },
            1070: {
                slidesPerView: 3.5,
            },

            1300: { slidesPerView: 4 },
        },
    });
}
if (".slider-feature".length > 0) {
    var swiper = new Swiper(".slider-feature", {
        slidesPerView: 5,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            991: {
                slidesPerView: 3,
            },
            1300: {
                slidesPerView: 4,
            },
            1600: {
                slidesPerView: 5,
            },
        },
    });
}
if (".slider-working".length > 0) {
    var swiper = new Swiper(".slider-working", {
        slidesPerView: 4,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            578: {
                slidesPerView: 2,
            },
            767: {
                slidesPerView: 2.5,
            },
            930: {
                slidesPerView: 3,
            },
            1070: {
                slidesPerView: 3.5,
            },

            1300: { slidesPerView: 4 },
        },
    });
}
if (".slider-testimonial-2".length > 0) {
    var swiper = new Swiper(".slider-testimonial-2", {
        slidesPerView: 1,
        spaceBetween: 30,
        navigation: {
            prevEl: ".btn-slider-tesimonial.btn-prev",
            nextEl: ".btn-slider-tesimonial.btn-next",
        },
    });
}
if (".slider-award".length > 0) {
    var swiper = new Swiper(".slider-award", {
        slidesPerView: 3,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            651: {
                slidesPerView: 1.5,
            },

            850: {
                slidesPerView: 2,
            },
            991: {
                slidesPerView: 2.5,
            },
            1200: { slidesPerView: 3 },
        },
        pagination: {
            el: ".award-pagination",
            clickable: true,
        },
    });
}
if (".slider-carousel".length > 0) {
    var swiper = new Swiper(".slider-carousel", {
        slidesPerView: 3,
        spaceBetween: 30,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            651: {
                slidesPerView: 1.5,
            },

            850: {
                slidesPerView: 2,
            },
            991: {},
            1200: { slidesPerView: 3 },
        },
        slidesPerView: 2.5,
        pagination: {
            el: ".carousel-pagination",
            clickable: true,
        },
    });
}

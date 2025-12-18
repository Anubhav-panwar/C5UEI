function isElementInViewport($el) {
    var top = $el.offset().top;
    var bottom = top + $el.outerHeight();
    var viewportTop = $(window).scrollTop();
    var viewportBottom = viewportTop + $(window).height();
    return bottom > viewportTop && top < viewportBottom;
}
if ($(".counter-scroll").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter"))) {
            setTimeout(function () {
                $(".odometer").html(250);
            }, 0);
        }
        if (isElementInViewport($(".wg-counter.style-5"))) {
            setTimeout(function () {
                $(".odometer.style-5").html(93);
                $(".odometer.style-5-2").html(86);
                $(".odometer.style-5-3").html(79);
            }, 0);
        }
    });
}
if ($(".counter-scroll-2").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-2"))) {
            setTimeout(function () {
                $(".odometer.style-2").html(18);
                $(".odometer.style-2-2").html(93);
                $(".odometer.style-2-3").html(27);
            }, 0);
        }
    });
}
if ($(".counter-scroll-3").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-6"))) {
            setTimeout(function () {
                $(".odometer.style-6").html(98);
            }, 0);
        }
        if (isElementInViewport($(".wg-counter.style-5"))) {
            setTimeout(function () {
                $(".odometer.style-5").html(98);
                $(".odometer.style-5-2").html(73);
            }, 0);
        }
        if (isElementInViewport($(".wg-counter.style-2.type-2"))) {
            setTimeout(function () {
                $(".odometer.style-2").html(18);
                $(".odometer.style-2-2").html(5);
            }, 0);
        }
    });
}
if ($(".counter-scroll-4").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-6"))) {
            setTimeout(function () {
                $(".odometer.style-6").html(93);
            }, 0);
        }
        if (isElementInViewport($(".wg-counter.style-7"))) {
            setTimeout(function () {
                $(".odometer.style-7").html(93);
                $(".odometer.style-7-2").html(86);
            }, 0);
        }
        if (isElementInViewport($(".counter-list"))) {
            setTimeout(function () {
                $(".odometer.style-8").html(98);
                $(".odometer.style-8-2").html(5);
                $(".odometer.style-8-3").html(20);
            }, 0);
        }
    });
}
if ($(".counter-scroll-5").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-4"))) {
            setTimeout(function () {
                $(".odometer.style-4").html(25);
            }, 0);
        }
        if (isElementInViewport($(".wg-counter.style-6"))) {
            setTimeout(function () {
                $(".odometer.style-6").html(93);
            }, 0);
        }
    });
}
if ($(".counter-scroll-6").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-6"))) {
            setTimeout(function () {
                $(".odometer.style-6").html(93);
            }, 0);
        }
    });
}

if ($(".counter-scroll-7").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-9"))) {
            setTimeout(function () {
                $(".odometer.style-9").html(25);
            }, 0);
        }
    });
}
if ($(".counter-scroll-8").length > 0) {
    $(window).on("scroll", function () {
        if (isElementInViewport($(".wg-counter.style-5"))) {
            setTimeout(function () {
                $(".odometer.style-5").html(89);
                $(".odometer.style-5-2").html(67);
                $(".odometer.style-5-3").html(83);
                $(".odometer.style-5-4").html(70);
            }, 0);
        }
    });
}

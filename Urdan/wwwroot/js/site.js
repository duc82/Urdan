///<reference path="../lib/jquery/dist/jquery.min.js" />
///<reference path="../lib/swiper/package/swiper-bundle.min.js" />
///<reference path="../lib/aos-master/dist/aos.js" />


const header = $(".header");
const scrollUp = $(".scrollUp");

if ($(window).scrollTop() > 150) {
    header.addClass("sticky");
    scrollUp.css({ "visibility": "visible", "opacity": "1" });
}







$(window).on("scroll", function () {
    if ($(window).scrollTop() > 150) {
        header.addClass("sticky");
        scrollUp.css({ "visibility": "visible", "opacity": "1" });
    } else {
        header.removeClass("sticky");
        scrollUp.css({ "visibility": "hidden", "opacity": "0" });
    }
})


// Go to top
scrollUp.on("click", function () {
    $("html, body").scrollTop(0);
})

// Toggle search button
$("#header-search").on("click", function () {
    $(this).children().toggleClass("pe-7s-search pe-7s-close")
})



// Hero slider 
const heroSlider = new Swiper(".hero-slider-section", {
    loop: true,
    effect: "fade",
    speed: 750,
    slidesPerView: 1,
    navigation: {
        prevEl: ".hero-slider-prev",
        nextEl: ".hero-slider-next"
    }
})

// Product slider
const productSlider = new Swiper(".product-slider", {
    loop: true,
    spaceBetween: 30,
    navigation: {
        prevEl: ".product-slider-prev",
        nextEl: ".product-slider-next",
    },
    breakpoints: {
        576: {
            slidesPerView: 2,
        },
        768: {
            slidesPerView: 3
        },
        1200: {
            slidesPerView: 4
        }
    }
})

// Scroll animation
AOS.init({
    once: true,
    duration: 1000
})


const amount = $("#amount").val();
let values = [0, 400];

if (amount) {
    const prices = amount.replaceAll("$", "").split(" - ");
    values = [...prices];
}

$("#slider-range").slider({
    range: true,
    min: 0,
    max: 500,
    values,
    slide: function (event, ui) {
        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
    }
});

if (!amount) {
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
        " - $" + $("#slider-range").slider("values", 1));
}









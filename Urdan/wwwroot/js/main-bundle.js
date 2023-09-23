
const footer = {
    informations: [
        {
            label: "Abous Us",
            link: "/About"
        },
        {
            label: "Delivery Information",
            link: "/Delivery-Information"
        },
        {
            label: "Privacy Policy",
            link: "/Privacy-Policy"
        },
        {
            label: "Terms & Conditions",
            link: "/Terms-Conditions"
        },
        {
            label: "Customer Service",
            link: "/Customer-Service"
        }
    ],
    accounts: [
        {
            label: "My Account",
            link: "/Account",
        },
        {
            label: "Order History",
            link: "/Order"
        },
        {
            label: "Wish List",
            link: "/Wishlist"
        },
        {
            label: "Newsletter",
            Link: "/Newsletter"
        },
        {
            label: "Order History",
            link: "/Order"
        }
    ],
    addresses: [
        {
            label: "Address",
            content: "Le Trong Tan, Ha Dong, Ha Noi"
        },
        {
            label: "Telephone Enquiry",
            content: "(012) 345 6789"
        },
        {
            label: "Email",
            content: "deme@example.com"
        }
    ],
};


footer.informations.forEach((information) => {
    $(".footer-information ul").append(`
    <li>
        <a href=${information.link}>${information.label}</a>
    </li >`)
})


footer.accounts.forEach((account) => {
    $(".footer-account ul").append(`
    <li>
        <a href=${account.link}>${account.label}</a>
    </li>`)
})


footer.addresses.forEach((address) => {
    $(".footer-address ul").append(`
        <li>
            <span>${address.label}:</span>
            ${address.content}
        </li>
    `)
})



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









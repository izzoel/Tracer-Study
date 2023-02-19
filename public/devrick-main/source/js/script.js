// on ready state
$(document).ready(function () {
  "use strict";
  $(window).scroll(function () {
    if ($(window).scrollTop() > 0) {
      $(".navigation").addClass("fixed-menu ");
    } else {
      $(".navigation").removeClass("fixed-menu ");
    }
    if ($(window).scrollTop() > 1000) {
      $(".backtotop").fadeIn();
    } else {
      $(".backtotop").fadeOut();
    }
  });

  $(".backtotop").click(function () {
    $("html,body").animate({
      scrollTop: 0,
    });
  });

  // brand log slider
  $(".brand-logo-slider").slick({
    dots: false,
    infinite: true,
    arrows: false,
    autoplay: true,
    fade: false,
    speed: 300,
    slidesToShow: 6,
    slidesToScroll: 1,
    responsive: [
      {
        breakpoint: 991,

        settings: {
          slidesToShow: 4,
          slidesToScroll: 1,
          dots: false,
          infinite: true,
          arrows: false,
        },
      },
      {
        breakpoint: 769,
        settings: {
          dots: false,
          infinite: true,
          arrows: false,
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 576,
        settings: {
          dots: false,
          infinite: true,
          arrows: false,
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
    ],
  });

  // Testimonial-Slider
  $(".testimonial-left-slider").slick({
    dots: false,
    infinite: true,
    arrows: true,
    autoplay: false,
    prevArrow: '<i class="fas fa-arrow-left prev-arrow"></i>',
    nextArrow: '<i class="fas fa-arrow-right next-arrow"></i>',
    speed: 300,
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: ".testimonial-right-slider",
    responsive: [
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          dots: false,
          infinite: true,
          autoplay: false,
        },
      },
      {
        breakpoint: 769,
        settings: {
          dots: false,
          infinite: true,
          arrows: false,
          autoplay: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 576,
        settings: {
          dots: false,
          infinite: true,
          arrows: false,
          autoplay: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
  $(".testimonial-right-slider").slick({
    dots: false,
    infinite: true,
    arrows: false,
    autoplay: false,
    fade: true,
    speed: 300,
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: ".testimonial-left-slider",
    responsive: [
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          infinite: true,
          dots: false,
        },
      },
      {
        breakpoint: 769,
        settings: {
          autoplay: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 576,
        settings: {
          autoplay: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});

// Preloader
//   setTimeout(function () {
//     $(".preloader").fadeOut()
//   }, 1500);

// });

// AOS.init();

$(window).on("load", function () {
  "use strict";
  // preloader init
  setTimeout(function () {
    $(".preloader").fadeOut(200);

    // aos scroll-animation Init
    function aosAnim() {
      AOS.init({
        duration: 600,
        once: true,
      });
    }
    setTimeout(function () {
      aosAnim();
    }, 100);
  }, 1500);
});

$(document).ready(function () {
  "use strict";

  var Shuffle = window.Shuffle;

  var myShuffle = new Shuffle(document.querySelector(".my-shuffle"), {
    itemSelector: ".image-item",
    sizer: ".my-sizer-element",
    buffer: 1,
  });

  window.jQuery('input[name="shuffle-filter"]').on("change", function (evt) {
    var input = evt.currentTarget;
    if (input.checked) {
      myShuffle.filter(input.value);
    }
  });

  $(".portfolio-filters .btn").click(function () {
    $(this).addClass("active").siblings().removeClass("active");
  });
});

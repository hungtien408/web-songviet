function pageLoad() {
}
(function ($) {
    $(window).load(function () {
        height_popup();
    });
    $(window).resize(function () {
        height_popup()
    });
    $(function () {
        myfunload();
        mypageload();
    });
})(jQuery);

//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("first");
    $("#menu > li:has(ul li) > a").append('<span class="icon-down"></span>');
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();
    
    $('#slider-banner').nivoSlider({
        pauseOnHover: true,
        autoplaySpeed: 4000,
        speed: 1000,
        directionNav: true,
        controlNav: false,
        animSpeed: 1500,
    });

    if ($('#productSlider').size() == 1) {
        var productSlider = $('#productSlider').imagesLoaded(function () {
            productSlider.owlCarousel({
                margin: 35,
                loop: true,
                autoplaySpeed: 4000,
                nav: true,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    400: {
                        items: 2
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 4
                    },
                    1200: {
                        items: 4
                    },
                }
            });
        });
    }
    if ($('.project-tb').size() > 0) {
        var projecttb = $('.project-tb').imagesLoaded(function () {
            projecttb.textHeight({
                activetit: true,
                listcss: [{ cssname: ".project-img" }, { cssname: ".project-name" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
            setTimeout(function () {
                projecttb.isotope({
                    itemSelector: '.element-item',
                    layoutMode: 'fitRows'
                });
            }, 100);
        });
    }
    mymap();
    myfunsroll();
}
/*=========================================================================*/
function mypageload() {
}
/*========================================================================*/

/*===============================*/
function myfunsroll() {
    menusroll();
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}
function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
/* accodion FAQ */
/* accodion tin van */
$(".tin-content").hide();
// Áp dụng sự kiện click vào thẻ h3
$(".tin-title").click(function () {
    // chọn .accordion (do phần tử đi đi ngay sau phần tử h3 nên ta dùng .next())
    $(".tin-title").removeClass('active');
    $accordion = $(this).next();
    // Kiểm tra nếu đang ẩn thì sẽ hiện và ẩn các phần tử khác
    // Nếu đang hiện thì click vào h3 sẽ ẩn
    if ($accordion.is(':hidden') === true) {
        $(".tin-content").slideUp();
        $accordion.slideDown();
        $(this).addClass('active');
    } else {
        $accordion.slideUp();
        $(".tin-title").removeClass('active');
    }
});



/** popup **/
$('.btn-ut').click(function () {
    $('#mainContent').append('<div id="overlay-screen-active">');
    $('.popup-content').css('top', '0');
    var n = $(this).parents('.address-contact');
    var x = n.find('.map-iframe > iframe').attr('src');
    $('.popup-content > .form-popup > iframe').removeAttr('src');
    $('.popup-content > .form-popup > iframe').attr('src',x);
});
$(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
    $('.popup-content').css('top', '-250%');
    $('#overlay-screen-active').fadeOut();
    $('#overlay-screen-active').remove();
    return false;
});
$(document).ready(function () {
    $(window).resize(function () {
        var winwidth = $(window).width();
        if ($(window).width() > 480) {
            $('.btn-ut').click(function () {
                $('#mainContent').append('<div id="overlay-screen-active">');
                $('#overlay-screen-active').remove();
                $('.popup-content').css('top', '0');
            });
            $(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
                $('.popup-content').css('top', '-250%');
                $('#overlay-screen-active').fadeOut();
                $('#overlay-screen-active').remove();
                return false;
            });
        }
        else if ($(window).width() < 480) {
        }
    }).resize();
});

function height_popup() {
    var win_height = $(window).height();
    $('.popup .popup-content').css('max-height', win_height - 30);
    var x = $('.popup-content').height();
    var y = $('.popup .popup-content h1').height();
    $('.form-popup > iframe').css('height', x - (y + 30));
}
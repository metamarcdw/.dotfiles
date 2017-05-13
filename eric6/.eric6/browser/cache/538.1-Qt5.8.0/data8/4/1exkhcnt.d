   �         ehttp://d33763z96x0wep.cloudfront.net/wp-content/themes/qtblog/assets/js/qtblog.js.gzip?ver=2017041800�       ����      %�8-�         
     O K           �      Content-Type   application/x-javascript   Date   Tue, 18 Apr 2017 11:13:10 GMT   Last-Modified   Mon, 20 Jun 2016 05:40:59 GMT   ETag   ""685be70be9608dd1f1e0f2abc176e8ef"   Content-Encoding   gzip   Accept-Ranges   bytes   Server   AmazonS3   Age   59958   X-Cache   Hit from cloudfront   Via   @1.1 70e314cdf468039e9285b629f6216452.cloudfront.net (CloudFront)   X-Amz-Cf-Id   8gOxPV2yc64VhTbqMjYY2OPaQezRu6cbs0WLndp_bjqtkaVFWUnGjIA== "use strict";

function createCookie(name, value, days) {
    var expires;

    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    } else {
        expires = "";
    }
    document.cookie = escape(name) + "=" + escape(value) + expires + "; path=/";
    $('.cookies_yum').click(function() {
        $(this).hide();
        $('body').removeClass('cookie-in-view');
    });
}

function readCookie(name) {
    var nameEQ = escape(name) + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return unescape(c.substring(nameEQ.length, c.length));
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name, "", -1);
}

function load_sdk(s, id, src) {
    var js, fjs = document.getElementsByTagName(s)[0];
    if (document.getElementById(id)) return;
    js = document.createElement(s);
    js.id = id;
    js.src = src;
    fjs.parentNode.insertBefore(js, fjs);
}

//jQuery
$(document).ready(function($) {
    // Convert a few links into buttons.
    $('.comment-reply-link, #cancel-comment-reply-link, .wp-paginate a, .wp-paginate span.current').addClass('btn');

    // Alter buttons to get the bevel effect.
    $('.btn').each( function() {
        $(this).html('<em style="position: relative; z-index: 5; font-style: normal;">' + $(this).text() + '</em>');
        $(this).append('<div class="bevel-helper"></div>');
    });

    // Add bevel to comment author images.
    $('.commentlist .comment-author img.avatar').wrap('<div class="author-avatar" />');

    $(".in-page-nav a").on("click", function(e) {
        e.preventDefault();
        var b = $(this).attr("href");
        $("html, body").animate({
            scrollTop: $(b).offset().top
        }, 900);
    });

    // Lets move the links if needed
    if(document.documentElement.clientWidth < 1120){
        oneQt.extraLinksToMain();
    }
    oneQt.accordion();

    $('#menuextras .search').click(function(e){
        e.preventDefault();
        $('.big_bar.account').slideUp();
        $('.big_bar.search').slideToggle();
        $('.big_bar_search').focus();
        $(this).toggleClass('open');
    });

    $('.cookies_yum').click(function() {
        $('.cookies_yum').hide();
        createCookie("cookies_nom", "yum", 180);
        $('body').removeClass('cookie-in-view');

        var cookie_added = 1;
    });

    if (!(readCookie('cookies_nom') == 'yum')){
        $('.cookies_yum').show();
        $('body').addClass('cookie-in-view');
    } else {
        var cookie_added = 1;
    }

    //mobile nav
    $('#navbar .navbar-toggle').click(function(e) {
        e.preventDefault();
        //close mobile nav
        if($(this).hasClass('opened'))
        {
            $(this).removeClass('opened');
            $('#navbar .navbar-menu').css('max-height', '0px');
            //$('#navbar .navbar-menu').removeClass('opened');
        }
        //open mobile nav
        else
        {
            $(this).addClass('opened');
            $('#navbar .navbar-menu').css('max-height', $('#navbar .navbar-menu ul').outerHeight() + 'px');
            //$('#navbar .navbar-menu').addClass('opened');

        }
    });

    //set actions to be done after window resize
    $(window).resize(function() {
        //check if footer needs to be fixed to bottom
        oneQt.footerPosition();

        if(document.documentElement.clientWidth < 1120) {
            oneQt.extraLinksToMain();
        } else {
            oneQt.mainLinkstoExtra();
        }

    });

    //set actions to be done on window scroll
    $(window).scroll(function() {
        //update floating mainmenu
        oneQt.stickyHeader();
    });

    //check if footer needs to be fixed to bottom
    oneQt.footerPosition();

});

$( window ).load(function() {
    // Load dynamically after everything else has been loaded
    load_sdk('script', 'facebook-jssdk','//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=207346529386114&version=v2.0');
    load_sdk('script', 'twitter-wjs', '//platform.twitter.com/widgets.js');

    if (!(readCookie('anim_seen') == 'da')){
        createCookie("anim_seen", "da", 180);
    } else {
        $('body').addClass('show-all-anim');
        $('[class*="cloud--"]').addClass('float');
    }
});


/**
 * oneQt main object
 */
var oneQt = {
    /**
     * HEP! Accordion <3
     */
    accordion: function () {
        var accordionTrigger = $('.accordion-item').find('header');

        $(accordionTrigger).on('click', function () {

            $(this).parent().toggleClass('open');
        });
    },

    /**
     * Check if footer needs to be fixed to bottom
     */
    footerPosition: function () {
        $('#footerbar').removeClass('fixed');
        //If there is a hbspt form than don't try to adjust the stuff
        if (($('.hbspt-form').length > 0) || ($('#customerInfo').length > 0) || ($('.purchase_bar').length > 0)) {
            //get footer position
            var footerBottomPos = $('#footerbar').offset().top + $('#footerbar').outerHeight();
            //set fixed position if footer isn't at least at bottom of the screen
            if(footerBottomPos < $(window).height())
                $('#footerbar').addClass('fixed');
        }
    },

    /**
     * Update mainmenu layout according to window scroll position
     */
    stickyHeader: function () {
        var originalHeaderHeight = 79;
        //set sticky nav styles if page was scrolled more than original header height
        if($(window).scrollTop() > originalHeaderHeight) {
            $('#navbar').addClass('fixed');

            if (!(cookie_added == 1)) {
                $('.cookies_yum').hide();
                $('body').removeClass('cookie-in-view');
                createCookie("cookies_nom", "yum", 180);
                var cookie_added = 1;
            }
        }
        else {
            $('#navbar').removeClass('fixed');
        }
    },
    extraLinksToMain: function(){

        // Lets move the links, depending on resolution
        var extramenuLinks = $('#menuextras').find('li');
        var mainmenu = $('#mainmenu');
        var count = 0;

        if($(extramenuLinks).length > 3){
            $(extramenuLinks).each(function(){

                if(count < 3){

                    var newLink = $(this);

                    $(newLink).addClass('dynamic-add');

                    $(mainmenu).append(newLink);

                }

                count++;

            });
        }
    },
    mainLinkstoExtra: function(){

        // Lets move the links, depending on resolution
        var mainmenuLinks = $('#mainmenu').find('.dynamic-add');
        var extramenu = $('#menuextras');
        var searchLink = $('li.search');
        var count = 0;

        $(mainmenuLinks).each(function(){

            var newLink = $(this);

            $(searchLink).before(newLink);

            count++;

        });
    }
}

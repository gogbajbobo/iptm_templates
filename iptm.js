/**
 * Created by grimax on 28/03/2017.
 */

$(document).ready(function() {

    $(".navbar a, footer a[href='#iptmPage']").on('click', function(event) {

        if (this.hash !== "") {

            event.preventDefault();

            var hash = this.hash;

            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function() {
                window.location.hash = hash;
            });

        }

    });

});


$(window).scroll(function() {

    $(".slideanim").each(function() {

        var pos = $(this).offset().top;

        var winTop = $(window).scrollTop();

        if (pos < winTop + 600) {
            $(this).addClass("slide");
        }

    });

});

/**
 * Created by grimax on 28/03/2017.
 */

$(document).ready(function() {

    scrollToSection();
    animateSelectedSection();
    closeNavbarOnClick();
    
});

function scrollToSection() {
// Прокрутка к выбранному разделу

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
    
}

function animateSelectedSection() {
    // Анимация при выборе раздела

    $(window).scroll(function() {

        $(".slideanim").each(function() {

            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();

            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }

        });

    });

}

function closeNavbarOnClick() {
    // Закрываем меню после выбора

    $('.nav a').on('click', function() {
        // $('.navbar-toggle').click();
        $('.navbar-collapse').collapse('hide');
    });

}
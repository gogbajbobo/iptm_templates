/**
 * Created by grimax on 28/03/2017.
 */

$(document).ready(function() {

    scrollToSection();
    // animateSelectedSection();
    closeNavbarOnClick();
    spyForScrollSpy();
    disableFormSubmitButtons();
    
});

function scrollToSection() {
// Прокрутка к выбранному разделу

    $(".navbar a, footer a[href='#iptmPage']").on('click', function(event) {

        if (this.hash !== "") {

            event.preventDefault();

            let hash = this.hash;

            $('html, body').animate({
                scrollTop: $(hash).offset().top - 40
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

            let pos = $(this).offset().top;

            let winTop = $(window).scrollTop();

            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }

        });

    });

}

function spyForScrollSpy() {
    // Показываем заголовок раздела в навбаре на телефоне

    $('body').on('activate.bs.scrollspy', function () {

        let navbarMenu = $('#menu-navbar');
        let activeMenuItem = navbarMenu.children('li.active');
        let activeMenuText = activeMenuItem.children('a').text();
        $('#infotext-navbar').text(activeMenuText);

    });

}

function closeNavbarOnClick() {
    // Закрываем меню после выбора

    $('.nav a').on('click', function() {

        let classNames = this.className.split(' ');

        if (classNames.indexOf('dropdown-toggle') !== -1) {
            return;
        }

        $('.navbar-collapse').collapse('hide');

    });

}

function disableFormSubmitButtons() {

    $.each($('.form-submit-button'), function (index, button) {
        button.disabled = true;
    });

}

function enableFormSubmitButton() {

    $.each($('.form-submit-button'), function (index, button) {
        button.disabled = false;
    });

}
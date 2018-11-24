/**
 * Created by grimax on 28/03/2017.
 */

$(document).ready(() => {

    getFooter();
    getModals();

    scrollToSection();
    closeNavbarOnClick();
    spyForScrollSpy();
    disableFormSubmitButtons();
    showNotifyBadgeItems();
    modalDocLinks();
    // loadEmails();

});

function getFooter() {
    getHtmlChunk('footer');
}

function getModals() {

    const modals = ['feedback', 'search', 'login', 'modaldoc', 'modaldocland', 'modaldoc-nojs'];

    modals.forEach(modal => {
        getHtmlChunk(modal);
    });

}

function getHtmlChunk(name) {

    let path = `${name}.html`;

    $.get(path, data => {

        let chunk = $(data).filter(`#iptm-${name}`);
        $(`#iptm-${name}`).replaceWith(chunk);

    });

}

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

function spyForScrollSpy() {
    // Показываем заголовок раздела в навбаре на телефоне

    $('body').on('activate.bs.scrollspy', () => {

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

    $.each($('.form-submit-button'), (index, button) => {
        button.disabled = true;
    });

}

function enableMailFormSubmitButton() {
    $('#mail-form-submit-button')[0].disabled = false;
}

function showNotifyBadgeItems() {
    $(".notify-badge-item").prepend("<div class='badge-item'><span class='notify-badge'>!</span></div>");
}

function modalDocLinks() {

    $.each($('.modaldoc-link'), (index, link) => {

        link.onclick = () => {

            const modalId = $(link).attr('data-target');
            const linkTag = $(`${modalId} a.image-in-modal-body:first`);

            if (linkTag.contents().length) return;

            const imgUrl = linkTag.attr('data-img-url');
            $(linkTag).append(`<img src="${imgUrl}">`);

        };

    });

}

function loadEmails() {

    // GET request url will look like this: ./api-email-by-id.php?id=1
    // in success callback we expect string with email value

    $.each($('a.user-email'), (index, link) => {

        const { id } = link;

        $.ajax({
            url: './api-email-by-id.php',
            data: { id },
            method: 'GET',
            success: email => $(link).attr('href', `mailto:${ email }`),
            error: () => $(link).attr('href', '#')
        });

    });

}


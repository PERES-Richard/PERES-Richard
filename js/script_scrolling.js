<!-- Animation scrolling-->
$(document).on('click', 'a[href^="#"]', function (event) {
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $($.attr(this, 'href')).offset().top - 65
    }, 1000);
});

// Collapse menu after clic on section
$(document).on('click', '.nav-link', function (event) {
    $(".navbar-toggler").click()
});

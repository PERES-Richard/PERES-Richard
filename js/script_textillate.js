<!-- Textillate du titre-->
$(function () {
    //   $('.titre').textillate({ in: {
    //       effect: 'fadeInLeftBig',
    //       delay: 50
    //     }
    //   });
    $('.soustitre').textillate({
        in: {
            effect: 'rollIn',
            delay: 10
        },
        out: {
            effect: 'rollOut',
            initialDelay: 50,
            delay: 20
        },
        loop: true
    });
    $('[data-toggle="tooltip"]').tooltip()
})

var typed = new Typed("#title", {
    stringsElement: '#title-strings',
    typeSpeed: 50,
    backSpeed: 30,
    backDelay: 1000,
    startDelay: 750,
    loop: false,
});

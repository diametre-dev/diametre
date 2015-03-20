$(document).ready(function() {
  $('.arrow-right').click(function() {
    if (!$('span.active').next().hasClass('last')) {
      $('span.active').removeClass('active').addClass('inactive').next().removeClass('inactive').addClass('active');
      $('p.active').removeClass('active').addClass('inactive').next().removeClass('inactive').addClass('active');
    };
  });

  $('.arrow-left').click(function() {
    if (!$('span.active').prev().hasClass('first')) {
      $('span.active').removeClass('active').addClass('inactive').prev().removeClass('inactive').addClass('active');
      $('p.active').removeClass('active').addClass('inactive').prev().removeClass('inactive').addClass('active');
    };
  });
});
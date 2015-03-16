$(document).ready(function() {
  $(window).scroll(function() {
   if($(document.body).scrollTop() > 600 && $('#about').hasClass('active')) {
      $('#about').removeClass('active').addClass('inactive');
      $('#team').removeClass('inactive').addClass('active');
   }
   if ($(document.body).scrollTop() < 600 && $('#team').hasClass('active')) {
      $('#team').removeClass('active').addClass('inactive');
      $('#about').removeClass('inactive').addClass('active');
   }
  });
});


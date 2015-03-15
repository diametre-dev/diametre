$(document).ready(function() {
  $(window).scroll(function() {
   if($(document.body).scrollTop() > 700 && $('#about').hasClass('active')) {
      $('#about').removeClass('active').addClass('inactive');
      $('#team').removeClass('inactive').addClass('active');
   }
   if ($(document.body).scrollTop() < 700 && $('#team').hasClass('active')) {
      $('#team').removeClass('active').addClass('inactive');
      $('#about').removeClass('inactive').addClass('active');
   }
  });
});


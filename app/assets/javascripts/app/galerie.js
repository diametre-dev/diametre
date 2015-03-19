$(document).ready(function() {
  $('.arrow-right').click(function() {
    $('.active').removeClass('active').addClass('inactive').next().removeClass('inactive').addClass('active');
  });
  $('.arrow-left').click(function() {
    $('.active').removeClass('active').addClass('inactive').prev().removeClass('inactive').addClass('active');
  });
});
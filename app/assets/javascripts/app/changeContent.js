$(document).ready(function() {
  $('#handler2').click(function() {
    $('.active').removeClass('active').addClass('inactive');
    $('#layer2').removeClass('inactive').addClass('active');
  });
  $('#handler1').click(function() {
    $('.active').removeClass('active').addClass('inactive');
    $('#layer1').removeClass('inactive').addClass('active');
  });
  $('#handler3').click(function() {
    $('.active').removeClass('active').addClass('inactive');
    $('#layer3').removeClass('inactive').addClass('active');
  });
  $('#handler4').click(function() {
    $('.active').removeClass('active').addClass('inactive');
    $('#layer4').removeClass('inactive').addClass('active');
  });
});


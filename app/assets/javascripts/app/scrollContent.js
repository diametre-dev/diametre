 $(window).scroll(function() {
   if($(window).scrollTop() + $(window).height() == $(document).height()) {
      $('#first-section').removeClass('activesection').addClass('unactivesection');
      $('#second-section').removeClass('unactivesection').addClass('activesection');
   }
   if($(window).scrollTop() == 0) {
      $('#second-section').removeClass('activesection').addClass('unactivesection');
      $('#first-section').removeClass('unactivesection').addClass('activesection');
   }
});
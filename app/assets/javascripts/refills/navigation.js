$(document).ready(function() {
  var menuToggle = $('#js-mobile-menu').unbind();
  $('#js-navigation-menu').removeClass("show");

  menuToggle.on('click', function(e) {
    e.preventDefault();
       if($('#js-navigation-menu').is(':hidden')) {
        $('#menu-icon').html('<i class="fa fa-caret-up"></i>');
      } else {
        $('#menu-icon').html('<i class="fa fa-caret-down"></i>');
      }
    $('#js-navigation-menu').slideToggle(function(){
      if($('#js-navigation-menu').is(':hidden')) {
        $('#menu-icon').html('<i class="fa fa-caret-down"></i>');
        // $('#js-navigation-menu').removeAttr('style');
      }
    });
  });
});

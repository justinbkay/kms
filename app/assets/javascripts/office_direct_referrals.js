// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(function() {
  $('#student_search').autocomplete({
    source: "/student_search",
    delay: 500
  });

  $('#student_search').on( "autocompleteselect", function( event, ui ) {
    $('#office_direct_referral_student_id').val(ui.item.id);
    $('#grade').html(ui.item.grade);
  });


});

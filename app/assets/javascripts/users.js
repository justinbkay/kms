// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

var get_users = function() {
  $('#results').empty();

  $.ajax({
    url: '/students/search',
    beforeSend: showSpinner,
    type: 'post',
    dataType: 'script',
    complete: hideSpinner,
    data: {name: $('#name').val()}
  });

  $('#name').val('');

  return false;
};

var showSpinner = function () {
  $('viewstatus').removeClass('hidden');
};

var hideSpinner = function () {
  $('#viewstatus').addClass('hidden');
};


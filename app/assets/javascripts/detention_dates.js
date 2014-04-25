$().ready(function () {
  $('button.btn.btn-default.blackout').tooltip({delay: { show: 500, hide: 100 }});
  $('button.btn.btn-default.show').tooltip({delay: { show: 500, hide: 100 }});

  $('button.btn.btn-default.blackout').dblclick(function () {
    blackout(this.id);
  });

  $('button.btn.btn-default.show').click(function() {
    location.href = 'detention_dates/' + this.getAttribute('data-id');
  });

});

var blackout = function (id) {
  $.ajax({
    type: "PUT",
          url: 'detention_dates/' + id,
          success: change_glyphicon(id),
          dataType: "json"
  });
};

var change_glyphicon = function (id) {
  $('#' + id).parent().html('<span class="glyphicon glyphicon-remove red"></span>');
};

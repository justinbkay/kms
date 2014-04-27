$().ready(function () {
  $('button.btn.btn-default.blackout').tooltip({delay: { show: 500, hide: 100 }});
  $('button.btn.btn-primary.show').tooltip({delay: { show: 500, hide: 100 }});

  $('button.btn.btn-default.blackout').dblclick(function () {
    blackout(this.id);
  });

  $('button.btn.btn-primary.show').click(function() {
    location.href = 'detention_dates/' + this.getAttribute('data-id');
  });

});

var blackout = function (id) {
  $.ajax({
    type: "PUT",
          url: 'detention_dates/' + id,
          dataType: "script"
  });
};

var change_glyphicon = function (id) {
  $('#' + id).parent().html('<span class="glyphicon glyphicon-remove red"></span>');
};

var mark_complete = function(id) {
  $.post("mark_complete", {detention_id: id}, function(data) {
    if(data.complete === true) {
      show_complete(id);
    } else {
      alert('An error occurred when trying to mark the detention as complete')
    }
  }, "json")
};

var show_complete = function(id) {
  $('#complete_' + id).html('<span class="glyphicon glyphicon-ok green"></span>');
  $('#cl_' + id).html('');
  $('#schedule_' + id).html('');
};

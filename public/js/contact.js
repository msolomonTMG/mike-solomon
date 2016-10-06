$(document).ready(function() {
  $('.contact-send').on('click', function() {
    sendMessage();
  })
});

function sendMessage() {
  var email   = $('#email').val();
  var subject = $('#subject').val();
  var message = $('#message').val();

  $.ajax({
    type: "POST",
    url: 'http://api.hmu.cool/messages/5a07f11039aa58605d7b1355bb0d74ec',
    data: {
      "email": email,
      "fields": {
        "subject": subject,
        "message": message,
      }
    },
    success: function(data) {
      showSuccess();
    },
    error: function(err) {
      showErr();
    }
  });

  function showSuccess() {
    var successHTML = '\
      <div class="valign-wrapper">\
        <h5 class="center-align valign" style="\
          width: 50%;\
          margin: auto;\
      ">Got it! Thanks for the message, we will be in touch!</h5>\
      </div>';
    $('#contact-modal-content').html(successHTML);
    $('#send-button').hide();
  }
}

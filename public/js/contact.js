$(document).ready(function(){
  $('#send-message').on('click', function () {
    loading(true);

    var email = $("input#email").val();
    var subject = $("input#subject").val();
    var message = $("textarea#message").val();

    console.log(name);

    var HMU_URL = "http://api.hmu.cool/messages/17b17abdcf4e1f67624ec5d5e56e512b";
    fetch(HMU_URL, {
      method: 'POST',
      headers: new Headers({
            'Content-Type': 'application/json'
        }),
      body: JSON.stringify({
        email: email,
        fields: {
          subject: subject,
          message: message
        }
      })
    })
    .then(function(response) {
      loading(false);
      console.log(response);
      if (response.status === 200) {
        confirmationMessage({success:true}, message);
      } else {
        confirmationMessage({success:false}, message);
      }
    })

  });

});

function loading(isLoading) {
  if (isLoading) {
    $('#contact-loading').removeClass('hide');
    $('#contact-form').addClass('hide');
  } else {
    $('#contact-loading').addClass('hide');
    $('#contact-confirmation-message').removeClass('hide');
  }
}

function confirmationMessage(result, message) {
  var success = '\
  <div class="col sm6 offset-sm-5">\
    <span>Got it! Thanks for reaching out :) </span>\
    <br/>\
    <a href="#!" class="btn modal-action modal-close waves-effect waves-light teal lighten-1"><i class="material-icons left">clear</i> Close</a>\
  </div>\
  ';
  var fail = '\
  <div class="col sm6 offset-sm-5">\
    <span>Oh no, something went wrong! Would you mind emailing me your message while I get my shit together? </span>\
    <span>' + message + '</span>\
    <a href="#!" class="btn waves-effect waves-light teal lighten-1"><i class="material-icons left">clear</i> Close</a>\
  </div>\
  ';

  if (result.success) {
    $('#contact-result').html(success);
  } else {
    $('#contact-result').text('oh noez');
  }
}

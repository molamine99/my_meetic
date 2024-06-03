$('#form').submit(function(event) {
  event.preventDefault();

  var formData = $(this).serialize();

 
  $.ajax({
    url: '../controlleur/connection.controleur.php', 
    type: 'POST',
    data: formData,
    success: function(response) {
      if (response.message) {
        return console.log(response.message);
      }

      localStorage.setItem('email', response.email);

      return window.location.replace('recap.html');
    }
  });
});
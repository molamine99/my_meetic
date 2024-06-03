$(document).ready(function() {
    $('#form').submit(function(event) {
      event.preventDefault();
  
      var formData = $(this).serialize();
  
      
      $.ajax({
        url: 'inscription.controleur.php', 
        type: 'POST',
        data: formData,
        success: function(response) {
          console.log(response);
        }
      });
    });
  });
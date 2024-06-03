$('.btnrechercher').click(function() {
    var genre = document.getElementById("genre").value;
    var localisation = document.getElementById("localisation").value;
    var tranche_age = document.getElementById("tranche-age").value;
    var loisir = document.getElementById("loisir").value;

    $('#resultats').html('');
  
    $.ajax({
      url: "../controlleur/rencontres.php",
      method: "POST",
      data: {
        genre: genre,
        localisation: localisation,
        tranche_age: tranche_age,
        loisir: loisir
      },

      success: function(response) {

        $.each(response, function(key, user) {
            let div = $('<div></div>');
            $.each(user, function(k, v) {
                let p = $('<p></p>').html(v);
                div.append(p)
            })

            $("#resultats").append(div);
        })
      }
    });
  }
)
let email = localStorage.getItem('email');

$.ajax({
    url: '../controlleur/recap.php',
    type: 'POST',
    data : {
        email: email
    },
    success: function(response) {
        console.log(response);
        $('#nom').html("Nom : " + response.nom);
        $('#prenom').html("prenom : " + response.prenom);
        $('#datenaissance').html("date_de_naissance : " + response.date_de_naissance);
        $('#genre').html("genre : " + response.genre);
        $('#ville').html("email : " + response.ville);
        $('#email').html("ville : " + response.email);
        $('#loisir').html("loisir : " + response.loisir);
    }
})
<?php

require_once('bdd.class.php');

Class Inscription extends BDD {

    public function insc($nom, $prenom , $naissance , $genre , $ville , $email , $motdepasse , $loisir) {
        $sql = "INSERT INTO utilisateur (nom, prenom, date_de_naissance,genre,ville,email, mot_de_passe,loisir)
        VALUES ('$nom','$prenom','$naissance','$genre','$ville','$email',MD5('$motdepasse'),'$loisir')";

        $execute = $this->BDD->prepare($sql);
        return $execute->execute();
    }
    
}

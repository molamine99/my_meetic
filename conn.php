<?php

require_once('bdd.class.php');

Class Connexion extends BDD {
    public function conn($email, $motdepasse) {
        $mdp = MD5($motdepasse);
        $SQL = "SELECT * FROM utilisateur WHERE email = '$email' AND mot_de_passe = '$mdp'";
        $execute = $this->BDD->prepare($SQL);
        $execute->execute();
        return $execute->fetchAll();
    }

    public function findByEmail($email) {
        $SQL = "SELECT * FROM utilisateur WHERE email = '$email'";

        $execute = $this->BDD->prepare($SQL);
        $execute->execute();
        return $execute->fetchAll();
    }
}
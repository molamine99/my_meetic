<?php

include_once('bdd.class.php');

Class Meetic extends BDD {
    public function rechercherRencontres($genre, $localisation, $tranche_age, $loisir) {
        $SQL = "SELECT * FROM utilisateur WHERE genre = '$genre' AND ville = '$localisation' AND loisir = '$loisir'";

        $prepare = $this->BDD->prepare($SQL);
        $prepare->execute();

        return $prepare->fetchAll();
    }
}
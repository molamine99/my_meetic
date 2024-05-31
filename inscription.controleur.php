<?php
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$naissance = $_POST['date_de_naissance'];
$genre = $_POST['genre'];
$ville = $_POST['ville'];
$email = $_POST['email'];
$motdepasse = $_POST['mot_de_passe'];
$loisir = $_POST['loisir'];


include('../models/insc.php');

$class = new Inscription;

$class->insc($nom,$prenom,$naissance,$genre,$ville,$email,$motdepasse,$loisir);
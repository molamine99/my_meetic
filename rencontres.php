<?php

include('../models/meetic.class.php');

$class = new Meetic;

$genre = $_POST['genre'];
$localisation = $_POST['localisation'];
$tranche_age = $_POST['tranche_age'];
$loisir = $_POST['loisir'];


$rencontres = $class->rechercherRencontres($genre, $localisation, $tranche_age, $loisir);

header('Content-Type: application/json');

echo json_encode($rencontres);

?>

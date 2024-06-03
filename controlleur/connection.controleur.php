<?php
$email = $_POST['email'];
$motdepasse = $_POST['mot_de_passe'];

include('../models/conn.php');

$class = new Connexion;

$user = $class->conn($email, $motdepasse);

header('Content-Type: application/json');

if (empty($user)) {
    echo json_encode(array('message' => 'Vérifiez vos informations.'));
}

$user = $user[0];

print_r(json_encode($user));
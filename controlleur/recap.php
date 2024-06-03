<?php

include('../models/conn.php');

$conn = new Connexion;

$email = $_POST['email'];

$user = $conn->findByEmail($email);

header('Content-Type: application/json');

echo json_encode($user[0]);
?>
<?php

Class BDD extends PDO {
    private $username = "momolamine";
    private $password = "Mamouede100@";
    protected $BDD;

    public function __construct() {
        $this->BDD = new PDO('mysql:host=localhost;dbname=meetic', $this->username, $this->password);
    }
}
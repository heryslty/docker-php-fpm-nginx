<?php

$db_host = "database-1.chghgvrwjatk.ap-southeast-1.rds.amazonaws.com";
$db_user = "admin";
$db_pass = "P7tSyHqJ";
$db_name = "dbsosmed";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

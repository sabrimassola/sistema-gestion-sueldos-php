<?php
$host = "localhost";
$user = "root";
$password = ""; 
$bd = "basededatosproyecto";

$mysqli = mysqli_connect($host, $user, $password, $bd);

if (!$mysqli) {
    die("Conexión fallida: " . mysqli_connect_error());
}
?>

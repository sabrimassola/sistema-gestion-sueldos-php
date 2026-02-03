<?php
$user = "root";
$host = "localhost";
$bd = "basededatosproyecto";
$password = ""; 
$mysqli = mysqli_connect($host, $user, $password, $bd);

if (!$mysqli) {
    die("Conexión fallida: " . mysqli_connect_error());
}
?>

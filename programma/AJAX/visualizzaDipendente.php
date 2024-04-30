<?php
include_once "../constants/constants.php";
if (!isset($_SESSION))
    session_start();
// controllo che l'utente sia loggato
if (!isset($_SESSION[$user_loggato])) {
    // vado alla login 
    header("Location: ../pages/login.php");
    exit;
}

// sostituisco i segnaposto con le tue informazioni sul database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "limonta";
// creo connessione al database
$conn = new mysqli($servername, $username, $password, $dbname);

// verifico la connessione
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// query da eseguire

$SELECT = "SELECT "

?>
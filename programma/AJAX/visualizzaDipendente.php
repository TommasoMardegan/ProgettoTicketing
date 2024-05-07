<?php
if (!isset($_SESSION)) {
    session_start();
}

// // Controllo che l'utente sia loggato
// if (!isset($_SESSION["id_utente"])) {
//     exit;
// }

// Sostituisco i segnaposto con le tue informazioni sul database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "limonta";

// Creo connessione al database
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifico la connessione
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query da eseguire
$SELECT = "SELECT * FROM aperturaticket WHERE stato = 'aperto'"; // Prendo i ticket aperti
$result = $conn->query($SELECT);

$data = array();
$response["status"] = "ko";
$response["message"] = "ciao";

// Salvo in un array i ticket
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    // Genero il codice HTML per la DataTable
    $html = "";
    $html .= "<thead><tr><th>ID</th><th>ID Cliente</th><th>Stato</th><th>Area</th><th>Breve Descrizione</th><th>Data Apertura</th><th>Info</th></tr></thead>";
    $html .= "<tbody>";
    foreach ($data as $row) {
        $html .= "<tr>";
        $html .= "<td>" . $row['ID'] . "</td>";
        $html .= "<td>" . $row['IDcliente'] . "</td>";
        $html .= "<td>" . $row['stato'] . "</td>";
        $html .= "<td>" . $row['area'] . "</td>";
        $html .= "<td>" . $row['breveDescrizione'] . "</td>";
        $html .= "<td>" . $row['dataApertura'] . "</td>";
        $html .= "<td><i class='fas fa-info-circle' id='" . $row["ID"] . "'></i></td>";
        $html .= "</tr>";
    }
    $html .= "</tbody>";
}

$response = array(
    "status" => "ok",
    "html" => $html
);

echo json_encode($response);


// Ritorno in JSON l'array
// echo json_encode($response);
$conn->close();
?>

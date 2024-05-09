<?php
// Connessione al database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "limonta";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica connessione
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

// Recupera l'ID del cliente dalla sessione
session_start();
if(isset($_SESSION['IDcliente'])) {
    $IDcliente = $_SESSION['IDcliente'];

    // Query per recuperare i ticket chiusi del cliente specificato
    $sql = "SELECT ap.ID, ap.breveDescrizione, ap.descrizione, ct.dataFine, ct.risoluzioneProblema, ct.altro
            FROM aperturaticket AS ap
            JOIN chiusuraticket AS ct ON ap.ID = ct.IDticket
            WHERE ap.IDcliente = $IDcliente AND ap.stato = 'chiuso'";
    $result = $conn->query($sql);

    // Costruzione della tabella HTML con i ticket chiusi
    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Breve Descrizione</th><th>Descrizione</th><th>Data Chiusura</th><th>Risoluzione Problema</th><th>Altro</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["ID"] . "</td>";
            echo "<td>" . $row["breveDescrizione"] . "</td>";
            echo "<td>" . $row["descrizione"] . "</td>";
            echo "<td>" . $row["dataFine"] . "</td>";
            echo "<td>" . $row["risoluzioneProblema"] . "</td>";
            echo "<td>" . $row["altro"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "Nessun ticket chiuso trovato per il cliente specificato.";
    }
} else {
    echo "Sessione non valida. Effettua il login.";
}

$conn->close();
?>

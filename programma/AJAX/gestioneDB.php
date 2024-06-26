<?php
class gestioneDB
{
    public $mysqli;

    /**
     * costruttore
     */
    public function __construct()
    {
        $this->mysqli = new mysqli("localhost", "root", "", "limonta");
    }
    public function getTicketCliente($IDcliente) {
        // Query per recuperare i ticket del cliente corrente
        $query = "SELECT * FROM aperturaticket WHERE IDcliente = ?";
        
        // Preparazione dello statement
        $stmt = $this->mysqli->prepare($query);
        
        // Vincola il parametro
        $stmt->bind_param("i", $IDcliente); // "i" indica che $IDcliente è un intero
        
        // Esecuzione dello statement
        $stmt->execute();
        
        // Ottieni il risultato
        $result = $stmt->get_result();
        
        $ticketsHTML = ""; // Inizializza la stringa per contenere il markup HTML dei ticket
        
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                if($row['stato'] != "chiuso"){
                    $ticketsHTML .= "<div>";
                    $ticketsHTML .= "<h3>{$row['breveDescrizione']}</h3>";
                    $ticketsHTML .= "<p>{$row['descrizione']}</p>";
                    $ticketsHTML .= "<p>data Apertura ticket: {$row['dataApertura']}</p>";
                    $ticketID = $row['ID'];
                    $ticketsHTML .= "<button class='btn btn-warning' onclick='sospendiTicket($ticketID)'>Sospendi</button>";
                    $ticketsHTML .= "<button class='btn btn-danger' onclick='chiudiTicket($ticketID)'>Chiudi</button>";
                    $ticketsHTML .= "</div>";                    
                }
            }
        } else {
            $ticketsHTML = "Nessun ticket trovato.";
        }
        
        // Chiudi lo statement
        $stmt->close();
        
        return $ticketsHTML;
    }
    public function chiudiTicket($ticketId) {
        // Query per aggiornare lo stato del ticket nel database
        $query = "UPDATE aperturaticket SET stato = 'chiuso' WHERE ID = ?";
        
        // Preparazione dello statement
        $stmt = $this->mysqli->prepare($query);
        
        // Vincola il parametro
        $stmt->bind_param("i", $ticketId); // "i" indica che $ticketId è un intero
        
        // Esecuzione dello statement 
        $stmt->execute();
        
        // Chiudi lo statement
        $stmt->close();
    }
    public function sospendiTicket($ticketId) {
        // Query per aggiornare lo stato del ticket nel database
        $query = "UPDATE aperturaticket SET stato = 'sospeso' WHERE ID = ?";
        
        // Preparazione dello statement
        $stmt = $this->mysqli->prepare($query);
        
        // Vincola il parametro
        $stmt->bind_param("i", $ticketId); // "i" indica che $ticketId è un intero
        
        // Esecuzione dello statement
        $stmt->execute();
        
        // Chiudi lo statement
        $stmt->close();
    }
    
}
?>
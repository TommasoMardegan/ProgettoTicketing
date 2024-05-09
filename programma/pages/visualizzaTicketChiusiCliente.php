<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Visualizza Ticket Chiusi</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
         <!-- Nota: utilizzo della versione completa di jQuery -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
        $.ajax({
            url: "../AJAX/visualizzaTuttoTicketChiusiCliente.php",
            type: "GET",
            success: function(response) {
                $("#risultato").html(response);
            }
        });

        $("#indietro").click(function(){
            window.location.href = "visualizzaTuttoCliente.php";
        });
});
</script>
</head>
<body>

<h2>Visualizza Ticket Chiusi per Cliente</h2>

<div id="divContainer">
  
    <div id="risultato">
        <!-- Qui verrà visualizzato il risultato della chiamata AJAX -->
    </div>
    <button id="indietro">indietro</button><br>
</div>
</body>
</html>

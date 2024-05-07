$(document).ready(function () {
    mostra_dipendete();
    $("#fas fa-info-circle").on("click", function() {
        //rimando alla visualizza ticket
        let id = $(this).attr("id");
        alert("qui");
        // passo l'id per poter visualizzare il ticket corrispondente
        $.get("../AJAX/visualizzaTicket.php", {id}, function (data) {
            if (data["status"] == "ok") {


                        // IMPLEMENTA CODICE IN BASE A VISUALIZZATICKET.PHP


                // $("#myTable").html(data.html);
                // $('#myTable').DataTable();
            } else {
                alert("Errore: " + data["message"]);
            }
        }, "json");

    });
});

function mostra_dipendete() {
    $.get("../AJAX/visualizzaDipendente.php", {}, function (data) {
        if (data["status"] == "ok") {
            $("#myTable").html(data.html);
            $('#myTable').DataTable();
        } else {
            alert("Errore: " + data["message"]);
        }
    }, "json");
}


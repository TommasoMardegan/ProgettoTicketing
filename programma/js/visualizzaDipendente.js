$(document).ready(function () {
    mostra_dipendete();
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

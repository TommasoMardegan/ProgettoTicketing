$(document).ready(function() {
    mostra_dipendete();
});

function mostra_dipendete() {
    $.get("../AJAX/visualizzaDipendente.php", function(response) {
        var data = JSON.parse(response);
        var table = $('#datatable').DataTable();
        table.clear().draw();
        data.forEach(function(item) {
            table.row.add([
                item.id,
                item.nome,
                item.cognome
                // Aggiungi altri campi se necessario
            ]).draw();
        });
    });
}

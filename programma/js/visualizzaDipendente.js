$(document).ready(function() {
    mostra_dipendete();
});

function mostra_dipendete() {
    // popolo la data table con i valori dei ticket
    $.get("../AJAX/visualizzaDipendente.php", function(response) {
        var data = JSON.parse(response);
        var table = $('#datatable').DataTable();
        table.clear().draw();
        data.forEach(function(item) {
            table.row.add([
                item.ID,
                item.IDcliente,
                item.stato,
                item.area,
                item.breveDescrizione,
                item.dataApertura
            ]).draw();
        });
    });
}

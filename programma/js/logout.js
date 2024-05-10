function esciCliente(){
    $.get("../AJAX/logout.php", {}, function(){
        // alert("logout effettuato");
        window.location.href = "../pages/index.php";
    });
}

function esciDipendente(){
    $.get("../AJAX/logout.php", {}, function(){
        // alert("logout effettuato");
        window.location.href = "../pages/index.php";
    });
}
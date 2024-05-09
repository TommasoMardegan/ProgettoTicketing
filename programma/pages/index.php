<html>
<head>
    <link rel="stylesheet" href="../CSS/style_login.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#loginC").click(function(){
                window.location.href = "loginCliente.php";
            });

            $("#loginD").click(function(){
                window.location.href = "loginDipendente.php";
            });
        });
    </script>   
</head>
<body>
    <div class="container">
        <button id="loginC">login Cliente</button><br><br>
        <button id="loginD">login Dipendente/Admin</button><br><br>
    </div>
</body>
</html>

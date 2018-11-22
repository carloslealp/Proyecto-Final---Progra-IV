<?php
    $servidor = "localhost";
    $usuario = "root";
    $password = "";
    $dbName = "sesion";
    
    //conexión a base de datos.
    $conector = mysqli_connect($servidor, $usuario, $password, $dbName);

    //Verificamos conexión a la base de datos.
    if(mysqli_connect_error()){
        die("Error con la conexión");  
    }
?>
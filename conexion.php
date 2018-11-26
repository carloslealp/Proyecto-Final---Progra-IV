<?php
    $servidor = "localhost";
    $usuario = "root";
    $password = "";
    $dbName = "proyecto2";
    
    //conexión a base de datos.
    $conector = mysqli_connect($servidor, $usuario, $password, $dbName);

    //Verificamos conexión a la base de datos.
    if(mysqli_connect_error()){
        die("Error con la conexión");  
    }
?>
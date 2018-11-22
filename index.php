<?php
    //INICIAMOS SESION
    session_start();

    //VERIFICANDO SI EL USUARIO HA INICIADO SESION PARA REDIRECCIONARLO
    if(!isset($_SESSION['usuario_log'])){
        header("location: login.php");
    }else{
        header("location: temporal.html");
    }
    
?>
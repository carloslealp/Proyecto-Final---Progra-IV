<?php
    //INCLUIR PAGINAS DE PROYECTO
    include("conexion.php");
?>

<?php

    //INICIAMOS LA SESION
    session_start();

    /*IF QUE VALIDA LOS DATOS INRGESADOS EN login.php 
    JUNTO CON LOS DE LA BASE DE DATOS PARA QUE PUEDA INICIAR SESION*/
    if (!(empty($_POST))){
        $codigo = mysqli_real_escape_string($conector,$_POST['codigo']);
        $usuario = mysqli_real_escape_string($conector,$_POST['usuario']);
        $contrasena = mysqli_real_escape_string($conector,$_POST['contrasena']);

        $querySelect = $sql = "SELECT * FROM empleados WHERE codigo = '$codigo' and user = '$usuario' and password = '$contrasena'";
        
        $resultado = mysqli_query($conector,$querySelect);
        $fila = mysqli_fetch_array($resultado,MYSQLI_ASSOC);
        $cont = mysqli_num_rows($resultado);

        if($cont == 1) {
            $_SESSION['usuario_log'] = $usuario;
            header("location: principal.php");
        }else{
            echo "<script type='text/javascript'>alert('Datos Incorrectos'); window.location.href='login.php'</script>";
        }
       
    }

    //CERRAMOS LA CONEXION CON LA BASE DE DATOS
    mysqli_close($conector);

?>
<!--PAGINA QUE FUNCIONA COMO PLANTILLA PARA TODO EL PROYECTO-->

<?php
    //INCLUIR PAGINAS DE PROYECTO
    include("head.html");
    include("conexion.php");

    //VERIFICAMOS QUE SI NO ESTA INICIADA LA SESION NO ACCEDA A LA PAGINA
    session_start();
    if($_SESSION['usuario_log']==''){
        header("Location: login.php");
    }
?>

<!--BOTONES PARA REDIRECCIONAR A LA PAGINA PRINCIPAL Y CERRAR SESION-->
<div class="p-4" style="background-color:#013B84;">
    <a type="button" class="btn" href="principal.php" style="background-color: #E7EBF7; font-weight: bold;"> Página Principal </a>
    <a type="button" class="btn bg-danger" href="terminar.php" style="font-weight: bold; color:white;"> Cerrar Sesión </a>
</div>
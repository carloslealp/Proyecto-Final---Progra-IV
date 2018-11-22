<?php
    //INCLUIR PAGINAS DE PROYECTO
    include("head.html");
    include("conexion.php");
?>
<div class="container">
    <div class="row">
        <div class="col">
            <!--FORMULARIO DE INGRESO-->
            <form style="padding: 20%;" method="POST" action="/Proyecto_Progra4/login_proceso.php">
                <div class="form-group">
                    <label for="exampleInputEmail1">Código</label>
                    <input type="number" class="form-control" id="codigo" name="codigo" placeholder="Código">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Usuario</label>
                    <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Contraseña</label>
                    <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
                </div>
                <center><button type="submit" class="btn btn-primary" style="background-color:#013B84;">Ingresar</button></center>
            </form>
        </div>


        <div id="imagenbi" class="col">
            <img src="img/bilogo.png" width="500" height="500">
        </div>
    </div>
</div>
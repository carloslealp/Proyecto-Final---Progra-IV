<?php
    //SE INCLUYE LA PLANTILLA PARA DISEÑO DE PAGINA
    include("plantilla.php")
?>

<!--TITULO DE LA PAGINA PARA INDICAR EN DONDE ESTA-->
<br>
<center><h1 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"> Pago de Servicios </h1></center>
<br>

<!--SECCION DONDE SE IMPRIMEN LAS GRAFICAS, TABLAS Y DATOS-->
<div class="container">
    <div class="row">
        <!--INDICADOR UNO-->
        <div class="col">
            <center><b>Mayores a Q15,000 realizados con cheques.</b></center>
            <br>
            <?php
                $querySelect = "SELECT COUNT(id) Cantidad
                                FROM pago_servicios
                                WHERE monto_total > 7500;";
                $resultado = mysqli_query($conector, $querySelect);
                while($row = mysqli_fetch_array($resultado)){
            ?>
            <b><center style="font-size: 250%;"><?php echo $row['0'] ?></center></b>
            <?php } ?>
        </div>
        <!--INDICADOR DOS-->
        <div class="col">
            <center><b>Top 5 de operarios que procesan depósitos.</b></center>
            <br>
            <div class="table-responsive bg-light">
                <?php
                    $querySelect = "SELECT  cuenta Cliente, SUM(monto_total) Monto
                                    FROM pago_servicios
                                    WHERE Fecha_pago > '2013-01-01'
                                    ORDER BY Monto DESC
                                    LIMIT 0, 5;";
                    $resultado = mysqli_query($conector, $querySelect);
                ?>
                <table class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Cliente</th>
                            <th scope="col"><center>Monto</center></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            if($resultado){
                                $fila = "zda";
                                while($fila = mysqli_fetch_array($resultado)){
                            ?>
                        <tr>
                            <td>
                                <?php echo  $fila['Cliente']?>
                            </td>
                            <td>
                                <center><?php echo  $fila['Monto']?></center>
                            </td>
                        </tr>
                        <?php
                                }
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
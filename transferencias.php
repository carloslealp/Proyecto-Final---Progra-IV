<?php
    //SE INCLUYE LA PLANTILLA PARA DISEÑO DE PAGINA
    include("plantilla.php")
?>

<!--TITULO DE LA PAGINA PARA INDICAR EN DONDE ESTA-->
<br>
<center><h1 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"> Transferencias </h1></center>
<br>

<!--SCRIPT QUE GENERA EL GRAFICO DE PIE DE PRIMER INDICADOR-->
<script type="text/javascript">
	$(document).ready(function () {
		var datos = {
            //TIPO DE GRAFICA
			type: "pie",
			data: {
                //SECCION DE DATOS A EVALUAR
				labels: [
					'Correctos', 
					'Incorrectos'		
				],
				datasets: [{
                    //SE OBTIENE DE LA BASE DE DATOS LA CANTIDAD DE CADA SECCION
					data: [
                        <?php
                            $querySelect = "SELECT COUNT(id) Cantidad
                                            FROM transacciones
                                            WHERE codigo_transaccion = 7107
                                                AND monto_transaccion > 50000
                                                AND comentarios_transaccion = 'Hecho';";
                            $resultado = mysqli_query($conector, $querySelect);
                            while($row = mysqli_fetch_array($resultado)){
                        ?>
						'<?php echo $row['0'] ?>',
                        <?php } ?>

                        <?php
                            $querySelect = "SELECT COUNT(id) Cantidad
                                            FROM transacciones
                                            WHERE codigo_transaccion = 7107
                                                AND monto_transaccion > 50000
                                                AND comentarios_transaccion <> 'Hecho';";
                            $resultado = mysqli_query($conector, $querySelect);
                            while($row = mysqli_fetch_array($resultado)){
                        ?>
						'<?php echo $row['0'];
                            $nuevo = $row['0'];
                            $queryUpdate = "UPDATE errores set cantidad = '$nuevo' where tipo = 'Transferencias';";
                            mysqli_query($conector, $queryUpdate);
                        ?>'
                        <?php } ?>
					],
                    //SE ASIGNA COLOR A LA GRAFICA
					backgroundColor: ["rgba(0, 255, 100, 0.6)"],
				}]
			},
			options: {
				responsive: true
			}
		};

		var canvas = document.getElementById('chart').getContext('2d');
		window.pie = new Chart(canvas, datos);

	});
</script>

<!--SECCION DONDE SE IMPRIMEN LAS GRAFICAS, TABLAS Y DATOS-->
<div class="container">
    <!--COLUMNAS DE ARRIBA-->
    <div class="row">
        <!--INDICADOR UNO-->
        <div class="col">
            <center><b>Mayores a $50,000 autorizadas con documento correspondiente.</b></center>
            <br>
            <div id="canvas-container">
                <canvas id="chart" width="300" height="150"></canvas>
            </div>
        </div>
        <!--INDICADOR DOS-->
        <div class="col">
            <center><b>Cantidad en el ultimo mes.</b></center>
            <br>
            <?php
                $querySelect = "SELECT COUNT(id) Cantidad
                                FROM transacciones
                                WHERE fecha_transaccion > '2013-01-01';";
                $resultado = mysqli_query($conector, $querySelect);
                while($row = mysqli_fetch_array($resultado)){
            ?>
            <b><center style="font-size: 250%;"><?php echo $row['0'] ?></center></b>
            <?php } ?>
        </div>
    </div>
    <br>
    <br>
    <!--COLUMNAS DE ABAJO-->
    <div class="row">
        <!--INDICADOR TRES-->
        <div class="col">
            <center><b>Cantidad en el ultimo mes.</b></center>
            <br>
            <?php
                $querySelect = "SELECT COUNT(id) Cantidad
                                FROM transacciones
                                WHERE codigo_transaccion = 7107;";
                $resultado = mysqli_query($conector, $querySelect);
                while($row = mysqli_fetch_array($resultado)){
            ?>
            <b><center style="font-size: 250%;"><?php echo $row['0'] ?></center></b>
            <?php } ?>
        </div>
        <!--INDICADOR CUATRO-->
        <div class="col">
            <center><b>Top 5 de agencias que procesan depósitos.</b></center>
            <br>
            <div class="table-responsive bg-light">
                <?php
                    $querySelect = "SELECT numero_cuenta Cliente, COUNT(numero_cuenta) Cantidad
                                    FROM transacciones
                                    WHERE fecha_transaccion > '2013-01-01'
                                    ORDER BY Cantidad DESC
                                    LIMIT 0, 5;";
                    $resultado = mysqli_query($conector, $querySelect);
                ?>
                <table class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Cliente</th>
                            <th scope="col"><center>Cantidad</center></th>
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
                                <center><?php echo  $fila['Cantidad']?></center>
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
</div>

<!--SALTOS DE LINEA PARA ACOMODAR LA PAGINA-->
<br>
<br>
<br>
<br>
<br>
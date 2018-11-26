<?php
    //SE INCLUYE LA PLANTILLA PARA DISEÑO DE PAGINA
    include("plantilla.php");
    $nuevo = 0;
?>

<br>
<center><h1 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"> Cheques </h1></center>
<br>

<!--SCRIPT QUE GENERA EL GRAFICO DE PIE DE SEGUNDO INDICADOR-->
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
                                            WHERE codigo_transaccion = '7005'
                                                AND monto_transaccion > 7000
                                                AND comentarios_transaccion = 'Hecho';";
                            $resultado = mysqli_query($conector, $querySelect);
                            while($row = mysqli_fetch_array($resultado)){
                        ?>
						'<?php echo $row['0'] ?>',
                        <?php } ?>

                        <?php
                            $querySelect = "SELECT COUNT(id) Cantidad
                                            FROM transacciones
                                            WHERE codigo_transaccion = '7005'
                                                AND monto_transaccion > 7000
                                                AND comentarios_transaccion <> 'Hecho';";
                            $resultado = mysqli_query($conector, $querySelect);
                            while($row = mysqli_fetch_array($resultado)){
                        ?>
						'<?php echo $row['0'];
                            $nuevo = $row['0'];
                            $queryUpdate = "UPDATE errores set cantidad = '$nuevo' where tipo = 'Cheques';";
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
    <div class="row">
        <!--INDICADOR UNO-->
        <div class="col">
            <center><b>Rechazados por falta de fondos en el ultimo mes.</b></center>
            <br>
            <?php
                $querySelect = "SELECT COUNT(id) Cantidad
                                FROM transacciones
                                WHERE codigo_transaccion = '7005'
                                    AND fecha_transaccion > '2013-01-01'
                                    AND comentarios_transaccion <> 'Hecho';";
                $resultado = mysqli_query($conector, $querySelect);
                while($row = mysqli_fetch_array($resultado)){
            ?>
            <b><center style="font-size: 250%;"><?php echo $row['0'] ?></center></b>
            <?php } ?>
        </div>  
        <!--INDICADOR DOS-->
        <div class="col">
            <center><b>Pagados en caja mayores a Q7,000 con documento de respaldo correspondiente.</b></center>
            <br>
            <div id="canvas-container">
                <canvas id="chart" width="300" height="150"></canvas>
            </div>
        </div>
    </div>
</div>
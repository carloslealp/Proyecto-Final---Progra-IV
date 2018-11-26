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

<!--CONJUNTO DE BOTONES QUE FUNCIONAN DE MENU PARA REDIRECCIONAR A LAS PAGINAS-->
<div class="p-4" style="background-color:#013B84;">
    <a type="button" class="btn" href="depositos.php" style="background-color: #E7EBF7; font-weight: bold;"> Depositos </a>
    <a type="button" class="btn" href="cheques.php" style="background-color: #E7EBF7; font-weight: bold;"> Cheques </a>
    <a type="button" class="btn" href="retiros.php" style="background-color: #E7EBF7; font-weight: bold;"> Retiros </a>
    <a type="button" class="btn" href="remesas.php" style="background-color: #E7EBF7; font-weight: bold;"> Remesas</a>
    <a type="button" class="btn" href="transferencias.php" style="background-color: #E7EBF7; font-weight: bold;"> Transferencias </a>
    <a type="button" class="btn" href="pago-de-servicios.php" style="background-color: #E7EBF7; font-weight: bold;"> Pago de Servicios </a>
    <a type="button" class="btn bg-danger" href="terminar.php" style="font-weight: bold; color:white;"> Cerrar Sesión </a>
</div>

<script type="text/javascript">
	$(document).ready(function () {
		var datos = {
			type: "radar",
			data: {
				labels: [
					<?php
					$querySelect = "SELECT * FROM errores;";
					$resultado = mysqli_query($conector, $querySelect);
					while($row = mysqli_fetch_array($resultado))
					{
					?>
					
						'<?php echo $row["tipo"]; ?>',
					
					<?php
					}
					?>		
				],
				datasets: [{
					label: "Cantidad de Errores en Transacciones",
					data: [
						<?php
						$querySelect = "SELECT * FROM errores;";
						$resultado = mysqli_query($conector, $querySelect);
						while($row = mysqli_fetch_array($resultado))
						{
						?>
						
							'<?php echo $row["cantidad"]; ?>',
						
						<?php
						}
						?>
					],
					backgroundColor: ["rgba(248, 0, 0, 0.3)"]
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


<center><div id="canvas-container" style="width:50%;">
	<canvas id="chart" width="500" height="350"></canvas>
</div></center>
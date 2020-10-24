<?php 

require_once "BD/conexion.php";
$tabla="";
$consulta=" SELECT * FROM peliculas LIMIT 0";
$termino= "";
if(isset($_POST['productos']))
{

	$termino=$mysqli->real_escape_string($_POST['productos']);
	$consulta="SELECT * FROM peliculas WHERE 
	titulo LIKE '%".$termino."%';";
}
$consultaBD=$mysqli->query($consulta);
if($consultaBD->num_rows>=1){
	echo "
	<table class='responsive-table table table-hover table-bordered'>
	<thead>
	<tr>
	<th class='bg-info' scope='col'>TITULO</th>
	<th class='bg-info' scope='col'>AÑO</th>
	<th class='bg-info' scope='col'>GENERO</th>
	<th class='bg-info' scope='col'>DIRECTOR</th>
	</tr>
	</thead><br>
	<tbody>";
	while($fila=$consultaBD->fetch_array(MYSQLI_ASSOC)){
		echo "<tr>
		<td>".$fila['titulo']."</td>	
		<td>".$fila['ano']."</td>
		<td>".$fila['genero']."</td>
		<td>$ ".$fila['director']."</td>
		</tr>";
	}
	echo "</tbody>
	</table>";
}else{
	echo "<center><h4>No hemos encotrado ningun registro con la palabra "."<strong class='text-uppercase'>".$termino."</strong><h4><center>";
}
?>
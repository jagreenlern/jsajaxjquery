<?php
/////// CONEXIÓN A LA BASE DE DATOS /////////
$host = "localhost";
$basededatos = "tic";
$usuario = "root";
$contraseña = "";

//$conexion = new mysqli($host, $usuario,$contraseña, $basededatos);

$conexion = mysqli_connect("localhost","root","","tic");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

//////////////// VALORES INICIALES ///////////////////////

$tabla="";


///////// LO QUE OCURRE AL TECLEAR SOBRE EL INPUT DE BUSQUEDA ////////////
if(isset($_POST['alumnos']))
{
	$q=$conexion->real_escape_string($_POST['alumnos']);
	$query="SELECT * FROM alumnos WHERE 
		id_alumno LIKE '%".$q."%' OR
		nombre LIKE '%".$q."%' OR
		carrera LIKE '%".$q."%' OR
		grupo LIKE '%".$q."%' OR
		fecha_ingreso LIKE '%".$q."%'";
}
else $query="SELECT * FROM alumnos ORDER BY id_alumno";

$result = $conexion->query($query);
$rowcount=mysqli_num_rows($result);
if ($rowcount > 0)
{
	$tabla.= 
	'<table class="table">
		<tr class="bg-primary">
			<td>ID ALUMNO</td>
			<td>NOMBRE</td>
			<td>CARRERA</td>
			<td>GRUPO</td>
			<td>FECHA INGRESO</td>
		</tr>';
	/* obtener un array asociativo */
	
	while($fila = $result->fetch_assoc())
	{
		$tabla.=
		'<tr>
			<td>'.$fila['id_alumno'].'</td>
			<td>'.$fila['nombre'].'</td>
			<td>'.$fila['carrera'].'</td>
			<td>'.$fila['grupo'].'</td>
			<td>'.$fila['fecha_ingreso'].'</td>
		 </tr>
		';
	}

	$tabla.='</table>';
} else
	{
		$tabla="No se encontraron coincidencias con sus criterios de búsqueda.";
	}


echo $tabla;
?>

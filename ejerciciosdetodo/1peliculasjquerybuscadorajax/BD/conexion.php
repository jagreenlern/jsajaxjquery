
<?php 
$mysqli= new mysqli("localhost", "root", "", "peliculas");

if(mysqli_connect_errno())
{
	echo "Problemas al conectarse con la BD";
}
$mysqli->set_charset("utf8");
?>




















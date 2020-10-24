<?php
// Inicio de sesión
session_start();

$letra = $_GET['letra'];

$palabras = array('Sentido Web', 'Technorati', 'display: NONE', 'Google', 'Vivir Latino', 'CSS Mania');

$palabra = '';
$ok = 0;
// Si letra es 0, entonces pido la palabra
if ($letra == '0') {
	$_SESSION['palabra'] = $palabras[rand(0, count($palabras)-1)];
	$_SESSION['letras'] = "";
	$palabra = preg_replace('/\w/i', '_', $_SESSION['palabra']);
	$_SESSION['resuelto'] = $palabra;
} else {
	if (preg_match("/$letra/", strtoupper($_SESSION['palabra']))) {
		$_SESSION['letras'] .= ($_SESSION['letras'] == ''? '':'|').$letra;
		$palabra = preg_replace('/([^'.$_SESSION['letras'].'|\W])/i', '_', $_SESSION['palabra']);
		$_SESSION['resuelto'] = $palabra;
		$ok = 1;
	} else {
		$palabra = $_SESSION['resuelto'];
		$ok = 0;
	}
}

$xml  = '<?xml version="1.0" standalone="yes"?>';
$xml .= '<datos>';
$xml .= '<palabra>'.$palabra.'</palabra>';
$xml .= '<ok>'.$ok.'</ok>';
$xml .= '</datos>';
header('Content-type: text/xml');
echo $xml;		
?>
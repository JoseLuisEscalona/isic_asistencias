<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$id    	   = $_POST['id'];
$nombre    = trim($_POST['nombre']);
$cFuente = trim($_POST['cFuente']);
$cBase = trim($_POST['cBase']);
$cBaseFuerte      = trim($_POST['cBaseFuerte']);
$cBorde    = trim($_POST['cBorde']);
$activo    = 1;

$fecha=date("Y-m-d"); 
$hora=date ("H:i:s");

//Inserto registro en tabla pacientes 
$cadena = "UPDATE temas
			SET
				nombre_tema         = '$nombre',
				color_letra     = '$cFuente', 
				color_base     = '$cBase', 
				color_base_fuerte           = '$cBaseFuerte', 
				color_borde          = '$cBorde', 
				fecha_registro = '$fecha', 
				hora_registro  = '$hora'
			WHERE 
				id_tema= $id";
$actualizar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
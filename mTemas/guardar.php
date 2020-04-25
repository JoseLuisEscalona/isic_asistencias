<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$nombre    = trim($_POST['nombre']);
$cFuente = trim($_POST['cFuente']);
$cBase = trim($_POST['cBase']);
$cBaseFuerte      = trim($_POST['cBaseFuerte']);
$cBorde    = trim($_POST['cBorde']);
$activo    = 1;

$fecha=date("Y-m-d"); 
$hora=date ("H:i:s");

//Inserto registro en tabla pacientes 
$cadena = "INSERT INTO temas
				(nombre_tema,
				color_letra, 
				color_base, 
				color_base_fuerte, 
				color_borde, 
				fecha_registro, 
				hora_registro,
				activo)
			VALUES
				('$nombre',
				'$cFuente',
				'$cBase', 
				'$cBaseFuerte', 
				'$cBorde', 
				'$fecha', 
				'$hora',
				$activo)";
$insertar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
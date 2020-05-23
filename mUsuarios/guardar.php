<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$dato     = trim($_POST['per']);
$nombre    = trim($_POST['nombreU']);
$tema = trim($_POST['tem']);
$cad = trim($_POST['fCad']);
$pDP = trim($_POST['pDP']);
$pE = trim($_POST['pE']);
$pU = trim($_POST['pU']);
$pT = trim($_POST['pT']);
$activo    = 1;

$fecha=date("Y-m-d"); 
$hora=date ("H:i:s");

//Inserto registro en tabla pacientes 
$cadena = "INSERT INTO usuarios
				(id_dato,
				id_tema,
				nombre_usuario,
				contra,
				permiso_datos_persona,
				permiso_ecivil,
				permiso_usuario,
				permiso_temas, 
				fecha_caducidad, 
				fecha_registro, 
				activo)
			VALUES
				('$dato',
				'$tema',
				'$nombre', 
				'12345678', 
				'$pDP', 
				'$pE', 
				'$pU', 
				'$pT',
				'$cad',
				'$fecha',
				$activo)";
$insertar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
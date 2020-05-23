<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$id     = trim($_POST['id']);
$dato   = trim($_POST['Eper']);
$nombre = trim($_POST['EnombreU']);
$tema   = trim($_POST['Etem']);
$cad    = trim($_POST['EfCad']);
$pDP    = trim($_POST['EpDP']);
$pE     = trim($_POST['EpE']);
$pU     = trim($_POST['EpU']);
$pT     = trim($_POST['EpT']);

$fecha=date("Y-m-d"); 
$hora=date ("H:i:s");

//Inserto registro en tabla pacientes 
$cadena = "UPDATE usuarios
			SET
				id_dato               = '$dato',
				id_tema               = '$tema',
				nombre_usuario        = '$nombre', 
				contra                = '12345678', 
				permiso_datos_persona = '$pDP', 
				permiso_ecivil        = '$pE', 
				permiso_usuario       = '$pU', 
				permiso_temas         = '$pT', 
				fecha_caducidad       = '$cad', 
				fecha_registro        = '$fecha'
			WHERE 
				id_usuario= $id";
$actualizar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
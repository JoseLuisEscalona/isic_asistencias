<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$id     = trim($_POST['idu']);
$pDP    = trim($_POST['MpDP']);
$pE     = trim($_POST['MpE']);
$pU     = trim($_POST['MpU']);
$pT     = trim($_POST['MpT']);

//Inserto registro en tabla pacientes 
$cadena = "UPDATE usuarios
			SET 
				permiso_datos_persona = '$pDP', 
				permiso_ecivil        = '$pE', 
				permiso_usuario       = '$pU', 
				permiso_temas         = '$pT'
			WHERE 
				id_usuario= $id";
$actualizar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
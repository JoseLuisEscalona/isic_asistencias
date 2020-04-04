<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$usuario          = $_POST['usuario'];
$contra = $_POST['contra'];
$ncontra = $_POST['ncontra'];

$fecha=date("Y-m-d"); 
$hora=date ("H:i:s");

//Inserto registro en tabla pacientes 
$cadena = "UPDATE usuarios 
			SET
				contra='$ncontra',
				fecha_registro='$fecha'
			WHERE 
				nombre_usuario='$usuario' AND contra='$contra'";

echo $ncontra;
$actualizar = mysqli_query($conexionLi, $cadena);

//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
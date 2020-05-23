<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$valor = $_POST['EnombreU'];
$id = $_POST['id'];

//seleccione registros tabla datos
$cadena = "SELECT
				id_usuario,
				nombre_usuario 
			FROM
				usuarios
			WHERE
				nombre_usuario = '$valor'";

$actualizar = mysqli_query($conexionLi, $cadena);

while($row = mysqli_fetch_array($actualizar)) {
	$idtem = $row[0];
	$nombretem = $row[1];
	if ($nombretem == $valor) {
		if ($id == $idtem) {
			$respuesta = 'No';
		}else{
			$respuesta = 'Si';
		}
	}else{
		$respuesta = 'No';
	}
	echo $respuesta;
	}  

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
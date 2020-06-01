<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$valor = trim($_POST['clave']);

//seleccione registros tabla datos
$cadena = "SELECT
				id_datos,
				clave,
				activo
			FROM
				datos
			WHERE
				clave = '$valor'";

$actualizar = mysqli_query($conexionLi, $cadena);

while($row = mysqli_fetch_array($actualizar)) {
	$clave = $row[1];
	if ($clave == $valor) {
		if ($row[2] == '1') {
			$resultado = "Si";
		}else {
			$resultado = 'SiNo';
		}
	}else{
		$resultado = 'No';
	}
	echo $resultado;
	}  

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
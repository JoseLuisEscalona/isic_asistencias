<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$valor = trim($_POST['clave']);

//seleccione registros tabla datos
$cadena = "SELECT
				id_datos,
				clave,
				nombre,
				ap_paterno,
				ap_materno,
				fecha_nac,
				correo,
				curp
			FROM
				datos
			WHERE
				clave = '$valor'";

$actualizar = mysqli_query($conexionLi, $cadena);
	
	while($row = mysqli_fetch_array($actualizar)) {
		$resultado = $row[0];
		echo $resultado;
		}  

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
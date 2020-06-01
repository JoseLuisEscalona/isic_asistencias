<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

include ("../funciones/calcularEdad.php");

//Recibo valores con el metodo POST
$valor = trim($_POST['res']);

//seleccione registros tabla datos
$cadena = "SELECT
				CONCAT(datos.nombre, ' ',datos.ap_paterno, ' ',datos.ap_materno),
				datos.fecha_nac,
				datos.correo,
				datos.curp,
				datos.clave,
				ecivil.descripcion
			FROM
				datos
			INNER JOIN 
				ecivil
			ON 
				ecivil.id_ecivil = datos.id_ecivil
			WHERE
				datos.id_datos = '$valor'";

$actualizar = mysqli_query($conexionLi, $cadena);
	
	while($row = mysqli_fetch_array($actualizar)) {
		$nombre = $row[0];
		$fecha_nac = $row[1];
		$correo = $row[2];
		$curp = $row[3];
		$clave = $row[4];
		$descripcion = $row[5];
		$edad = CalculaEdad($fecha_nac);
		$respuesta = "Su nombre es: <b><u><i>".$nombre."</i></u></b>, con la edad de: <b><u><i>".$edad."</i></u></b>, el correo vinculado es: <b><u><i>".$correo."</i></u></b>, su curp es: <b><u><i>".$curp."</i></u></b> y su estado civil es: <b><u><i>".$descripcion."</i></u></b>.";
		}  
		echo $respuesta;

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
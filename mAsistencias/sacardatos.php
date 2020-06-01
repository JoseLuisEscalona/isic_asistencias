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
		$respuesta = "Su nombre es: ".$nombre.", con la edad de: ".$edad.", el correo vinculado es: ".$correo.", su curp es: ".$curp." y su estado civil es: ".$descripcion.". Gracias por su asistencia";
		}  
		echo $respuesta;

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
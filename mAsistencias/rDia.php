<?php
// Conexion mysqli
include ("../conexion/conexionli.php");

//Recibo valores con el metodo POST
$valor = trim($_POST['res']);
$dia = trim($_POST['Dia']);

//seleccione registros tabla datos
$cadena = "SELECT
				id_horario,
				l_entrada,
				l_salida,
				m_entrada,
				m_salida,
				mi_entrada,
				mi_salida,
				j_entrada,
				j_salida,
				v_entrada,
				v_salida,
				s_entrada,
				s_salida,
				d_entrada,
				d_salida
			FROM
				horarios
			WHERE
				id_datos_persona = '$valor'";

$actualizar = mysqli_query($conexionLi, $cadena);
while($row = mysqli_fetch_array($actualizar)) {
	if ($dia == "Domingo") {
		if ($row[13] == "00:00:00" && $row[14] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Lunes") {
		if ($row[1] == "00:00:00" && $row[2] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Martes") {
		if ($row[3] == "00:00:00" && $row[4] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Miercoles") {
		if ($row[5] == "00:00:00" && $row[6] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Jueves") {
		if ($row[7] == "00:00:00" && $row[8] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Viernes") {
		if ($row[9] == "00:00:00" && $row[10] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
	if ($dia == "Sabado") {
		if ($row[11] == "00:00:00" && $row[12] == "00:00:00") {
			$resultado = "No";
		}
		else{
			$resultado = "Si";
		}
	}
}
	echo $resultado;

print_r(mysqli_error($conexionLi));
//Cierro la conexion
mysqli_close($conexionLi);
?>
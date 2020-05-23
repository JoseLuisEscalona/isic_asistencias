<?php
// Conexion mysqli
include'../conexion/conexionli.php';

include'../funciones/diasTranscurridos.php';
//Variable de Nombre
$varGral="-U";

$fecha=date("Y-m-d"); 

$cadena = "SELECT
                usuarios.id_usuario,
                usuarios.activo,
                usuarios.id_dato,
                usuarios.id_tema,
                usuarios.nombre_usuario,
                usuarios.contra,
                usuarios.permiso_datos_persona,
                usuarios.permiso_ecivil,
                usuarios.permiso_usuario,
                usuarios.permiso_temas,
                usuarios.fecha_caducidad,
                usuarios.fecha_registro,
                datos.nombre,
                datos.ap_paterno,
                datos.ap_materno,
                datos.id_datos
            FROM 
                usuarios
            INNER JOIN
                datos
            ON datos.id_datos=usuarios.id_dato
            ORDER BY usuarios.id_usuario DESC";
$consultar = mysqli_query($conexionLi, $cadena);
//$row = mysqli_fetch_array($consultar);

?>
<div class="table-responsive">
<table id="example<?php echo $varGral;?>" class="table table-striped table-bordered" style="width:100%">

        <thead>
            <tr class='hTabla'>
                <th scope="col">#</th>
                <th scope="col">Editar</th>
                <th scope="col">Restablecer Contraseña</th>
                <th scope="col">Permisos</th>
                <th scope="col">Nombre Del Usuario</th>
                <th scope="col">Usuario</th>
                <th scope="col">Dias De Creacion</th>
                <th scope="col">Status</th>
            </tr>
        </thead>

        <tbody>
        <?php
        // Recorro el arreglo y le asigno variables a cada valor del item
        $n=1;
        while( $row = mysqli_fetch_array($consultar) ) {

            $id          = $row[0];

            if ($row[1] == 1) {
                $chkChecado    = "checked";
                $dtnDesabilita = "";
                $chkValor      = "1";
            }else{
                $chkChecado    = "";
                $dtnDesabilita = "disabled";
                $chkValor      = "0";
            }

            $usuario     = $row[4];
            $fechacad    = $row[10];
            $fecha_reg    = $row[11];
            $idnombre = $row[2];
            $idtema = $row[3];
            $fCad = $row[10];
            $pDP = $row[6];
            $pE = $row[7];
            $pU = $row[8];
            $pT = $row[9];
            $nCompleto  = $row[13].' '.$row[14].' '.$row[12];
            $Creado = dias_transcurridos($fecha,$fecha_reg);
            $Creacion = ($Creado == 1)?$Creado.' Día transcurido':$Creado.' Días transcuridos'

            ?>
            <tr class="centrar">
                <th scope="row" class="textoBase">
                    <?php echo $n?>
                </th>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="editar btn btn-outline-success btn-sm activo" id="btnEditar<?php echo $varGral?><?php echo $n?>" onclick="llenar_formulario_U('<?php echo $id?>','<?php echo $idnombre?>','<?php echo $usuario?>','<?php echo $idtema?>','<?php echo $fCad?>','<?php echo $pDP?>','<?php echo $pE?>','<?php echo $pU?>','<?php echo $pT?>')">
                        <i class="far fa-edit fa-lg"></i>
                    </button>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="imprimir btn btn-outline-warning btn-sm activo" id="btnRestablecer<?php echo $varGral?><?php echo $n?>" onclick="restablecerContra('<?php echo $id?>','<?php echo $usuario?>')">
                        <i class="fas fa-sync-alt"></i>
                    </button>
                </td>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="ventana btn btn-outline-info btn-sm activo"  id="btnPermisos<?php echo $varGral?><?php echo $n?>" onclick="abrirModalPermisos('<?php echo $id?>', '<?php echo $nCompleto?>','<?php echo $pDP?>','<?php echo $pE?>','<?php echo $pU?>','<?php echo $pT?>','<?php echo $usuario?>')">
                        <i class="fas fa-user-lock"></i>
                    </button>
                </td>
                <td>
                    <label class="textoBase">
                        <?php echo $nCompleto?>
                    </label>
                </td>
                <td>
                    <label class="textoBase">
                        <?php echo $usuario?>
                    </label>
                </td>
                <td>
                    <label class="textoBase">
                        <?php echo $Creacion?>
                    </label>
                </td>
                <td>
                    <input value="<?php echo $chkValor?>" onchange="cambiar_estatus_U(<?php echo $id?>,<?php echo $n?>)" class="toggle-two" type="checkbox" <?php echo $chkChecado?> data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger" data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="check<?php echo $n?>">
                </td>
            </tr>
        <?php 
        $n++;
        }
        ?>

        </tbody>
        <tfoot>
            <tr class='hTabla'>
                <th scope="col">#</th>
                <th scope="col">Editar</th>
                <th scope="col">Restablecer Contraseña</th>
                <th scope="col">Permisos</th>
                <th scope="col">Nombre Del Usuario</th>
                <th scope="col">Usuario</th>
                <th scope="col">Dias De Creacion</th>
                <th scope="col">Status</th>
            </tr>
        </tfoot>
    </table>
<div>

<?php
//En caso de error imprime
print_r(mysqli_error($conexionLi));
//Cierro la conexionLi
mysqli_close($conexionLi);
?>

<script type="text/javascript">
  var varGral='<?php echo $varGral?>';
  $(document).ready(function() {
        $('#example'+varGral).DataTable( {
            "language": {
                    // "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
                    "url": "../plugins/dataTablesB4/langauge/Spanish.json"
                },
            "order": [[ 0, "asc" ]],
            "paging":   true,
            "ordering": true,
            "info":     true,
            "responsive": true,
            "searching": true,
            stateSave: true,
            dom: 'Bfrtip',
            lengthMenu: [
                [ 10, 25, 50, -1 ],
                [ '10 Registros', '25 Registros', '50 Registros', 'Todos' ],
            ],
            columnDefs: [ {
                // targets: 0,
                // visible: false
            }],
            buttons: [
                      {
                          text: "<i class='fas fa-plus fa-lg' aria-hidden='true'></i> &nbsp;Nuevo Registro",
                          className: 'btn btn-outline-primary btnEspacio',
                          id: 'btnNuevo',
                          action : function(){
                            nuevo_registro_U();
                          }
                      },
                      {
                          extend: 'excel',
                          text: "<i class='far fa-file-excel fa-lg' aria-hidden='true'></i> &nbsp;Exportar a Excel",
                          className: 'btn btn-outline-secondary btnEspacio',
                          title:'Lista_de_usuarios',
                          id: 'btnExportar',
                          exportOptions: {
                            columns:  [0,4,5,6],
                          }
                      }

            ]
        } );
    } );

</script>

<script>
    $('.toggle-two').bootstrapToggle();
</script>
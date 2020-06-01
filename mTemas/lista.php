<?php
// Conexion mysqli
include'../conexion/conexionli.php';

include'../funciones/diasTranscurridos.php';
//Variable de Nombre
$varGral="-T";
$fecha=date("Y-m-d"); 
$hora=date("H:i:s");

$cadena = "SELECT
                id_tema,
                activo,
                nombre_tema,
                color_letra,
                color_base,
                color_base_fuerte,
                color_borde,
                fecha_registro,
                hora_registro
            FROM 
                temas
            ORDER BY id_tema DESC";
$consultar = mysqli_query($conexionLi, $cadena);
//$row = mysqli_fetch_array($consultar);

?>
<div class="table-responsive">
<table id="example<?php echo $varGral;?>" class="table table-striped table-bordered" style="width:100%">

        <thead>
            <tr class='hTabla'>
                <th scope="col">#</th>
                <th scope="col">Editar</th>
                <th scope="col">Exportar Tema</th>
                <th scope="col">Aplicar Tema</th>
                <th scope="col">Nombre</th>
                <th scope="col">Días de creación</th>
                <th scope="col">Hora de creación</th>
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

            $nombre     = $row[2];
            $cLetra    = $row[3];
            $cBase    = $row[4];
            $cBasefue       = $row[5];
            $cBorde     = $row[6];
            $fecha_reg       = $row[7];
            $hora_reg      = $row[8];
            $Creado = dias_transcurridos($fecha,$fecha_reg);
            $Creacion = ($Creado == 1)?$Creado.' Día':$Creado.' Días'

            ?>
            <tr class="centrar">
                <th scope="row" class="textoBase">
                    <?php echo $n?>
                </th>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="editar btn btn-outline-success btn-sm activo" id="btnEditar<?php echo $varGral?><?php echo $n?>" onclick="llenar_formulario_T('<?php echo $id?>','<?php echo $nombre?>','<?php echo $cLetra?>','<?php echo $cBase?>','<?php echo $cBasefue?>','<?php echo $cBorde?>')">
                                <i class="far fa-edit fa-lg"></i>
                    </button>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="imprimir btn btn-outline-warning btn-sm activo" id="btnExportar<?php echo $varGral?><?php echo $n?>" onclick="exportar('<?php echo $id?>')">
                                <i class="fas fa-file-export"></i>
                    </button>
                </td>
                <td>
                    <button <?php echo $dtnDesabilita?> type="button" class="ventana btn btn-outline-info btn-sm activo"  id="btnAplicar<?php echo $varGral?><?php echo $n?>" onclick="Aplicartema(<?php echo $id?>)" onmouseleave="TemOut()" onmouseenter="TemOver('<?php echo $cLetra?>','<?php echo $cBase?>','<?php echo $cBasefue?>','<?php echo $cBorde?>')" >
                                <i class="fas fa-check-square"></i>
                    </button>
                </td>
                <td>
                    <label class="textoBase">
                        <?php echo $nombre?>
                    </label>
                </td>
                <td>
                    <label id="dias<?php echo $n?>" class="textoBase">
                        <?php echo $Creacion?>
                    </label>
                </td>
                <td>
                    <label id="hora<?php echo $n?>" class="textoBase">
                        <?php echo $hora_reg?>
                    </label>
                </td>
                <td>
                    <input value="<?php echo $chkValor?>" onchange="cambiar_estatus_T(<?php echo $id?>,<?php echo $n?>)" class="toggle-two" type="checkbox" <?php echo $chkChecado?> data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger" data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="check<?php echo $n?>">
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
                <th scope="col">Exportar Tema</th>
                <th scope="col">Aplicar Tema</th>
                <th scope="col">Nombre</th>
                <th scope="col">Días de creación</th>
                <th scope="col">Hora de creación</th>
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
                            nuevo_registro_T();
                          }
                      },
                      {
                          text: "<i class='fas fa-file-import fa-lg' aria-hidden='true'></i> &nbsp;Importar Tema",
                          className: 'btn btn-outline-warning btnEspacio',
                          id: 'btnImporTemas',
                          action : function(){
                            abrirModalImpTema();
                          }
                      },
                      {
                          extend: 'excel',
                          text: "<i class='far fa-file-excel fa-lg' aria-hidden='true'></i> &nbsp;Exportar a Excel",
                          className: 'btn btn-outline-secondary btnEspacio',
                          title:'Lista_Temas',
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
//VARIABLE GLOBAL PARA NOMBRAR LOS ELEMENTOS DE LOS  FORMULARIOS
//DATOS PERSONALES -DP 
var nombreModulo_T="Temas";

$("#frmGuardar-T").submit(function(e){

    var nombre    = $("#nTema").val();
    var cFuente = $("#cFuente").val();
    var cBase = $("#cBase").val();
    var cBaseFuerte      = $("#cBaseFuerte").val();
    var cBorde    = $("#cBorde").val();
    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas Guardar la información?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-primary",
        confirmButtonText: "Si, deseo guardarla",
        cancelButtonText: "Cancelar Acción",
        cancelButtonClass: "btn-outline-danger",
        closeOnConfirm: false,
        closeOnCancel: true,
        showLoaderOnConfirm: true
      }, function (isConfirm) {
        if (isConfirm) {
        setTimeout(function () {
            $.ajax({
                url:"../mTemas/rTema.php",
                type:"POST",
                dateType:"html",
                data:{nombre},
                success:function(respuesta){
                if (respuesta == 'Si') {
                        swal({
                            title: "Error!",
                            text: "Ya existe un tema con ese nombre",
                            type: "error",
                            confirmButtonClass: "btn-danger",
                            cancelButtonText: "OK",
                    }, function (isConfirm){
                        alertify.message("Prueba otro nombre!");
                        $("#nTema").focus();
                    });
                } else {
                    swal.close();
                    $.ajax({
                        url:"../mTemas/guardar.php",
                        type:"POST",
                        dateType:"html",
                        data:{nombre,cFuente,cBase,cBaseFuerte,cBorde},
                        success:function(respuesta){
                            
                            $("#guardar-T").hide();
                            llenar_lista_T();
                            $("#frmGuardar-T")[0].reset();
                            selectTwo();
                            alertify.success("<i class='fa fa-save fa-lg'></i>", 2);
                            $('#nTema').focus();
                            actividad  ="Se insertado un nuevo registro a la tabla "+nombreModulo_T;
                            var idUser=$("#inicioIdusuario").val();
                            log(actividad,idUser);
                    
                        },
                        error:function(xhr,status){
                            alert("Error en metodo AJAX"); 
                        },
                    });
                }
                },
                error:function(xhr,status){
                    alert("Error en metodo AJAX"); 
                },
            });
            
        }, 2000);}
        else{
            alertify.error(" <i class='fa fa-times fa-lg'></i> Cancelado",2);
        }
      });

    e.preventDefault();
    return false;
});

$("#frmActualizar-T").submit(function(e){

    var id        = $("#eIdt").val();
    var nombre    = $("#EnTema").val();
    var cFuente = $("#EcFuente").val();
    var cBase = $("#EcBase").val();
    var cBaseFuerte      = $("#EcBaseFuerte").val();
    var cBorde    = $("#EcBorde").val();

    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas Actualizar la información?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-success",
        confirmButtonText: "Si, deseo actualizarla",
        cancelButtonText: "Cancelar Acción",
        cancelButtonClass: "btn-outline-danger",
        closeOnConfirm: false,
        closeOnCancel: true,
        showLoaderOnConfirm: true
        }, function (isConfirm) {
        if (isConfirm) {
        setTimeout(function () {
            $.ajax({
                url:"../mTemas/ErTema.php",
                type:"POST",
                dateType:"html",
                data:{nombre,id},
                success:function(respuesta){
                if (respuesta == 'Si') {
                        swal({
                            title: "Error!",
                            text: "Ya existe un tema con ese nombre",
                            type: "error",
                            confirmButtonClass: "btn-danger",
                            cancelButtonText: "OK",
                    }, function (isConfirm){
                        alertify.message("Prueba otro nombre!");
                        $("#EnTema").focus();
                    });
                } else {
                    swal.close();
                    $.ajax({
                        url:"../mTemas/actualizar.php",
                        type:"POST",
                        dateType:"html",
                        data:{id,nombre,cFuente,cBase,cBaseFuerte,cBorde},
                        success:function(respuesta){
                            //console.log(respuesta);
                            llenar_lista_T();
                            $("#frmGuardar-T")[0].reset();
                            $("#frmActualizar-T")[0].reset();
                            alertify.success("<i class='fa fa-bolt fa-lg'></i>", 2);
                            $("#btnCancelarG-T , #btnCancelarA-T").click();
                            actividad  ="Se ha modificado un registro de la tabla tabla "+nombreModulo_T;
                            var idUser=$("#inicioIdusuario").val();
                            log(actividad,idUser);
                            $('#nTema').focus();
                        },
                        error:function(xhr,status){
                            alert("Error en metodo AJAX"); 
                    },
                });
                }
                },
                error:function(xhr,status){
                    alert("Error en metodo AJAX"); 
                },
            });

        }, 2000);}
        else{
            alertify.error(" <i class='fa fa-times fa-lg'></i> Cancelado",2);
        }
        });

    e.preventDefault();
    return false;
});

function llenar_lista_T(){
    abrirModalCarga('Cargando Lista');
    $("#frmGuardar-T")[0].reset();
    $("#Listado-T").hide();
    $.ajax({
        url:"../mTemas/lista.php",
        type:"POST",
        dateType:"html",
        data:{},
        success:function(respuesta){
            $("#Listado-T").html(respuesta);
            $("#Listado-T").fadeIn("slow");
            cerrarModalCarga();      
            $("#nombre").focus();
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
}

function llenar_formulario_T(idtema,nombre,cLetra,cBase,cBasefue,cBorde){
   
    $("#eIdt").val(idtema);
    $("#EnTema").val(nombre);
    $("#EcFuente").val(cLetra);
    $("#EcBase").val(cBase);
    $("#EcBaseFuerte").val(cBasefue);
    $("#EcBorde").val(cBorde);

    $("#lblTitular").text(nombreModulo_T);
    $("#badgeInfo").text("Modificar datos");

    $("#guardar-T").hide();
    $("#Listado-T").hide();
    $("#editar-T").fadeIn();
    $("#EnTema").focus();
}

function cambiar_estatus_T(id,consecutivo){
    var valor=$("#check"+consecutivo).val();
    var contravalor=(valor==1)?0:1;
    $("#check"+consecutivo).val(contravalor);
    $("#dias"+consecutivo).text("0 días");
    $.ajax({
        url:"../mTemas/cEstatus.php",
        type:"POST",
        dateType:"html",
        data:{id,contravalor},
        success:function(respuesta){
            // console.log(respuesta);
            if(contravalor==1){
                alertify.success("<i class='fa fa-check fa-lg'></i>", 2);
                $("#btnEditar-T"+consecutivo).removeAttr('disabled');
                $("#btnExportar-T"+consecutivo).removeAttr('disabled');
                $("#btnAplicar-T"+consecutivo).removeAttr('disabled');
                actividad  ="Se ha reactivado un registro de la tabla tabla "+nombreModulo_T;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            }else{
                alertify.error("<i class='fa fa-times fa-lg'></i>", 2);
                $("#btnEditar-T"+consecutivo).attr('disabled','disabled');
                $("#btnExportar-T"+consecutivo).attr('disabled','disabled');
                $("#btnAplicar-T"+consecutivo).attr('disabled','disabled');
                actividad  ="Se ha desactivado un registro de la tabla tabla "+nombreModulo_T;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            }
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });

}

function abrirModalImpTema(){
    $("#modalArchivo-T").modal("show");
}

function importarArchivoTema(){
    var files = $('#image1')[0].files[0];
    var archivo=files.name;
    var ruta= "../Temas/"+archivo;

    console.log(ruta);
    
    $.getJSON(ruta, function(data){
        //for para decorre las propiedades
        for(tema in data){

            var nombre_tema       = data[tema].nombre_tema;
            var color_letra       = data[tema].color_letra;
            var color_base        = data[tema].color_base;
            var color_base_fuerte = data[tema].color_base_fuerte;
            var color_borde       = data[tema].color_borde;
            var fecha_registro    = data[tema].fecha_registro;
            var hora_registro     = data[tema].hora_registro;

            $.ajax({
                url:"../mTemas/importar.php",
                type:"POST",
                dateType:"html",
                data:{nombre_tema,color_letra,color_base,color_base_fuerte,color_borde,fecha_registro,hora_registro},
                success:function(respuesta){
                    console.log(respuesta);
                    var bandera=respuesta;
                    if (bandera==0) {
                        preloader(1,"Importando Tema ...");
                        $("#modalArchivo-T").modal("hide");
                        llenar_lista_T();
                    }else{
                        swal({
                            title: "Error!",
                            text: "Ya existe un tema con el nombre "+nombre_tema,
                            type: "error",
                            confirmButtonClass: "btn-dark",
                            confirmButtonText: "Enterado"
                        }, function (isConfirm) {
                            alertify.message("Gracias !");
                        });
                    }
                },
                error:function(xhr,status){
                    alert("Error en metodo AJAX"); 
                },
            });
        }
    });
}

function preloader(seg,mensaje,alerta){
    var s=parseInt(seg)*1000;
    abrirModalCarga(mensaje);
    setTimeout(function() {

        cerrarModalCarga(alerta);
    },s);
}

$("#btnCancelarG-T , #btnCancelarA-T").click(function(){
    $("#editar-T").hide();
    $("#guardar-T").hide();

    $("#lblTitular").text(nombreModulo_T);
    $("#badgeInfo").text("Lista");

    $("#Listado-T").fadeIn();
});

function nuevo_registro_T(){
    $("#lblTitular").text(nombreModulo_T);
    $("#badgeInfo").text("Nuevo registro");

    $("#Listado-T").hide();
    $("#guardar-T").fadeIn();
    $('#frmGuardar-T')[0].reset();
    $("#nTema").focus();
}

function Probartema(id){
    var cFuente = $("#cFuente").val();
    var cBase = $("#cBase").val();
    var cBaseFuerte = $("#cBaseFuerte").val();
    var cBorde = $("#cBorde").val();
    var idUs = $("#inicioIdTema").val()
    cssTema(cBaseFuerte,cBase,cFuente,cBorde);
    var time = 000;
    var n = 6;
    $.timer(time, function(temporizador){
    if (time==1250){
        $("#btnProbar-T").removeAttr('disabled');
        $("#btnCancelarG-T").removeAttr('disabled');
        $("#btnGuardar-T").removeAttr('disabled');
        aplicarTema(idUs,'login');
        alertify.success("Prueba Finalizada", 1);
        temporizador.stop();
    }else{
        n -= 1;
        time += 250;
        alertify.warning("Segundos restantes "+n, 1);
        temporizador.reset(time);
        $("#btnProbar-T").attr('disabled','disabled');
        $("#btnCancelarG-T").attr('disabled','disabled');
        $("#btnGuardar-T").attr('disabled','disabled');
        }
    }) 
}
function ProbartemaE(id){
    var cFuente = $("#EcFuente").val();
    var cBase = $("#EcBase").val();
    var cBaseFuerte = $("#EcBaseFuerte").val();
    var cBorde = $("#EcBorde").val();
    var idUs = $("#inicioIdTema").val()
    cssTema(cBaseFuerte,cBase,cFuente,cBorde);
    var time = 000;
    var n = 6;
    $.timer(time, function(temporizador){
    if (time==1250){
        $("#btnProbarA-T").removeAttr('disabled');
        $("#btnCancelarA-T").removeAttr('disabled');
        $("#btnActualizar-T").removeAttr('disabled');
        aplicarTema(idUs,'login');
        alertify.success("Prueba Finalizada", 1);
        temporizador.stop();
    }else{
        n -= 1;
        time += 250;
        alertify.warning("Segundos restantes "+n, 1);
        temporizador.reset(time);
        $("#btnProbarA-T").attr('disabled','disabled');
        $("#btnCancelarA-T").attr('disabled','disabled');
        $("#btnActualizar-T").attr('disabled','disabled');
    }
    }) 
}

function TemOver(cLetra,cBase,cBasefue,cBorde){
    cssTema(cBasefue,cBase,cLetra,cBorde);
}

function TemOut(){
    var idUs = $("#inicioIdTema").val();
    aplicarTema(idUs,'login');
}

function exportar(id){
    valor=id;
    console.log(valor);
    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas Exportar el tema?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-primary",
        confirmButtonText: "Si, deseo exportar",
        cancelButtonText: "Cancelar Acción",
        cancelButtonClass: "btn-outline-danger",
        closeOnConfirm: false,
        closeOnCancel: true,
        showLoaderOnConfirm: true
      }, function (isConfirm) {
        if (isConfirm) {
            setTimeout(function () {
                swal.close();
                $.ajax({
                    url:"../mTemas/exportar.php",
                    type:"POST",
                    dateType:"html",
                    data:{valor},
                    success:function(respuesta){
                        // console.log(respuesta);
                        preloader(1,"Generando archivo JSON","Se ha exportado el archivo de manera exitosa !")
                        alertify.success("Se exporto correctamente", 1);
                    },
                    error:function(xhr,status){
                        alert("Error en metodo AJAX"); 
                    }
                });
            },2000);
        }else{
            alertify.error(" <i class='fa fa-times fa-lg'></i> Cancelado",2);
        }
      });
}

function Aplicartema(id){
    valor=id;
    console.log(valor);
    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas aplicar el tema?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-primary",
        confirmButtonText: "Si, deseo aplicarlo",
        cancelButtonText: "Cancelar Acción",
        cancelButtonClass: "btn-outline-danger",
        closeOnConfirm: false,
        closeOnCancel: true,
        showLoaderOnConfirm: true
      }, function (isConfirm) {
        if (isConfirm) {
            setTimeout(function () {
                swal.close();
                aplicarTema(valor,'enlace');
                audio();
            },2000);
        }else{
            alertify.error(" <i class='fa fa-times fa-lg'></i> Cancelado",2);
        }
      });
}
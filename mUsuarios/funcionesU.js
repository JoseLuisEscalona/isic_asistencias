//VARIABLE GLOBAL PARA NOMBRAR LOS ELEMENTOS DE LOS  FORMULARIOS
//DATOS PERSONALES -DP 
var nombreModulo_U="Usuarios";

$("#frmGuardar-U").submit(function(e){

    var per     = $("#per").val();
    var nombreU = $("#nombreU").val();
    var tem     = $("#tem").val();
    var fCad    = $("#fCad").val();
    var pDP     = $("#pDP").val();
    var pE      = $("#pE").val();
    var pU      = $("#pU").val();
    var pT      = $("#pT").val();

    if ($("#pDP").prop('checked')){
        pDP = "si";
    }
    if ($("#pE").prop('checked')){
        pE = "si";
    }
    if ($("#pU").prop('checked')){
        pU = "si";
    }
    if ($("#pT").prop('checked')){
        pT = "si";
    }

    swal({
        title: "¿Deseas Guardar?",
        text: "La contraseña del usuario sera 12345678",
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
                url:"../mUsuarios/rPersona.php",
                type:"POST",
                dateType:"html",
                data:{nombreU},
                success:function(respuesta){
                if (respuesta == 'Si') {
                        swal({
                            title: "Error!",
                            text: "Ya existe un usuario con ese nombre",
                            type: "error",
                            confirmButtonClass: "btn-danger",
                            cancelButtonText: "OK",
                    }, function (isConfirm){
                        alertify.message("Prueba otro nombre!");
                        $("#nombreU").focus();
                    });
                } else {
                    swal.close();
                    $.ajax({
                        url:"../mUsuarios/guardar.php",
                        type:"POST",
                        dateType:"html",
                        data:{per,nombreU,tem,fCad,pDP,pE,pU,pT},
                        success:function(respuesta){
                            $("#guardar-U").hide();
                            combo_nombre();
                            llenar_lista_U();
                            $("#frmGuardar-U")[0].reset();
                            selectTwo();
                            $("#btnCancelarG-U , #btnCancelarA-U").click();
                            alertify.success("<i class='fa fa-save fa-lg'>Contraseña 12345678</i>", 5);
                            $('#nombreU').focus();
                            actividad  ="Se insertado un nuevo registro a la tabla "+nombreModulo_U;
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

$("#frmActualizar-U").submit(function(e){

    var id     = $("#eIdU").val();
    var Eper     = $("#Eper").val();
    var EnombreU = $("#EnombreU").val();
    var Etem     = $("#Etem").val();
    var EfCad    = $("#EfCad").val();
    var EpDP     = $("#EpDP").val();
    var EpE      = $("#EpE").val();
    var EpU      = $("#EpU").val();
    var EpT      = $("#EpT").val();

    if ($("#EpDP").prop('checked')){
        EpDP = "si";
    }else{
        EpDP = "no";
    }
    if ($("#EpE").prop('checked')){
        EpE = "si";
    }else{
        EpE = "no";
    }
    if ($("#EpU").prop('checked')){
        EpU = "si";
    }else{
        EpU = "no";
    }
    if ($("#EpT").prop('checked')){
        EpT = "si";
    }else{
        EpT = "no";
    }

    swal({
        title: "¿Deseas Actualizar?",
        text: "La contraseña del usuario sera 12345678",
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
                url:"../mUsuarios/ErPersona.php",
                type:"POST",
                dateType:"html",
                data:{EnombreU,id},
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
                        $("#EnombreU").focus();
                    });
                } else {
                    swal.close();
                    $.ajax({
                        url:"../mUsuarios/actualizar.php",
                        type:"POST",
                        dateType:"html",
                        data:{id,Eper,EnombreU,Etem,EfCad,EpDP,EpE,EpU,EpT},
                        success:function(respuesta){
                            //console.log(respuesta);
                            llenar_lista_U();
                            $("#frmGuardar-U")[0].reset();
                            $("#frmActualizar-U")[0].reset();
                            alertify.success("<i class='fa fa-bolt fa-lg'>Contraseña: 12345678</i>", 5);
                            $("#btnCancelarG-U , #btnCancelarA-U").click();
                            actividad  ="Se ha modificado un registro de la tabla tabla "+nombreModulo_U;
                            var idUser=$("#inicioIdusuario").val();
                            log(actividad,idUser);
                            $('#nombreU').focus();
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

function llenar_lista_U(){
    abrirModalCarga('Cargando Lista');
    $("#frmGuardar-U")[0].reset();
    $("#Listado-U").hide();
    $.ajax({
        url:"../mUsuarios/lista.php",
        type:"POST",
        dateType:"html",
        data:{},
        success:function(respuesta){
            $("#Listado-U").html(respuesta);
            $("#Listado-U").fadeIn("slow");
            cerrarModalCarga();      
            $("#nombre").focus();
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
}

function llenar_formulario_U(Eid,Eidnombre,Eusuario,Eidtema,EfCad,EpDP,EpE,EpU,EpT){

    $("#eIdU").val(Eid);
    $("#Eper").val(Eidnombre);
    $("#EnombreU").val(Eusuario);
    $("#Etem").val(Eidtema);
    $("#EfCad").val(EfCad);
    $("#EpDP").val(EpDP);
    $("#EpE").val(EpE);
    $("#EpU").val(EpU);
    $("#EpT").val(EpT);

    selectTwo();

    if (EpDP == 'si') {
        $("#EpDP").bootstrapToggle('on');
    }else{
        $("#EpDP").bootstrapToggle('off');
    }
    if (EpE == 'si') {
        $("#EpE").bootstrapToggle('on');
    }else{
        $("#EpE").bootstrapToggle('off');
    }
    if (EpU == 'si') {
        $("#EpU").bootstrapToggle('on');
    }else{
        $("#EpU").bootstrapToggle('off');
    }
    if (EpT == 'si') {
        $("#EpT").bootstrapToggle('on');
    }else{
        $("#EpT").bootstrapToggle('off');
    }

    $("#lblTitular").text(nombreModulo_U);
    $("#badgeInfo").text("Modificar datos");

    $("#guardar-U").hide();
    $("#Listado-U").hide();
    $("#editar-U").fadeIn();
    $("#EnombreU").focus();

}

function abrirModalPermisos(id, nCompleto, pDP, pE, pU, pT, usuario) {
    $("#txtTitularPermisos").text("Permisos para el usuario - "+usuario);

    $("#idUsuario").val(id);
    $("#Usuario").val(usuario);
    $("#MpDP").val(pDP);
    $("#MpE").val(pE);
    $("#MpU").val(pU);
    $("#MpT").val(pT);
    if (pDP == 'si') {
        $("#MpDP").bootstrapToggle('on');
    }else{
        $("#MpDP").bootstrapToggle('off');
    }
    if (pE == 'si') {
        $("#MpE").bootstrapToggle('on');
    }else{
        $("#MpE").bootstrapToggle('off');
    }
    if (pU == 'si') {
        $("#MpU").bootstrapToggle('on');
    }else{
        $("#MpU").bootstrapToggle('off');
    }
    if (pT == 'si') {
        $("#MpT").bootstrapToggle('on');
    }else{
        $("#MpT").bootstrapToggle('off');
    }

    selectTwo();

    $("#modalPermisos-U").modal("show");
}

function GuardarPermisos(){
    var idu    = $("#idUsuario").val();
    var nombre = $("#Usuario").val();
    var MpDP   = $("#MpDP").val();
    var MpE    = $("#MpE").val();
    var MpU    = $("#MpU").val();
    var MpT    = $("#MpT").val();

    if ($("#MpDP").prop('checked')){
        MpDP = "si";
    }
    else{
        MpDP = "no";
    }
    if ($("#MpE").prop('checked')){
        MpE = "si";
    }
    else{
        MpE = "no";
    }
    if ($("#MpU").prop('checked')){
        MpU = "si";
    }
    else{
        MpU = "no";
    }
    if ($("#MpT").prop('checked')){
        MpT = "si";
    }
    else{
        MpT = "no";
    }

    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas guardar los permisos?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-success",
        confirmButtonText: "Si, deseo guardar",
        cancelButtonText: "Cancelar Acción",
        cancelButtonClass: "btn-outline-danger",
        closeOnConfirm: false,
        closeOnCancel: true,
        showLoaderOnConfirm: true
        }, function (isConfirm) {
        if (isConfirm) {
        setTimeout(function () {
            $.ajax({
                url:"../mUsuarios/actualizarPermisos.php",
                type:"POST",
                dateType:"html",
                data:{idu, MpDP, MpE, MpU, MpT},
                success:function(respuesta){
                    swal.close();
                    //console.log(respuesta);
                    alertify.success("<i class='fa fa-check fa-lg'></i> Permisos Guardados", 2);
                    $("#modalPermisos-U").modal("hide");
                    actividad  ="Se han guardado permisos para el usuario "+nombre;
                    var idUser=$("#inicioIdusuario").val();
                    log(actividad,idUser);
                    llenar_lista_U();
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
}

function restablecerContra(id,usuario){
    swal({
        title: "¿Estas Seguro?",
        text: "¿Deseas restablecer la contraseña a 12345678?",
        type: "info",
        showCancelButton: true,
        confirmButtonClass: "btn-primary",
        confirmButtonText: "Si, deseo restablecerla",
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
                url:"../mUsuarios/actualizarcontra.php",
                type:"POST",
                dateType:"html",
                data:{id},
                success:function(respuesta){
                    actividad  ="Se ha restablecido la contraseña para el usuario"+usuario;
                    var idUser=$("#inicioIdusuario").val();
                    log(actividad,idUser);
                    llenar_lista_U();
                    selectTwo();
                    alertify.success("<i class='fa fa-save fa-lg'>Contraseña restablecida: 12345678</i>", 5);
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
}

function cambiar_estatus_U(id,consecutivo){

    var valor=$("#check"+consecutivo).val();
    var contravalor=(valor==1)?0:1;
    $("#check"+consecutivo).val(contravalor);

    $.ajax({
        url:"../mUsuarios/cEstatus.php",
        type:"POST",
        dateType:"html",
        data:{id,contravalor},
        success:function(respuesta){
            // console.log(respuesta);
            if(contravalor==1){
                alertify.success("<i class='fa fa-check fa-lg'></i>", 2);
                $("#btnEditar-U"+consecutivo).removeAttr('disabled');
                $("#btnRestablecer-U"+consecutivo).removeAttr('disabled');
                $("#btnPermisos-U"+consecutivo).removeAttr('disabled');
                actividad  ="Se ha reactivado un registro de la tabla tabla "+nombreModulo_U;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            }else{
                alertify.error("<i class='fa fa-times fa-lg'></i>", 2);
                $("#btnEditar-U"+consecutivo).attr('disabled','disabled');
                $("#btnRestablecer-U"+consecutivo).attr('disabled','disabled');
                $("#btnPermisos-U"+consecutivo).attr('disabled','disabled');
                actividad  ="Se ha desactivado un registro de la tabla tabla "+nombreModulo_U;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            }
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });

}

$("#btnCancelarG-U , #btnCancelarA-U").click(function(){
    $("#editar-U").hide();
    $("#guardar-U").hide();
    $("#pDP").bootstrapToggle('off');
    $("#pE").bootstrapToggle('off');
    $("#pU").bootstrapToggle('off');
    $("#pT").bootstrapToggle('off');

    $("#lblTitular").text(nombreModulo_U);
    $("#badgeInfo").text("Lista");

    $("#Listado-U").fadeIn();
 
});

//llenar combo
function combo_nombre()
{
    $.ajax({
        url : '../mUsuarios/comboDP.php',
        data : {},
        type : 'POST',
        dataType : 'html',
        success : function(respuesta) {
            
            $("#per").empty();
            $("#per").html(respuesta);    
            selectTwo();
        },
        error : function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
    });
}

function combo_Enombre()
{
    $.ajax({
        url : '../mUsuarios/comboEDP.php',
        data : {},
        type : 'POST',
        dataType : 'html',
        success : function(respuesta) {
            
            $("#Eper").empty();
            $("#Eper").html(respuesta);    
            selectTwo();
        },
        error : function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
    });
}

function combo_tema()
{
    $.ajax({
        url : '../mUsuarios/comboT.php',
        data : {},
        type : 'POST',
        dataType : 'html',
        success : function(respuesta) {
            
            $("#tem , #Etem").empty();
            $("#tem , #Etem").html(respuesta);    
            selectTwo();
        },
        error : function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
    });
}

function nuevo_registro_U(){
    $("#lblTitular").text(nombreModulo_U);
    $("#badgeInfo").text("Nuevo registro");

    $("#Listado-U").hide();
    $("#guardar-U").fadeIn();
    $('#frmGuardar-U')[0].reset();
    $("#nombreU").focus();
    
}

//Hace la validacion del usuario y la contraseña
$("#frmLogin").submit(function(e){

    var usuario    = $("#loginUsuario").val();
    var contra     = $("#loginContra").val();

    $.ajax({
        url:"../mLogin/validar_login.php",
        type:"POST",
        dateType:"json",
        data:{usuario,contra},
        success:function(respuesta){
            var dataArray = JSON.parse(respuesta);
             //console.log(respuesta);
            var registros=dataArray.cRegistros;
            var dias=dataArray.dias;
            if (registros !=0 ) {//existe el usuario
                if(dias < 0){//caducidad
                    swal({
                        title: "Mensaje!",
                        text: "A caducado tu suscripción al sistema",
                        type: "error",
                        confirmButtonClass: "btn-dark",
                        confirmButtonText: "Enterado"
                    }, function (isConfirm) {
                        $("#btnIngresar").attr("disabled","disabled");
                        var h_sidebar="#c0392b";
                        var color_base="#e74c3c";
                        var letra_color="#fff";
                        var color_borde="#e74c3c";
                        cssTema(h_sidebar,color_base,letra_color,color_borde);
                        $("#icoLogin").removeClass("fas fa-unlock");
                        $("#icoLogin").addClass("fas fa-lock");
                        $("#frmLogin")[0].reset();
                        $("#loginUsuario").focus();
                    });

                }else{
                    if($('#Cambio').prop('checked')){
                        $("#modalCambioPass").modal("show");
                    }
                    else{
                    $("#contentLogin").hide();
                    $("#contentSistema").show();

                    persona=dataArray.result.persona;
                    idUsuario=dataArray.result.id_usuario;
                    idDato=dataArray.result.id_dato;

                    $("#titular").text(persona);

                    $('#sidebar').toggleClass('active');
                    permisos(dataArray.result.permiso_datos_persona,dataArray.result.permiso_ecivil,dataArray.result.permiso_usuario,dataArray.result.permiso_temas);
                    preloader(1,'Asitencia del personal');
                    actividad  ="Ingreso al sistema";
                    log(actividad,dataArray.result.id_usuario);
                    verAsistencias();
                }
            }
            }else{
                swal({
                    title: "Mensaje!",
                    text: "La contraseña es incorrecta.",
                    type: "error",
                    confirmButtonClass: "btn-dark",
                    confirmButtonText: "Enterado"
                }, function (isConfirm) {
                    $("#btnIngresar").attr("disabled","disabled");
                    var h_sidebar="#c0392b";
                    var color_base="#e74c3c";
                    var letra_color="#fff";
                    var color_borde="#e74c3c";
                    cssTema(h_sidebar,color_base,letra_color,color_borde);
                    $("#icoLogin").removeClass("fas fa-unlock");
                    $("#icoLogin").addClass("fas fa-lock");
                    $("#frmLogin")[0].reset();
                    $("#loginUsuario").focus();
                    $('#Cambio').click();
                });

            }

        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
    
    e.preventDefault();
    return false;
});

//permisoa partes del menu
function permisos(datos,ecivil,usuarios,temas){
    if(datos=='si'){
        $("#liDatos").show();
    }else{
        $("#liDatos").hide();
    }

    if(ecivil=='si'){
        $("#liEcivil").show();
    }else{
        $("#liEcivil").hide();
    }

    if(usuarios=='si'){
        $("#liUsuarios").show();
    }else{
        $("#liUsuarios").hide();
    }

    if(temas=='si'){
        $("#liTemas").show();
    }else{
        $("#liTemas").hide();
    }
}

//Revisa si existe el usuario y aplica el tema del mismo
$("#loginUsuario").keyup(function(){
    valor=$(this).val();
    $.ajax({
        url:"../mLogin/rUsuario.php",
        type:"POST",
        dateType:"json",
        data:{valor},
        success:function(respuesta){
            var dataArray = JSON.parse(respuesta);
            //console.log(respuesta);
            var registros=dataArray.cRegistros;
            if (registros !=0 ) {
                //$("#frmLogin").hide();
                idTema=dataArray.result.id_tema;
                aplicarTema(idTema,'login');
                $("#btnIngresar").removeAttr("disabled");
                $("#icoLogin").removeClass("fas fa-lock");
                $("#icoLogin").addClass("fas fa-unlock");
                $("#inicioIdusuario").val(dataArray.result.id_usuario);
                $("#inicioIdDato").val(dataArray.result.id_dato);
                $("#inicioIdTema").val(dataArray.result.id_tema);
                //$("#frmLogin").fadeIn();
            }else{
                //colores default
                $("#icoLogin").removeClass("fas fa-unlock");
                $("#icoLogin").addClass("fas fa-lock");
                $("#btnIngresar").attr("disabled","disabled");
                var h_sidebar="#2f3640";
                var color_base="#353b48";
                var letra_color="#fff";
                var color_borde="#40739e";
                cssTema(h_sidebar,color_base,letra_color,color_borde);
            }
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
});

function generar()
{
  var caracteres = "abcdefghijkmnpqrtuvwxyzABCDEFGHIJKLMNPQRTUVWXYZ2346789";
  var contraseña = "";
  for (i=0; i<8; i++) {
        contraseña += caracteres.charAt(Math.floor(Math.random()*caracteres.length));
        $("#pass").val(contraseña);
        $("#vpass").val(contraseña);
  }
}

function validarcontra(){
    var pass = $("#pass").val();
    var vpass = $("#vpass").val();
    // var let = pswd.match(/[A-z]/);
    // var mlet = pswd.match(/[A-Z]/);
    // var num = pswd.match(/\d/);
    if (pass.length>=8 || vpass.length>=8) {
        $("#Lon").removeClass("rojo");
        $("#Lon").addClass("verde");
        if ((pass == vpass)) {
            $("#btnGuardarPass").removeAttr("disabled");
            $("#Sim").removeClass("rojo");
            $("#Sim").addClass("verde");
        }
        else{
            $("#btnGuardarPass").attr("disabled","disabled");
            $("#Sim").removeClass("verde");
            $("#Sim").addClass("rojo");
        }
    }
    else{
        $("#btnGuardarPass").attr("disabled","disabled");
        $("#Lon").removeClass("verde");
        $("#Lon").addClass("rojo");
    }
}
function cambiarPass(){
    var usuario    = $("#loginUsuario").val();
    var contra     = $("#loginContra").val();
    var ncontra = $("#pass").val();
    $.ajax({
        url:"../mLogin/cPass.php",
        type:"POST",
        dateType:"html",
        data:{usuario,contra, ncontra},
        success:function(respuesta){
            // console.log(respuesta);
                alertify.success("<i class='fa fa-check fa-lg'></i> Contraseña actualizada correctamente", 2);
                $("#pass").val("");
                $("#vpass").val("");
                $("#loginUsuario").val("");
                $("#loginContra").val("");
                $("#Cambio").prop("checked", false);
                $("#contentLogin").hide();
                $("#contentSistema").show();
                $("#modalCambioPass").modal("hide");
                $("#Sim").removeClass("verde");
                $("#Sim").addClass("rojo");
                $("#Lon").removeClass("verde");
                $("#Lon").addClass("rojo");
                $("#btnGuardarPass").attr("disabled","disabled");
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
    var contra     = $("#pass").val();
    $.ajax({
        url:"../mLogin/validar_login.php",
        type:"POST",
        dateType:"json",
        data:{usuario,contra},
        success:function(respuesta){
            var dataArray = JSON.parse(respuesta);
            //console.log(respuesta);
            $("#contentLogin").hide();
            $("#contentSistema").show();
            persona=dataArray.result.persona;
            idUsuario=dataArray.result.id_usuario;
            idDato=dataArray.result.id_dato;
            $("#titular").text(persona);
            $('#sidebar').toggleClass('active');
            permisos(dataArray.result.permiso_datos_persona,dataArray.result.permiso_ecivil,dataArray.result.permiso_usuario,dataArray.result.permiso_temas);
            preloader(1,'Asitencia del personal');
            actividad  ="Ingreso al sistema";
            log(actividad,dataArray.result.id_usuario);
            verAsistencias();
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
}
function LimpiarModalCambioPass(){
    $("#pass").val("");
    $("#vpass").val("");
    $("#Sim").removeClass("verde");
    $("#Sim").addClass("rojo");
    $("#Lon").removeClass("verde");
    $("#Lon").addClass("rojo");
    $("#btnGuardarPass").attr("disabled","disabled");
    $('#pass').attr('type', 'password');
    $('#vpass').attr('type', 'password');
}
function verContraseña(){
    if ($('#pass').get(0).type == 'text' && $('#vpass').get(0).type == 'text') {
        $('#pass').attr('type', 'password');
        $('#vpass').attr('type', 'password');
    } else {
        $('#pass').attr('type', 'text');
        $('#vpass').attr('type', 'text');
    }
}
//VARIABLE GLOBAL PARA NOMBRAR LOS ELEMENTOS DE LOS  FORMULARIOS
//DATOS PERSONALES -DP 
var nombreModulo_A="Asistencias";
var voz = ($("#Son").prop("checked") == true) ? 'Activa' : 'Inactiva' ;

$(document).ready(function(){
    $("#Aclave").keydown(function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if(code==13){

        var now = new Date();
        var days = new Array('Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado');
 
        var date = now.getDate();
        var day = now.getDay();
        var Dia = days[day];
     
        var hour = now.getHours();
        var minute = now.getMinutes();
        var second = now.getSeconds();

        var Hora = hour +':'+ minute +':'+ second;
            var clave = $("#Aclave").val();
            if (!clave) {
                alertify.error("Debes de colocar una clave");
            }else{
            $.ajax({
                url:"../mAsistencias/rClave.php",
                type:"POST",
                dateType:"html",
                data:{clave},
                success:function(respuesta){
                if (respuesta == 'Si') {
                    $.ajax({
                        url:"../mAsistencias/rDatosPersona.php",
                        type:"POST",
                        dateType:"html",
                        data:{clave},
                        success:function(respuesta1){
                            var res = respuesta1;
                            $.ajax({
                                url:"../mAsistencias/rChHorario.php",
                                type:"POST",
                                dateType:"html",
                                data:{res},
                                success:function(respuesta2){
                                    if (respuesta2 == 'Si') {
                                        $.ajax({
                                            url:"../mAsistencias/rDia.php",
                                            type:"POST",
                                            dateType:"html",
                                            data:{res, Dia},
                                            success:function(respuesta3){
                                                if (respuesta3 == 'Si') {
                                                    rHorario(res)
                                                    .then((horario) => {
                                                        var incidencia;
                                                        var tipo;
                                                        rChAsistencia(res, now)
                                                        .then(function(asistencia){
                                                            if (asistencia.fecha_salida) {
                                                                alertify.error("Ya asististe hoy");
                                                            }else{
                                                                if (asistencia.fecha_entrada) {
                                                                    tipo = "Salida";
                                                                    incidencia = rInciencia(Dia, now, horario, tipo);
                                                                    mensajefin = incidencia.mensaje;
                                                                    colorfin = incidencia.color;
                                                                    if (mensajefin == "Fuera de rango") {
                                                                        alertify.error("Estas fuera de tu hora de salida",2);
                                                                        Sonido('Estas fuera de tu hora de salida');
                                                                    }else{
                                                                        Salida(res, mensajefin, colorfin);
                                                                    }
                                                                }else{
                                                                    tipo = "Entrada";
                                                                    incidencia = rInciencia(Dia, now, horario, tipo);
                                                                    mensajefin = incidencia.mensaje;
                                                                    colorfin = incidencia.color;
                                                                    if (mensajefin == "Fuera de rango") {
                                                                        alertify.error("Estas fuera de tu hora de entrada",2);
                                                                        Sonido('Estas fuera de tu hora de entrada');
                                                                    }else{
                                                                        Entrada(res, mensajefin, colorfin);
                                                                    }
                                                                }
                                                            }
                                                        })
                                                    });
                                                } else {
                                                    alertify.error("Hoy no es un día laboral para ti",2);
                                                    Sonido('Hoy no es un día laboral para ti');
                                                }
                                            },
                                            error:function(xhr,status){
                                                alert("Error en metodo AJAX"); 
                                            },
                                        });
                                    } else {
                                        alertify.error("No tienes ningun horario relacionado",2);
                                        Sonido('No tienes ningun horario relacionado');
                                        console.log(res);
                                    }
                                },
                                error:function(xhr,status){
                                    alert("Error en metodo AJAX"); 
                                },
                            });
                        },
                        error:function(xhr,status){
                            alert("Error en metodo AJAX"); 
                        },
                    });
                } else {
                    if (respuesta == 'SiNo') {
                        alertify.error("La clave que escribiste no está activa",2);
                        Sonido('La clave que escribiste no está activa');
                        $("#Aclave").focus();
                    }else{
                        alertify.error("La clave que escribiste no está relacionada con ningún trabajador",2);
                        Sonido('La clave que escribiste no esta relacionada con ningún trabajador');
                        $("#Aclave").focus();
                    }
                }
                },
                error:function(xhr,status){
                    alert("Error en metodo AJAX"); 
                },
            });
        }
        }
    });
});

$("#Son").change(function(){
    if ($(this).prop("checked") == true) {
        $(this).val("si");
    }else{
        $(this).val("no");
    }
});

function personadato(res, mensajefin, colorfin){
    $.ajax({
        url:"../mAsistencias/sacardatos.php",
        type:"POST",
        dateType:"html",
        data:{res},
        success:function(informacion){
            colo="pers";
            $("#Aclave").val("");
            $("#Aclave").focus();
            $("#Inci").html(mensajefin);
            $("#Datos").html(informacion);
            $("#Datos").addClass(colo);
            $("#Inci").addClass(colorfin);
            Limpiar(colorfin, colo);
        },
        error:function(xhr,status){
            alert("Error en metodo AJAX"); 
        },
    });
}

function Limpiar(colorfin, colo){
    setTimeout(function(){
    $("#Inci").html("");
    $("#Datos").html("");
    $("#Inci").removeClass(colorfin);
    $("#Datos").remuveClass(colo);
    },6000);
}

function Sonido(texto){
    //se requiere conexion a internet
    if ($("#Son").val() == "si") {
        var textoAtraducir;
    textoAtraducir=texto; 
    responsiveVoice.speak(textoAtraducir,"Spanish Female"); 
    alertify.success("<i class='fa fa-volume-up fa-lg'></i>", 2);
    }
}

function rChAsistencia(res, now){
    fecha_entrada = now.getFullYear() + "-" + (now.getMonth() + 1) + "-" + now.getDay();
    return new Promise((resolve, reject) => {
        $.ajax({
            url:"../mAsistencias/rChAsistencia.php",
            type:"POST",
            dataType:"json",
            data:{res, fecha_entrada},
            success:function(respuest){
                resolve(respuest.result);
            },
            error:function(xhr,status){
                alert("Error en metodo AJAX"); 
                reject("Error en el metodo AJAX Horario");
            },
        });
    });
}

function Salida(res, incidencia, colorfin){
    var clave = $("#Aclave").val();
        $.ajax({
            url:"../mAsistencias/actualizar.php",
            type:"POST",
            dateType:"html",
            data:{res, incidencia},
            success:function(respue){
                Sonido("Gracias por registrar su salida");
                alertify.success("Gracias por registrar su salida");
                personadato(res, mensajefin, colorfin);
                actividad  ="Se ha registrado una salida para la clave "+clave;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            },
            error:function(xhr,status){
                alert("Error en metodo AJAX"); 
                reject("Error en el metodo AJAX Salida");
            },
        });
}



function Entrada(res, incidencia, colorfin){
    var clave = $("#Aclave").val();
        $.ajax({
            url:"../mAsistencias/guardar.php",
            type:"POST",
            dateType:"html",
            data:{res, incidencia},
            success:function(respue){
                Sonido("Gracias por registrar su entrada");
                alertify.success("Gracias por registrar su entrada");
                personadato(res, mensajefin, colorfin);
                actividad  ="Se ha registrado una entrada para la clave "+clave;
                var idUser=$("#inicioIdusuario").val();
                log(actividad,idUser);
            },
            error:function(xhr,status){
                alert("Error en metodo AJAX"); 
                reject("Error en el metodo AJAX Entrada");
            },
        });

}

function rHorario(res){
    return new Promise((resolve, reject) => {
        $.ajax({
            url:"../mAsistencias/rHorario2.php",
            type:"POST",
            dataType:"json",
            data:{res},
            success:function(respu){
                resolve(respu.result);
            },error:function(xhr,status){
                alert("Error en metodo AJAX"); 
                reject("Error en el metodo AJAX Horario");
            },
        });
    });
}

function rInciencia(Dia, now, horario, tipo){
    switch (Dia) {
        case 'Lunes':
            var entrada = new Date(now.toDateString() + " " + horario.l_entrada);
            var salida = new Date(now.toDateString() + " " + horario.l_salida);
            break;
        case 'Martes':
            var entrada = new Date(now.toDateString() + " " + horario.m_entrada);
            var salida = new Date(now.toDateString() + " " + horario.m_salida);
            break;
        case 'Miercoles':
            var entrada = new Date(now.toDateString() + " " + horario.mi_entrada);
            var salida = new Date(now.toDateString() + " " + horario.mi_salida);
            break;
        case 'Jueves':
            var entrada = new Date(now.toDateString() + " " + horario.j_entrada);
            var salida = new Date(now.toDateString() + " " + horario.j_salida);
            break;
        case 'Viernes':
            var entrada = new Date(now.toDateString() + " " + horario.v_entrada);
            var salida = new Date(now.toDateString() + " " + horario.v_salida);
            break;
        case 'Sabado':
            var entrada = new Date(now.toDateString() + " " + horario.s_entrada);
            var salida = new Date(now.toDateString() + " " + horario.s_salida);
            break;
        case 'Domingo':
            var entrada = new Date(now.toDateString() + " " + horario.d_entrada);
            var salida = new Date(now.toDateString() + " " + horario.d_salida);
            break;
        default:
            return false;
            break;
    }

    var mensaje;
    var color;

    if (tipo == "Entrada") {
        if (now.getTime() < (entrada.getTime() - 1000*60*10) || now.getTime() > salida.getTime() - 1000*60*5){
            mensaje = "Fuera de rango";
            color = "azul";
        }else if (now.getTime() >= (entrada.getTime() - 1000*60*10) && now.getTime() <= (entrada.getTime() + 1000*60*5)) {
            mensaje = "Entrada Puntual";
            color = "verde2";
        }else if (now.getTime() >= (entrada.getTime() + 1000*60*5) && now.getTime() <= (entrada.getTime() + 1000*60*15)) {
            mensaje = "Retardo Menor";
            color = "naranja";
        }else if (now.getTime() >= (entrada.getTime() + 1000*60*15) && now.getTime() <= (salida.getTime() - 1000*60*5)){
            mensaje = "Retardo Mayor";
            color = "rojo2";
        }
    }else{ 
    if (tipo == "Salida") {
        if (now.getTime() < (salida.getTime() - 1000*60*5) || now.getTime() > (salida.getTime() + 1000*60*30)) {
            mensaje = "Fuera de rango";
            color = "azul";
        }else if (now.getTime() >= (salida.getTime() - 1000*60*5) && now.getTime() <= (salida.getTime() + 1000*60*30)) {
            mensaje = "Salida";
            color = "azul";
        }
    }
}

    return{
        mensaje,
        color
    }
}

function reloj(){
    var momentoActual = new Date();

    var hora = momentoActual.getHours();
    var minuto = momentoActual.getMinutes();
    var segundo = momentoActual.getSeconds();

    minuto = checkTime(minuto);
    segundo = checkTime(segundo);

    var horaImprimible = hora + " : " + minuto + " : " + segundo;

    $("#Time").html(horaImprimible);

    setTimeout("reloj()",1000);
}

$("#Aclave").keydown(function() {
    var valor=$(this).val();
    soloNumeros(valor);
});
$("#Aclave").keyup(function() {
    var clave = $("#Aclave").val();
    if (clave == 0) {
        $("#Estado").text("El campo clave esta vacío");
    }else{
        $("#Estado").text("");
    }
});

function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

function bienvenida(){
    alertify.success("Bienvenido al registro de asistencias", 2);
}


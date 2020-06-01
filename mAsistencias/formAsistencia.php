<?php
//Variable de Nombre
$varGral="-AS";
?>
<form onload="reloj()" id="frmAsistencia<?php echo $varGral?>">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group Reloj">
                <label for="" id="Time">hola</label>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-11 col-lg-11">
            <div class="form-group cla cent">
                <label for="Aclave" class="">Clave:</label>
                <label for="" id="Estado" class="rojo">El campo clave esta vacío</label>
                <input type="number" class="form-control " id="Aclave">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1 col-lg-1">
            <div class="form-group">
                <br>
                <label for="Son">Sonido:</label>
                <br>
                <input value="no" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="Son">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group cent">
                <label for="" id="Inci"></label>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group cent">
                <label for="" id="Datos"></label>
            </div>
        </div>
    </div>

</form>
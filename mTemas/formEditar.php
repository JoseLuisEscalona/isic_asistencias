<?php
//Variable de Nombre
$varGral="-T";
?>
<form id="frmActualizar<?php echo $varGral?>">
<input type="hidden"  id="eIdt">
<div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group">
                <label for="EnTema">Nombre del tema:</label>
                <input type="text" class="form-control " id="EnTema" autofocus required >
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EcFuente">Color de fuente:</label>
                <input type="color" class="form-control " id="EcFuente" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EcBase">Color base:</label>
                <input type="color" class="form-control activo" id="EcBase" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EcBaseFuerte">Color base fuerte:</label>
                <input type="color" class="form-control activo" id="EcBaseFuerte" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EcBorde">Color de borde:</label>
                <input type="color" class="form-control activo" id="EcBorde" required>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col text-left">
                    <button  type="button" class="btn btn-outline-danger  activo btnEspacio" id="btnCancelarA<?php echo $varGral?>">
                        <i class='fa fa-ban fa-lg'></i>
                        Cancelar
                    </button>
                </div>
                <div class="col text-center">
                    <button  type="button" class="btn btn-outline-success  activo btnEspacio" onclick="ProbartemaE(), audio()" id="btnProbarA<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Probar Tema
                    </button>
                </div>
                <div class="col text-right">
                    <button  type="submit" class="btn btn-outline-primary  activo btnEspacio" id="btnActualizar<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Actualizar Tema
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<?php
//Variable de Nombre
$varGral="-T";
?>
<form id="frmGuardar<?php echo $varGral?>">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group">
                <label for="nTema">Nombre del tema:</label>
                <input type="text" class="form-control " id="nTema" autofocus required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="cFuente">Color de fuente:</label>
                <input type="color" class="form-control " id="cFuente" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="cBase">Color base:</label>
                <input type="color" class="form-control activo" id="cBase" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="cBaseFuerte">Color base fuerte:</label>
                <input type="color" class="form-control activo" id="cBaseFuerte" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="cBorde">Color de borde:</label>
                <input type="color" class="form-control activo" id="cBorde" required>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col text-left">
                    <button  type="button" class="btn btn-outline-danger  activo btnEspacio" id="btnCancelarG<?php echo $varGral?>">
                        <i class='fa fa-ban fa-lg'></i>
                        Cancelar
                    </button>
                </div>
                <div class="col text-center">
                    <button  type="button" class="btn btn-outline-success  activo btnEspacio" onclick="Probartema()" id="btnProbar<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Probar Tema
                    </button>
                </div>
                <div class="col text-right">
                    <button  type="submit" class="btn btn-outline-primary  activo btnEspacio" id="btnGuardar<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Guardar Tema
                    </button>
                </div>
            </div>
        </div>

    </div>

</form>
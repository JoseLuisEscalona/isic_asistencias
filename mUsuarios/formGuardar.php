<?php
//Variable de Nombre
$varGral="-U";
?>
<form id="frmGuardar<?php echo $varGral?>">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="per">Persona:</label>
                <select id="per" class="select2" style="width: 100%" >

                </select>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="nombreU">Nombre de usuario:</label>
                <input type="text" class="form-control " id="nombreU" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="tem">Tema:</label>
                <select id="tem" class="select2" style="width: 100%" >

                </select>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="fCad">Fecha Caducidad:</label>
                <input type="date" class="form-control activo" id="fCad" required value="<?php echo $fecha ?>">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group">
                <h2>Permisos</h2>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input value="no" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="pDP">Datos Persona
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input value="no" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="pE"> Estado Civil
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input value="no" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="pU">Usuarios
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input value="no" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="pT">Temas
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

                <div class="col text-right">
                    <button  type="submit" class="btn btn-outline-primary  activo btnEspacio" id="btnGuardar<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Guardar Información
                    </button>
                </div>
            </div>
        </div>

    </div>

</form>
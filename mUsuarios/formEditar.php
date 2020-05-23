<?php
//Variable de Nombre
$varGral="-U";
?>
<form id="frmActualizar<?php echo $varGral?>">
<input type="hidden"  id="eIdU">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="Eper">Persona:</label>
                <select id="Eper" class="select2" style="width: 100%" disabled>

                </select>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EnombreU">Nombre de usuario:</label>
                <input type="text" class="form-control " id="EnombreU" required>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="Etem">Tema:</label>
                <select id="Etem" class="select2" style="width: 100%" >

                </select>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="form-group">
                <label for="EfCad">Fecha Caducidad:</label>
                <input type="date" class="form-control activo" id="EfCad" required value="<?php echo $fecha ?>">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="form-group">
                <h2>Permisos</h2>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="EpDP">Datos Persona
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="EpE"> Estado Civil
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="EpU">Usuarios
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="form-group">
                <input class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="EpT">Temas
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

                <div class="col text-right">
                    <button  type="submit" class="btn btn-outline-primary  activo btnEspacio" id="btnGuardar<?php echo $varGral?>">
                        <i class='fa fa-save fa-lg'></i>
                        Actualizar Información
                    </button>
                </div>
            </div>
        </div>

    </div>

</form>
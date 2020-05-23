<!-- Modal -->
<div class="modal fade" id="modalPermisos-U" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="txtTitularPermisos">Permisos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="areaImprimir3">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="form-group">
                    <input type="hidden" class="form-control-file" name="realizar" id="rea">
                    <input type="hidden" class="form-control-file" name="idPersona" id="idUsuario">
                    <input type="hidden" class="form-control-file" name="idPersona" id="Usuario">
                    <input value="" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm"  data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="MpDP">Permiso Datos Personales
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="form-group">
                    <input value="" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="MpE">Permiso Estado Civil
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="form-group">
                    <input value="" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="MpU">Permiso Usuarios
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="form-group">
                    <input value="" class="toggle-two" type="checkbox" data-toggle="toggle" data-onstyle="outline-success" data-width="60" data-size="sm" data-offstyle="outline-danger"  data-on="<i class='fa fa-check'></i> Si" data-off="<i class='fa fa-times'></i> No" id="MpT">Permiso Temas
                </div>
            </div> 
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary hor" data-dismiss="modal" id="CanPass2">Cerrar</button>
        <button id="btnGuardarPermisos" type="button" class="btn btn-primary hor" onclick="GuardarPermisos();"><i class="far fa-save"></i> Guardar</button>
      </div>
    </div>
  </div>
</div>
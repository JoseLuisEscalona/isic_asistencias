<!-- Modal -->
<div class="modal fade" id="modalCambioPass" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="modalTitle-CPass">Cambio de contraseña</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="LimpiarModalCambioPass()">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="areaImprimir">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              <div class="form-group">
                  <label for="pass">Contraseña Nueva:</label>
                  <input type="password" class="form-control " id="pass" onkeyup="validarcontra()" autofocus requiered>
              </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              <div class="form-group">
                  <label for="vpass">Verificar Contraseña:</label>
                  <input type="password" class="form-control " id="vpass" onkeyup="validarcontra()" requiered>
              </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
              <div class="form-group">
                  <H5>La contraseña debe de contener:</H5>
                  <ul>
                    <li id="Lon" class="rojo">8 o mas caracteres</li>
                    <li id="Sim" class="rojo">Las contraseñas deben de ser iguales</li>
                  </ul>
              </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="CanPass" onclick="LimpiarModalCambioPass()">Cerrar</button>
        <button type="button" class="btn btn-warning " onclick="verContraseña()" ><i class="fas fa-eye"></i> Mostrar Contraseña</button>
        <button type="button" class="btn btn-success " onclick="generar(), validarcontra()" ><i class="fas fa-random"></i> Generar Contraseña</button>
        <button id="btnGuardarPass" type="button" class="btn btn-primary" onclick="cambiarPass()" disabled><i class="far fa-save"></i> Guardar Contraseña</button>
      </div>
    </div>
  </div>
</div>
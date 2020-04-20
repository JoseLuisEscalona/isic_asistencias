<!-- Modal -->
<div class="modal fade" id="modalHorario" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog tamañomodal" role="document" >
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="txtTitularHorario">Horario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="areaImprimir2">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              <div class="form-group">
                  <input type="hidden" class="form-control-file" name="realizar" id="realizar">
                  <input type="hidden" class="form-control-file" name="idPersona" id="idPersona">
                  <input type="hidden" class="form-control-file" name="idPersona" id="Nombre">
                  <label for="turno">Turno:</label>
                  <select class="select form-control" name="" id="turno" >
                    <option value="Especial">Turno Especial</option>
                    <option value="Matutino">Turno Matutino</option>
                    <option value="Vespertino">Turno Vespertino</option>
                    <option value="Nocturno" >Turno Nocturno</option>
                  </select>
              </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              <div class="form-group">
                  <label for="htotal">Horas Totales:</label>
                  <h3 id="htotal"></h3>
              </div>
          </div>
          <div class="table-responsive">
            <table id="example1" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr class='hTabla'>
                <th scope="col">Lunes</th>
                    <th scope="col">Martes</th>
                    <th scope="col">Miercoles</th>
                    <th scope="col">Jueves</th>
                    <th scope="col">Viernes</th>
                    <th scope="col">Sabado</th>
                    <th scope="col">Domingo</th>
                </tr>
            </thead>
            <tbody>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Lentrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Lsalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Mentrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Msalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Mientrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Misalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Jentrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Jsalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Ventrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Vsalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Sentrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Ssalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
                <td>
                <div class="form-group">
                        <label for="" class="">Entrada:</label>
                        <input type="time" class="form-control" id="Dentrada" onchange="CalcularHoras()" disabled requiered>
                        <label for="">Salida:</label>
                        <input type="time" class="form-control" id="Dsalida" onchange="CalcularHoras()" disabled requiered>
                  </div>
                </td>
            </tbody>
            <tfoot>
                <tr class='hTabla'>
                    <th scope="col">Lunes</th>
                    <th scope="col">Martes</th>
                    <th scope="col">Miercoles</th>
                    <th scope="col">Jueves</th>
                    <th scope="col">Viernes</th>
                    <th scope="col">Sabado</th>
                    <th scope="col">Domingo</th>
                </tr>
            </tfoot>
            </table>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary hor" data-dismiss="modal" id="CanPass1">Cerrar</button>
        <button id="btnGuardarHorario" type="button" class="btn btn-primary hor" onclick="GuardarHorario();" disabled><i class="far fa-save"></i> Guardar</button>
      </div>
    </div>
  </div>
</div>
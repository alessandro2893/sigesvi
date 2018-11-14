
<div class="modal-dialog modal-md" id="modal_vehiculo">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">CREAR VEHICULO</h4>
    </div>


          <form  onsubmit="fn_nueva_vehiculo($('#tipo_v').val(),
                                   $('#n_veh').val(),
                                   $('#cap_pers').val(),
                                   $('#plac_v').val(),
                                   $('#marc_v').val(),
                                   $('#mod_v').val(),
                                   $('#col_v').val(),
                                   $('#kilometraje').val(),
                                   $('select#select_update_v').val())
                                   ;return false;" method="POST"  class="form-horizontal mitad" rol"form">
           <div class="modal-dialog mitad"  id="" >
            <div class="form-group">

              <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Tipo Vehiculo</label>
                     <div class="col-sm-8">
                    <input required type="text" class="form-control" onkeypress="return validarLetras(event);" style="text-transform:uppercase; font-weight: bold;"  id="tipo_v"
                      maxlength="45" autocomplete="off" >
                  </div>
            </div>

            <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">No. Vehiculo</label>
                       <div class="col-sm-8">
                      <input required type="text" onkeypress="return validarNumeros(event);"  class="form-control"  style="text-transform:uppercase; font-weight: bold;"  id="n_veh"
                        maxlength="3" autocomplete="off" >
              </div>
              </div>

          <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Capacidad Personas</label>
                     <div class="col-sm-8">
                    <input required type="text" onkeypress="return validarNumeros(event);"  class="form-control"  style="text-transform:uppercase; font-weight: bold;"  id="cap_pers"
                      maxlength="2" autocomplete="off" >
            </div>
            </div>


            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label" for="textinput">Numero Placa</label>
                <div class="col-sm-8">
              <input required type="text" class="form-control" maxlength="20" onkeypress="return validarPlaca(event);" id="plac_v" style="text-transform:uppercase; font-weight: bold;" autocomplete="off" >
            </div>
            </div>

            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label"  maxlength="45" for="textinput">Marca</label>
            <div class="col-sm-8">
              <input required type="text" maxlength="20" class="form-control"  style="text-transform:uppercase; font-weight: bold;" id="marc_v"
              style="text-transform:uppercase;" onkeypress="return validarLetras(event);" autocomplete="off" >
            </div>
              </div>

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label" for="textinput">Modelo</label>
             <div class="col-sm-8">
              <input required type="text" maxlength="20" class="form-control" onkeypress="return validarEspacioNumero(event);" style="text-transform:uppercase; font-weight: bold;" id="mod_v"
              style="text-transform:uppercase;" autocomplete="off" >
            </div>
              </div>

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label" for="textinput">Color</label>
             <div class="col-sm-8">
              <input required type="text" maxlength="20" class="form-control" onkeypress="return validarLetras(event);" style="text-transform:uppercase; font-weight: bold;" id="col_v"
              style="text-transform:uppercase;" autocomplete="off" >
            </div>
              </div>

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label"  for="textinput">Kilometraje</label>
             <div class="col-sm-8">
              <input required type="text" onkeyup="return zerofill(6,0)" value="000000" minlength="6" maxlength="7" class="form-control" onkeypress="return validarNumeros(event);" style="text-transform:uppercase; font-weight: bold;  text-align: right;" id="kilometraje"
               autocomplete="off">
            </div>
              </div>

                  <div class="form-group">                                        <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                   <div class="col-sm-8">
                  <select required name="select_update_v" style="text-transform:uppercase; font-weight: bold;" id="select_update_v"class="form-control"
                   autocomplete="off" >
                  <option value="DISPONIBLE">DISPONIBLE</option>
                  <option value="EN GIRA">EN GIRA</option>
                  <option value="EN REPARACION">EN REPARACION</option>
                  </select>
              </div>
                </div>
  </div>




      <center><div class="form-group">
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="GUARDAR"/>

        <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>

    </center>


      </form>
</div>
      <div class="modal-footer">
          <div id="msg_cambio_vehiculo">
          </div>
          </div>
      </div>
    </div>
</div>
<script src="Mantenimiento/funciones_mantenimento.js"></script>
<script>
function zerofill (pos,fill)
{
var num=$('#kilometraje').val();
$('#kilometraje').val((fill + num).slice(-6));
  // console.log( (fill + num).slice(-4) );
  // "0001"
  // alert('ENTRO');
  // var data=document.getElementById("correlativo").value;
  // console.log(data.padStart(pos, fill));
}

</script>

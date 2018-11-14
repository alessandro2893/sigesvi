
<div class="modal-dialog modal-md" id="modal_vehiculo">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">EDITAR VEHICULO</h4>
    </div>


          <form  onsubmit="fn_edit_vehiculo($('#tipo_v').val(),
                                   $('#n_veh').val(),
                                   $('#cap_pers').val(),
                                   $('#plac_v').val(),
                                   $('#marc_v').val(),
                                   $('#mod_v').val(),
                                   $('#col_v').val(),
                                   $('select#select_update_v').val(),
                                   $('#id_v').val())
                                   ;return false;" method="POST" class="form-horizontal mitad" rol"form">
            <div class="modal-dialog mitad">
            <div class="form-group">

            <input type="hidden" id="id_v" value="<?=$_POST['id']?>">

            <div class="form-group">
                   <label class="col-sm-3 control-label">Tipo Vehículo</label>
                      <div class="col-sm-8">
                    <input required type="text"  class="form-control" onkeypress="return validarLetras(event);" style="text-transform:uppercase; font-weight: bold;"  id="tipo_v"  maxlength="45"
                       autocomplete="off" value="<?=$_POST['tipo_vehiculo']?>">

                  </div>
            </div>

            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                <label class="col-sm-3 control-label">No Vehiculo</label>
                   <div class="col-sm-8">
                           <input   type="text" maxlength="2" class="form-control" onkeypress="return validarNumeros(event);" id="n_veh" style="text-transform:uppercase; font-weight: bold;"
                           autocomplete="off" value="<?=$_POST['n_vehiculo']?>">
                        </div>
                          </div>

            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                <label class="col-sm-3 control-label">Capacidad Personas</label>
                   <div class="col-sm-8">
                           <input required type="text" maxlength="2" class="form-control" onkeypress="return validarNumeros(event);" id="cap_pers" style="text-transform:uppercase; font-weight: bold;"
                           autocomplete="off" value="<?=$_POST['capacidad_personas']?>">
                        </div>
                          </div>

              <div class="form-group">
            <label class="col-sm-3 control-label">Número Placa</label>
             <div class="col-sm-8">
              <input required type="text" maxlength="8" class="form-control" onkeypress="return validarPlaca(event);"  id="plac_v" style="text-transform:uppercase; font-weight: bold;" autocomplete="off" value="<?=$_POST['placa_vehiculo']?>">

            </div>
              </div>


            <div class="form-group">
                  <label class="col-sm-3 control-label">Marca</label>
                    <div class="col-sm-8">
                    <input required type="text" maxlength="45" class="form-control" onkeypress="return validarLetras(event);" id="marc_v" style="text-transform:uppercase; font-weight: bold;" autocomplete="off" value="<?=$_POST['marca_vehiculo']?>">
                  </div>
             </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Modelo</label>
                    <div class="col-sm-8">
                  <input required type="text" maxlength="45" class="form-control" onkeypress="return validarEspacioNumero(event);" id="mod_v" style="text-transform:uppercase; font-weight: bold;" autocomplete="off" value="<?=$_POST['modelo_vehiculo']?>" >
                </div>
            </div>

            <div class="form-group">                                         <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label">Color</label>
              <div class="col-sm-8">
              <input required type="text" maxlength="45" class="form-control" onkeypress="return validarLetras(event);" id="col_v" style="text-transform:uppercase; font-weight: bold;"  autocomplete="off" value="<?=$_POST['color_vehiculo']?>" >
            </div>
             </div>

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label">Estado</label>
                       <div class="col-sm-8">
                  <select required name="select_update_v"  style="text-transform:uppercase; font-weight: bold;" id="select_update_v"class="form-control"
                   autocomplete="off" >
                   <option <?php if ($_POST['estado']=='DISPONIBLE'){?>selected<?php }; ?> value="DISPONIBLE">DISPONIBLE</option>
                   <option <?php if ($_POST['estado']=='EN_GIRA'){?>selected<?php }; ?> value="EN GIRA">EN GIRA</option>
                   <option <?php if ($_POST['estado']=='EN_REPARACION'){?>selected<?php }; ?> value="EN REPARACION">EN REPARACION</option>
                  </select>
              </div>
              </div>
  </div>




      <center><div class="form-group">
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>

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

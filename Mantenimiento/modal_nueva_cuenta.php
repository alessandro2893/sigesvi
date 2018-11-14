<div class="modal-dialog modal-md">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >CREAR CUENTA BANCARIA</h4>
    </div>


    <form onsubmit="fn_nueva_cuenta($('#bancos').val(),
                             $('select#select_insert_tipos').val(),
                             $('select#select_insert_monedas').val(),
                             $('#numero_cuentas').val(),
                             $('select#select_insert_estados').val())
                             ;return false;"  id="" method="POST" class="form-horizontal mitad" action="">
      <div class="modal-dialog mitad"  id="modal_cuenta" >
            <div class="form-group">

              <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Banco</label>
                      <div class="col-sm-8">
                      <input required type="text" class="form-control"  onkeypress="return validarEspacio(event);" style="text-transform:uppercase; font-weight: bold;" id="bancos"
                        maxlength="100" autocomplete="off" required>
              </div>
              </div>

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
              <label class="col-lg-3 control-label" for="textinput">Tipo de Cuenta</label>
            <div class="col-sm-8">
              <select required name="select_insert_tipo" style="text-transform:uppercase; font-weight: bold;" id="select_insert_tipos"class="form-control"
               autocomplete="off" >
              <option value="AHORRO">AHORRO</option>
              <option value="CHEQUES">CHEQUES</option>
              </select>
              </div>
            </div>

            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-lg-3 control-label" for="textinput">Tipo de Moneda</label>
          <div class="col-sm-8">
            <select required name="select_insert_moneda" style="text-transform:uppercase; font-weight: bold;" id="select_insert_monedas"class="form-control"
             autocomplete="off" >
            <option value="DOLAR">$(DOLAR)</option>
            <option value="LEMPIRAS">L.(LEMPIRAS)</option>
            </select>
            </div>
          </div>

          <div class="form-group">
                 <label class="col-sm-3 control-label" for="textinput">Número de Cuenta</label>
                  <div class="col-sm-8">
                  <input required type="text" class="form-control"  onkeypress="return validarNumeros(event);" style="text-transform:uppercase; font-weight: bold;"  id="numero_cuentas"
                    maxlength="25" autocomplete="off" required>
          </div>
          </div>

          <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
          <label class="col-lg-3 control-label" for="textinput">Estado</label>
        <div class="col-sm-8">
          <select required name="select_insert_estado" style="text-transform:uppercase; font-weight: bold;" id="select_insert_estados"class="form-control"
           autocomplete="off" >
          <option value="ACTIVO">ACTIVO</option>
          <option value="INACTIVO">INACTIVO</option>
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
              <div id="msg_cambio_cuentas">
            </div>
          </div>
        </div>
       </div>
    </div>
    <script src="Mantenimiento/funciones_mantenimento.js"></script>

<div class="modal-dialog modal-md" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">CREAR DEPARTAMENTO</h4>
    </div>


            <form  onsubmit="fn_nueva_departamento($('#departamento_d').val(),
                                     $('#select_insert_estado').val())
                                     ;return false;" action="" method="POST" class="form-horizontal mitad" rol"form">
           <div class="modal-dialog mitad"  id="" >
            <div class="form-group">

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                <label class="col-sm-3 control-label" for="textinput">Departamento</label>
                <div class="col-sm-8">
                  <input required type="text" class="form-control" onkeypress="return validarEspacio(event);"  style="text-transform:uppercase; font-weight: bold;"  id="departamento_d"
                      maxlength="45" autocomplete="off" >
            </div>
              </div>



              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                <label class="col-sm-3 control-label" for="textinput">Estado</label>
                <div class="col-sm-8">
                  <select required name="select_update_d"   style="text-transform:uppercase; font-weight: bold;" id="select_insert_estado"class="form-control"
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
          <div id="msg_encender_departamento">
          </div>
      </div>
    </div>
    </div>

</div>
<script src="Mantenimiento/funciones_mantenimento.js"></script>

<div class="modal-dialog modal-md">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" > CREAR DEPENDENCIA DE EMPLEADO</h4>
    </div>


    <form onsubmit="fn_nueva_dependencia($('#depen').val(),
                                       $('select#select_insert_dependencia').val())
                                       ;return false;" id="" method="POST" class="form-horizontal mitad" action="">
      <div class="modal-dialog mitad"  id="modal_dependencia" >
            <div class="form-group">

            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Dependencia</label>
                   <div class="col-sm-8">
                    <input required type="text" class="form-control" onkeypress="return validarEspacio(event)"  style="text-transform:uppercase; font-weight: bold;"  id="depen"
                      maxlength="60" autocomplete="off" >
            </div>
            </div>



         <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
         <label class="col-lg-3 control-label" for="textinput">Estado</label>
       <div class="col-sm-8">
         <select required name="select_update_dependencia" style="text-transform:uppercase; font-weight: bold;" id="select_insert_dependencia"class="form-control"
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
        <div id="msg_cambio_dependencia">
      </div>
          </form>
    </div>

        </div>
       </div>
    </div>
    <script src="Mantenimiento/funciones_mantenimento.js"></script>

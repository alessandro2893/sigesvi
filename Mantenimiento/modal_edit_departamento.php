
<div class="modal-dialog modal-md" id="">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">EDITAR DEPARTAMENTO</h4>
    </div>

          <form  action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad">
            <div class="form-group">

              <input type="hidden" id="id_depto1" value="<?=$_POST['id']?>">

          <div class="form-group">
              <label class="col-sm-3 control-label" for="textinput">Departamento</label>
              <div class="col-sm-8">
                <input disabled type="text" maxlength="45" class="form-control" onkeypress="return validarEspacio(event);"  style="text-transform:uppercase; font-weight: bold;"  id="depto1"   placeholder="<?=$_POST['departamento']?>"
                autocomplete="off" value="<?=$_POST['departamento']?>">
            </div>
        </div>



            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Estado</label>
                    <div class="col-sm-8">
                      <select name="select_update_departamento" style="text-transform:uppercase; font-weight: bold;" id="select_update_departamento"class="form-control ">
                          <option value="ACTIVO">ACTIVO</option>
                          <option value="INACTIVO">INACTIVO</option>

                      </select>
                    </div>
            </div>




  </div>


      <center><div class="form-group">
              <input id="btn_actualizar" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_edit_departamento($('#depto1').val(),
                                        $('select#select_update_departamento').val(),
                                        $('#id_depto1').val());return false;" value="ACTUALIZAR"/>

              <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
              </div></center>

      </form>

    <div class="modal-footer">
        <div id="msg_cambia">
      </div>
     </div>
    </div>
   </div>
  </div>
   <script src="Mantenimiento/funciones_mantenimento.js"></script>

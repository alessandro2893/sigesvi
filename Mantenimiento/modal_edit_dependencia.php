
<div class="modal-dialog modal-md" id="modal_dependencia">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">EDITAR DEPENDENCIA</h4>
    </div>


        <form  action="" method="POST" class="form-horizontal mitad" rol"form">
            <div class="modal-dialog mitad"  id="" >
           <div class="form-group">


            <input type="hidden" class="form-control"  style="text-transform:uppercase;"  id="id_depend"
                 placeholder="<?=$_POST['id']?>"
                       autocomplete="off" value="<?=$_POST['id']?>">


                       <div class="form-group">
                              <label class="col-sm-3 control-label" for="textinput">Dependencia</label>
                               <div class="col-sm-8">
                          <input  type="text" class="form-control"  onkeypress="return validarEspacio(event)" style="text-transform:uppercase; font-weight: bold;"  id="depe"
                            maxlength="100"   autocomplete="off" value="<?=$_POST['dependencia']?>" disabled>
                       </div>
                       </div>

                  <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                  <div class="col-sm-8">
                  <select name="select_update_dependencia" style="text-transform:uppercase; font-weight: bold;" id="select_estado_dependencia" class="form-control"
                   autocomplete="off">
                  <option <?php if ($_POST['estado']=='ACTIVO'){?>selected<?php }; ?> value="ACTIVO">ACTIVO</option>
                  <option  <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>
                  </select>
              </div>
          </div>
       </div>
      <center><div class="form-group">
<!-- pasar los valores de id que estan en la modal de aqui arriba ID -->
              <input id="btn_actualizar" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_edit_dependencia(  $('select#select_estado_dependencia').val(),
                                            $('#id_depend').val())
                                            ;return false;" value="ACTUALIZAR"/>


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

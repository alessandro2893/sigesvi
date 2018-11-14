
<div class="modal-dialog modal-md" id="modal_zona">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">EDITAR ZONA</h4>
    </div>


        <form   action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad"  >
            <div class="form-group">

            <input type="hidden" class="form-control"  id="id_z"   autocomplete="off" value="<?=$_POST['id']?>">


           <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Nombre Zona</label>
                    <div class="col-sm-8">
                    <input disabled="" type="text" class="form-control" onkeypress="return validarEspacioNumero(event)" style="text-transform:uppercase; font-weight: bold;" id="nombre_z"
                      maxlength="45"
                       autocomplete="off" value="<?=$_POST['nombre_zona']?>">

                   </div>
            </div>

                <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                      <div class="col-sm-8">
                  <select <?=$_POST['es']?>  style="text-transform:uppercase; font-weight: bold;" id="select_update_z"class="form-control"  autocomplete="off" >
                    <!-- <option <?php if ($_POST['estado']=='ESPERANDO ASIGNACION DE CATEGORIA'){?>selected <?php }; ?> value="ESPERANDO ASIGNACION DE CATEGORIA">ESPERANDO ASIGNACION DE CATEGORIA</option> -->
                   <option <?php if ($_POST['estado']=='ACTIVO'){?>selected <?php }; ?> value="ACTIVO">ACTIVO</option>
                   <option <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>


                  </select>
              </div>
  </div>
</div>



      <center><div class="form-group">
              <input id="btn_actualizar" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_edit_zona($('#nombre_z').val(),
                                       $('select#select_update_z').val(),
                                       $('#id_z').val())
                                       ;return false;" value="ACTUALIZAR"/>

        <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
          </center>
      </form>
</div>
      <div class="modal-footer">
          <div id="msg_cambio_zona">
          </div>
      </div>
    </div>
  </div>
</div>
<script src="assets/js/validaciones.js"></script>

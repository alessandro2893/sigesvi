<?php
//require_once("../php/admin.class.php");
//$usuarios = new administracion();
//$estado = $usuarios->get_modal_estado($_POST['usuario']);
//echo $_POST['usuario'];

?>

<div class="modal-dialog modal-md" id="modal_cuentas">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">EDITAR CUENTA BANCARIA</h4>
    </div>


        <form onsubmit="fn_edit_cuentas(  $('#numero').val(),
                                    $('select#select_estado_cuenta').val(),
                                      $('#id_cta').val())
                                      ;return false;" method="POST" class="form-horizontal mitad" rol"form">
            <div class="modal-dialog mitad"  id="" >
           <div class="form-group">


            <input type="hidden" class="form-control"  style="text-transform:uppercase;"  id="id_cta"
                 placeholder="<?=$_POST['id']?>"
                       autocomplete="off" value="<?=$_POST['id']?>">

                       <div class="form-group">
                              <label class="col-sm-3 control-label" for="textinput">Número de cuenta</label>
                               <div class="col-sm-8">
                          <input required type="text" class="form-control" onkeypress="return validarNumeros(event);" style="text-transform:uppercase; font-weight: bold;"  id="numero"
                            maxlength="45"   autocomplete="off" value="<?=$_POST['numero']?>" >
                       </div>
                       </div>


                  <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                  <div class="col-sm-8">
                  <select name="select_update_cuenta" style="text-transform:uppercase; font-weight: bold;" id="select_estado_cuenta" class="form-control"
                   autocomplete="off">
                  <option <?php if ($_POST['estado']=='ACTIVO'){?>selected<?php }; ?> value="ACTIVO">ACTIVO</option>
                  <option  <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>
                  </select>
              </div>
          </div>
       </div>
      <center><div class="form-group">
<!-- pasar los valores de id que estan en la modal de aqui arriba ID -->
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>


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

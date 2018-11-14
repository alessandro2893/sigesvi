
<div class="modal-dialog modal-md" id="modal_categoria">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >EDITAR CATEGORÍA DE EMPLEADO</h4>

    </div>


        <form  onsubmit="fn_edit_categoria($('#grupo').val(),
                                 $('#compre').val(),
                                 $('#nivel').val(),
                                 $('#cate').val(),
                                 $('select#select_update_categoria').val(),
                                 $('#id_cate').val())
                                 ;return false;" method="POST" class="form-horizontal mitad" rol"form">
            <div class="modal-dialog mitad"  id="" >
           <div class="form-group">


            <input type="hidden" class="form-control" id="id_cate" value="<?=$_POST['id']?>">

                       <div class="form-group">
                                  <label class="col-sm-3 control-label" for="textinput">Categoría</label>
                               <div class="col-sm-8">
                          <input  type="text" class="form-control" onkeypress="return validarLetras(event)"  style="text-transform:uppercase; font-weight: bold;"  id="cate"
                            maxlength="3" required  autocomplete="off" value="<?=$_POST['categoria']?>" disabled>
                  </div>
                    </div>


           <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Grupo Ocupacional</label>
                    <div class="col-sm-8">
                    <input type="text" required class="form-control" onkeypress="return validarEspacio(event)" style="text-transform:uppercase; font-weight: bold;"  id="grupo"
                      maxlength="45"  autocomplete="off" value="<?=$_POST['grupo']?>">
                    </div>
                      </div>




          <div class="form-group">                                  <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-sm-3 control-label" for="textinput">Nivel Organizativo</label>
               <div class="col-sm-8">
              <input type="text" class="form-control" required onkeypress="return validarEspacioComa(event)"style="text-transform:uppercase; font-weight: bold;" id="nivel"
              style="text-transform:uppercase;"   autocomplete="off" maxlength="45"  value="<?=$_POST['nivel']?>">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-3 control-label" maxlength="100" for="textinput">Comprende</label>
            <div class="col-sm-8">
              <!-- <textarea class="form-control" rows="3" id="comprende"></textarea>  -->
              <input type="text" maxlength="400" required class="form-control" onkeypress="return validarEspacioComaGuion(event)" style="text-transform:uppercase; font-weight: bold;" id="compre" style="text-transform:uppercase;" autocomplete="off"
              value="<?=$_POST['comprende']?>">
            </div>
          </div>

                <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                  <div class="col-sm-8">
                  <select name="select_update_categoria" required style="text-transform:uppercase; font-weight: bold;" id="select_update_categoria" class="form-control"
                   autocomplete="off">
                  <option <?php if ($_POST['estado']=='ACTIVO'){?>selected<?php }; ?> value="ACTIVO">ACTIVO</option>
                  <option  <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>
                  </select>
              </div>
          </div>
       </div>
      <center><div class="form-group">
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>


        <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>

      </div></center>
      <div id="msg_cambio_categoria">
    </div>
        </form>

      </div>
    </div>
</div>
<script src="Mantenimiento/funciones_mantenimento.js"></script>

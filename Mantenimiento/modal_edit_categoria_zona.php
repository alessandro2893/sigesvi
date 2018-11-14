<div class="modal-dialog modal-md">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">EDITAR CATEGORÍA ZONA</h4>
    </div>


        <form   onsubmit="fn_edit_cate_zona($('#id_cate_z').val(),
                                             $('#id_zona_fk').val(),
                                             $('#id_categoria_fk').val(),
                                             $('#pcorto').val(),
                                             $('#plargo').val(),
                                             $('#estado_cate_z').val())
                                                 ;return false;"  method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad"  >
            <div class="form-group">

            <input type="hidden" id="id_cate_z" value="<?=$_POST['id']?>">
            <input type="hidden" id="id_zona_fk" value="<?=$_POST['idzona']?>">
            <input type="hidden" id="id_categoria_fk" value="<?=$_POST['idcate']?>">




           <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Zona</label>
                    <div class="col-sm-8">
                    <input required disabled="" type="text" class="form-control" onkeypress="return validarEspacioNumero(event)"  style="text-transform: uppercase; font-weight: bold;" id="zona"
                      maxlength="45"  autocomplete="off" value="<?=$_POST['nombre_zona']?>">

                   </div>
            </div>

            <div class="form-group">
                    <label class="col-sm-3 control-label" for="textinput">Categoría</label>
                     <div class="col-sm-8">
                     <input required disabled type="text" class="form-control" onkeypress="return validarLetras(event)"  style="text-transform: uppercase; font-weight: bold;" id="cate_z"
                       maxlength="45"
                        autocomplete="off" value="<?=$_POST['categoria']?>">

                    </div>
             </div>
             <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Periodo Corto</label>
                      <div class="col-sm-8">
                      <input required type="text" class="form-control"   style="text-transform: uppercase; font-weight: bold;" id="pcorto"
                        maxlength="16" onkeypress="return formatMiles(event);"
                         autocomplete="off" value="<?=$_POST['periodo_corto']?>">

                     </div>
              </div>


              <div class="form-group">
                      <label class="col-sm-3 control-label" for="textinput">Periodo Largo</label>
                       <div class="col-sm-8">
                       <input required type="text" class="form-control"   style="text-transform: uppercase; font-weight: bold;"  id="plargo"
                         maxlength="16"
                          autocomplete="off" value="<?=$_POST['periodo_largo']?>">

                      </div>
               </div>

                <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                      <div class="col-sm-8">
                  <select required style="text-transform:uppercase; font-weight: bold;" id="estado_cate_z"   class="form-control"  autocomplete="off" >
                   <option <?php if ($_POST['estado']=='ACTIVO'){?>selected<?php }; ?> value="ACTIVO">ACTIVO</option>
                   <option <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>
                  </select>
              </div>
  </div>
</div>


      <center><div class="form-group">
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>

        <button type="button" class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
          </center>
      </form>
</div>
      <div class="modal-footer">
          <div id="msg_cambio_cate_zona">
          </div>
      </div>
    </div>
  </div>
</div>




<!-- <script type="text/javascript">

$("#pcorto").on({
  "focus": function (event) {
      $(event.target).select();
  },
  "keyup": function (event) {
      $(event.target).val(function (index, value ) {
          return value.replace(/\D/g, "")
                      .replace(/([0-9])([0-9]{2})$/, '$1.$2')
                      // .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
      });
  }
});






// $("#plargo").on({
//   "focus": function (event) {
//       $(event.target).select();
//   },
//   "keyup": function (event) {
//       $(event.target).val(function (index, value ) {
//           return value.replace(/\D/g, "")
//                       .replace(/([0-9])([0-9]{2})$/, '$1.$2')
//                       .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
//       });
//   }
// });
</script> -->

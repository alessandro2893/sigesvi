
<div class="modal-dialog modal-md">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >CREAR CATEGORÍA DE EMPLEADOS</h4>
    </div>


    <form onsubmit="fn_nueva_categoria($('#grupo').val(),
                                       $('#compre').val(),
                                       $('#nivel').val(),
                                       $('#cate').val(),
                                       $('select#select_update_categoria').val())
                                       ;return false;" id="" method="POST" class="form-horizontal mitad" action="">
      <div class="modal-dialog mitad"  id="modal_categoria" >
            <div class="form-group">



            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Categoría</label>
                    <div class="col-sm-8">
                    <input required type="text" class="form-control"  onkeypress="return validarLetras(event);" style="text-transform:uppercase; font-weight: bold; "  id="cate"
                      maxlength="5" autocomplete="off" required>
            </div>
            </div>

            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Grupo Ocupacional</label>
                   <div class="col-sm-8">
                    <input required type="text" class="form-control" onkeypress="return validarEspacio(event)"  style="text-transform:uppercase; font-weight: bold; "  id="grupo"
                      maxlength="45" autocomplete="off" >
            </div>
            </div>



            <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
            <label class="col-lg-3 control-label" maxlength="45" for="textinput">Nivel Organizativo</label>
         <div class="col-sm-8">
              <input required type="text" class="form-control" onkeypress="return validarEspacioComa(event)" style="text-transform:uppercase; font-weight: bold; " id="nivel"
              style="text-transform:uppercase;" autocomplete="off" >
            </div>
         </div>

         <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
           <label class="col-sm-3 control-label" for="textinput">Comprende</label>
           <div class="col-sm-8">  <!-- <textarea class="form-control" rows="3" id="comprende"></textarea>  -->
             <input required type="text" maxlength="100"  class="form-control" onkeypress="return validarEspacioComaGuion(event)" id="compre" style="text-transform:uppercase; font-weight: bold; " autocomplete="off" >
           </div>
         </div>

         <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
         <label class="col-lg-3 control-label" for="textinput">Estado </label>
       <div class="col-sm-8">
         <select required name="select_update_categoria" style="text-transform:uppercase; font-weight: bold; " id="select_update_categoria"class="form-control"
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
        <div id="msg_cambio_categoria">
        </div>
          </form>
    </div>

        </div>
       </div>
    </div>
    <script src="Mantenimiento/funciones_mantenimento.js"></script>





<script>

</script>

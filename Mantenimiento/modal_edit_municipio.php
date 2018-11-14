<?php
require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_zona, nombre_zona FROM tbl_man_zonas group by nombre_zona ORDER BY id_zona";
$query = mysqli_query($mysqli,$sentencia);
?>
<div class="modal-dialog modal-md" id="modal_catalogo">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">EDITAR MUNICIPIO</h4>
    </div>



            <form  action="" method="POST" class="form-horizontal mitad" rol"form">
           <div class="modal-dialog mitad"  id="modal_categoria" >
            <div class="form-group">


              <input type="hidden" class="form-control"    id="id_muni"
                 placeholder="<?=$_POST['id']?>"
                       autocomplete="off" value="<?=$_POST['id']?>">



                       <div class="form-group">
                              <label class="col-sm-3 control-label" for="textinput">Departamento</label>
                              <div class="col-sm-8">
              <input disabled autofocus type="text" class="form-control" onkeypress="return validarEspacio(event);" style="text-transform:uppercase; font-weight: bold;"  id="departamento"  maxlength="45" placeholder="<?=$_POST['depto']?>"
               autocomplete="off" value="<?=$_POST['depto']?>">
            </div>
            </div>

            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Municipio</label>
                    <div class="col-sm-8">
              <input autofocus type="text" disabled class="form-control" onkeypress="return validarEspacio(event);" style="text-transform:uppercase; font-weight: bold;"  id="municipio_m"  maxlength="45" placeholder="<?=$_POST['municipio']?>"
               autocomplete="off" value="<?=$_POST['municipio']?>">
            </div>
            </div>


            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Estado</label>
                    <div class="col-sm-8">
            <select name="select_update_departamento" style="text-transform:uppercase; font-weight: bold;" id="select_update_municipio"class="form-control ">
                  <option <?php if ($_POST['estado']=='ACTIVO'){?>selected<?php }; ?> value="ACTIVO">ACTIVO</option>
                  <option <?php if ($_POST['estado']=='INACTIVO'){?>selected<?php }; ?> value="INACTIVO">INACTIVO</option>

          </select>
            </div>
              </div>


              <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Zona</label>
                      <div class="col-sm-8">
                <select class="form-control" style="text-transform:uppercase; font-weight: bold;" id="select_zona">
                  <?php
                      while ($fila= mysqli_fetch_array($query)){ ?>
                      <option  value="<?=$fila['id_zona']?>"><?=$fila['nombre_zona']?></option>
                  <?php }; ?>
                </select>
            </div>
       </div>
  </div>


     <!-- mierda esta tiene no importa los id solo el de la funcion tiene que ser igual en el .js -->
      <center><div class="form-group">
              <input id="btn_actualizar" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_edit_municipio($('#municipio_m').val(),
                                        $('select#select_update_municipio').val(),
                                        $('select#select_zona').val(),
                                        $('#departamento').val(),
                                        $('#id_muni').val());return false;" value="ACTUALIZAR"/>

              <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>

           </center>
            </div>
      </form>
    <div class="modal-footer">
        <div id="msg_cambia">
         </div>
      </div>
     </div>
    </div>
  </div>
</div>
    <script src="Mantenimiento/funciones_mantenimento.js"></script>

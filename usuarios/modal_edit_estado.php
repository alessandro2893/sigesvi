<?php
require_once("../php/admin.class.php");
require_once("../assets/php/conexion.php");
$usuarios = new administracion();
$fecha_max = $usuarios->dias_activacion();
$fecha_actual = date("Y-m-d");

$sentencia = "SELECT id_rol, rol FROM tbl_man_roles";
$query = mysqli_query($mysqli,$sentencia);

?>
<div class="modal-md modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">EDITAR USUARIO <?=$_POST['usuario']?></h4>
    </div>


    <div class="modal-body">
      <form  onsubmit="fn_edita_usuario($('select#roles').val(),$('select#select_update_usuario_estado').val());return false" class="form-inline" rol"form">
        <input type="hidden" id="estado_usuario" value="<?=$_POST['estado']?>">
        <input type="hidden" id="tipo_usuario" value="<?=$_POST['tipo_us']?>">

          <div class="row">
              <div class="col-md-5">
                  <label for="">Nombre de Usuario</label><br>
                  <input disabled style="text-transform: uppercase;  font-weight: bold;" value="<?=$_POST['usuario']?>" id="input_edit_usuario" type="text"
                  class="form-control" autocomplete="off"  maxlength="20">

                </div>


                <div class="col-md-6">
                  <label for="">Correo Electronico</label><br>
                  <input  value="<?=$_POST['correo']?>" id="edit_correo_usuario" type="email"
                  class="form-control" style=" font-weight: bold;width: 326px; " autocomplete="off" required maxlength="45">
                  </div>
          </div>

          <br>

          <div class="row">
            <div class="col-md-4">
              <label for="">Fecha Vencincimiento</label><br>
              <input id="f_vencimiento_edit" style=" font-weight: bold;"  class="form-control" required type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" value="<?=$_POST['f_vencimiento']?>">
            </div>

            <div class="col-sm-4">
             <label  for="textinput">Rol Asignado</label> <br>
              <select class="form-control"  id="roles" style=" font-weight: bold;" >

                          <?php
                              while ($fila= mysqli_fetch_array($query)){ ?>
                              <option value="<?=$fila['id_rol']?>"><?=$fila['rol']?></option>
                          <?php }; ?>
                          </select>
                   </div>

                   <div class="col-md-4">
                     <label for="">Estado de Usuario</label><br>
                       <select required id="select_update_usuario_estado" class="form-control " style=" font-weight: bold;">
                         <option <?php if ($_POST['estado']=='A'){?>selected<?php }; ?> value="A">ACTIVO</option>
                         <option <?php if ($_POST['estado']=='I'){?>selected<?php }; ?> value="I">INACTIVO</option>
                         <option <?php if ($_POST['estado']=='B'){?>selected<?php }; ?> value="B">BLOQUEADO</option>
                     </select>
                 </div>
            </div>

          <br>

         <center>
            <div class="row">
              <div class="form-group">
                <input type="submit" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>

                <button type="button" class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
             </div>
            </div>
        </center>

        <div class="row">
          <div id="msg_cambio_estado">
          </div>
        </div>
      </form>
    </div>

  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
    $("#select_update_usuario").val( $("#estado_usuario").val() );
    $("#select_insert_tipo_us").val( $("#tipo_usuario").val() );

  });
</script>

<?php
require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_zona, nombre_zona FROM tbl_man_zonas group by nombre_zona ORDER BY id_zona";
$query = mysqli_query($mysqli,$sentencia);
$sentencia2 = "SELECT id_departamento, departamento FROM tbl_man_departamento";
$query2 = mysqli_query($mysqli,$sentencia2);


?>

<div class="modal-dialog modal-md" id="modal_municipio">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" id="modal_man_nombre">CREAR MUNICIPIO</h4>
    </div>



            <form onsubmit="fn_nueva_municipio(
                                     $('#select_departamento').val(),
                                     $('#municipio_mm').val(),
                                     $('#select_zona').val(),
                                     $('#select_update_muni').val())
                                     ;return false;" action="" method="POST"class="form-horizontal mitad" rol"form">
            <div class="modal-dialog mitad"  id="modal_categoria" >
            <div class="form-group">

              <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Departamento</label>
                      <div class="col-sm-8">
              <select required class="form-control" style="text-transform:uppercase; font-weight: bold;"  id="select_departamento" >
                      <?php
                       while ($fila= mysqli_fetch_array($query2)){ ?>
                        <option value="<?=$fila['id_departamento']?>"><?=$fila['departamento']?></option>
                     <?php }; ?>
             </select>
              </div>
                </div>

              <div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Municipio</label>
                      <div class="col-sm-8">
                    <input required type="text" class="form-control" onkeypress="return validarEspacio(event);" style="text-transform:uppercase; font-weight: bold;"  id="municipio_mm"
                      maxlength="45" autocomplete="off" >
            </div>
              </div>


            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Zona para Municipio</label>
                    <div class="col-sm-8">
              <select required class="form-control" style="text-transform:uppercase; font-weight: bold;"  id="select_zona" >
                      <?php
                       while ($fila= mysqli_fetch_array($query)){ ?>
                        <option value="<?=$fila['id_zona']?>"><?=$fila['nombre_zona']?></option>
                     <?php }; ?>
             </select>
              </div>
                </div>

                <div class="form-group">
                       <label class="col-sm-3 control-label" for="textinput">Estado</label>
                        <div class="col-sm-8">
                  <select required style="text-transform:uppercase; font-weight: bold;" id="select_update_muni"class="form-control"
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
      </form>
</div>
      <div class="modal-footer">
          <div id="msg_encender_municipio">
          </div>
      </div>
    </div>
   </div>
</div>

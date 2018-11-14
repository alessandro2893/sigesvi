<?php
require_once("../php/admin.class.php");
$edit_pantalla = new administracion();
$permisos = $edit_pantalla->traer_patalla_rol_edit($_POST['id']);
//print_r($valores_edit);
    $permiso_insertar = $permisos['permiso_insertar'];
    $permiso_actualizar = $permisos['permiso_actualizar'];
    $permiso_consultar = $permisos['permiso_consultar'];
?>

<div class="panel panel-info modal-dialog modal-lg">
  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <div class="panel-heading" style="text-transform:uppercase; font-weight: bold;" >ACTUALIZAR PERMISOS PARA EL ROL <?=$_POST['rol']?> </div>

    <div class="panel-body">
      <input type="hidden" id="id_robj" value="<?=$_POST['id']?>">
      <input type="hidden" id="rol" value="<?=$_POST['rol']?>">
              <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
                  <thead>
                      <tr>
                        <th><center>Nombre Objeto</center></th>
                        <th><center>Permiso Insertar</center></th>
                        <th><center>Permiso Consultar</center></th>
                        <th><center>Permiso Actualizar</center></th>
                        <th><center>Estado</center></th>
                      </tr>
                  </thead>
                  <tbody>
                            <td ><center><?=$_POST['objeto_afectado']?></center></td>
                            <td><center><select class="form-control" style="text-transform:uppercase; font-weight: bold;" id="permiso_insertar">
                              <option <?php if ($permiso_insertar=='1'){?>selected<?php }; ?> value="1">SI</option>
                              <option <?php if ($permiso_insertar=='0'){?>selected<?php }; ?> value="0">NO</option>
                            </select></center></td>
                             <td><center><select class="form-control" style="text-transform:uppercase; font-weight: bold;" id="permiso_consultar">
                               <option <?php if ($permiso_consultar=='1'){?>selected<?php };?> value="1">SI</option>
                               <option <?php if ($permiso_consultar=='0'){?>selected<?php };?> value="0">NO</option>
                             </select></center></td>
                             <td><center><select class="form-control"style="text-transform:uppercase; font-weight: bold;" id="permiso_actualizar">
                               <option <?php if ($permiso_actualizar=='1'){?>selected<?php };?> value="1">SI</option>
                               <option <?php if ($permiso_actualizar=='0'){?>selected<?php };?> value="0">NO</option>
                             </select></center></td>
                             <td><center><select class="form-control" style="text-transform:uppercase; font-weight: bold;"id="estado_rolobj">
                               <option <?php if ($_POST['estado_rol_obj']=='ACTIVO'){?>selected<?php }; ?> value="A">ACTIVO</option>
                               <option <?php if ($_POST['estado_rol_obj']=='INACTIVO'){?>selected<?php }; ?> value="I">INACTIVO</option>
                             </select></center></td>
                  </tbody>
              </table>
                <div class="form-group">
              <center><input id="btn_actualizar" type="button" class="btn btn-success" href="javascript:;"
                            onclick="fn_actualizar_permisos($('#permiso_insertar').val(),
                                                     $('#permiso_consultar').val(),
                                                     $('#permiso_actualizar').val(),
                                                     $('#estado_rolobj').val(),
                                                     $('#rol').val(),
                                                     $('#id_robj').val())
                                                     ;return false;" value="ACTUALIZAR"/>
               <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button></center>
                </div>

                <div id="msg_permisos">
                </div>
    </div>
  </div>

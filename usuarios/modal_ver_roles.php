<?php
require_once("../php/admin.class.php");
$tabla = new administracion();
$tabla_roles = $tabla->get_tabla_roles($_POST['id']);
//print_r($traer_tabla_permisos);
//echo($_POST['id_us']);
?>
<div class="panel panel-info modal-dialog modal-lg">
  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <div class="panel-heading" style="text-transform:uppercase; font-weight: bold;" > PANTALLAS PARA EL ROL <?=$_POST['tipo_rol']?> </div>

    <div class="panel-body">
      <?php if ($tabla_roles->num_rows){ ?>
              <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
                  <thead>
                      <tr>
                        <th><center>#</center></th>
                        <th><center>Nombre  Pantalla</center></th>
                        <th><center>Permiso Insertar</center></th>
                        <th><center>Permiso Consultar</center></th>
                        <th><center>Permiso Actualizar</center></th>
                        <th><center>Estado</center></th>
                      </tr>
                  </thead>
                  <tbody>
    <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                    <?php
                    $i=0;

                    while(@$row = mysqli_fetch_assoc(@$tabla_roles)){?>
                         <tr class="">
                             <td><center><?=$i+1;$i++;?></center></td>
                             <td><center><?=$row['objeto_afectado'];?></center></td>
                             <?php if ($row['permiso_insertar']==1){ ?><td><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>
                             <?php if ($row['permiso_consultar']==1){ ?><td><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>
                             <?php if ($row['permiso_actualizar']==1){ ?><td><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>

                             <?php if ($row['estado_rol_obj']=='A'){ ?>
                               <td id="estado_objeto<?=$row['id_objeto']?>" class="valor_estado_rol"><center><span value="ACTIVO" class="label label-success label">ACTIVO</span></center></td>
                             <?php }else { ?>
                               <td id="estado_objeto<?=$row['id_objeto']?>" class="valor_estado_rol"><center><span value="INACTIVO" class="label label-danger label">INACTIVO</span></center></td>
                             <?php } ?>
                       <?php }?>
                  </tbody>
              </table>

              <?php }else {  ?>
                <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>Rol de usuario no tiene objetos asignados</strong></center></div>
                <?php } ?>
                <div class="form-group">
                <center><button type="button" id="cerrar_modal"class="btn btn-success" data-dismiss="modal">CERRAR</button></center>
                </div>

    </div>
  </div>

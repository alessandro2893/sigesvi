<?php
require_once("../php/admin.class.php");
$tabla = new administracion();
$traer_tabla_permisos = $tabla->traer_tabla_permisos($_POST['rol']);
// print_r($traer_tabla_permisos);
?>
  <?php if (isset($_POST['id_rol']) AND ($_POST['id_rol']>0)) { ?>
  <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="roles-editar-dt">
      <thead>
          <tr>
            <th><center>#</center></th>
            <th><center>Nombre Pantalla</center></th>
            <th><center>Insertar</center></th>
            <th><center>Consultar</center></th>
            <th><center>Actualizar</center></th>
            <th><center>Estado</center></th>
            <th><center>Editar</center></th>
          </tr>
      </thead>
      <tbody>
<!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
        <?php
        $i=0;
             while($row = mysqli_fetch_assoc($traer_tabla_permisos)){?>
                  <tr class="" id="tr_<?=$row['id_r_objeto']?>">
                          <td ><center><?=$i+1;$i++;?></center></td>
                          <td id="objeto<?=$row['id_r_objeto']?>" ><?=$row['objeto_afectado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                          <?php if ($row['permiso_insertar']==1){ ?><td><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>
                          <?php if ($row['permiso_consultar']==1){ ?><td id="consultar<?=$row['id_r_objeto']?>"><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td id="consultar<?=$row['id_r_objeto']?>"><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>
                          <?php if ($row['permiso_actualizar']==1){ ?><td id="actualizar<?=$row['id_r_objeto']?>"><center><i class="fa fa-check fa-2x"></i></center></td><?php }else { ?><td id="actualizar<?=$row['id_r_objeto']?>"><center><i class="fa fa-times fa-2x"> </i></center></td><?php }; ?>
                          <?php if ($row['estado_rol_obj']=='A'){?>
                              <td id="estado_rol_obj<?=$row['id_r_objeto']?>"><center><span class="label label-success label-mini">ACTIVO</span></center></td>
                        <?php  }elseif ($row['estado_rol_obj']=='I') {?>
                              <td id="estado_rol_obj<?=$row['id_r_objeto']?>"><center><span class="label label-danger label-mini">INACTIVO</span></center></td>
                      <?php  }?>
                          <td><center><a rol="<?=$row['rol']?>" value="<?=$row['id_r_objeto']?>" id="<?=$row['id_r_objeto']?>" class="fa fa-edit btn btn-info editar_roles" data-toggle="modal" data-target="#modal-edit_roles"></a></center></td>
                <?php }?>
      </tbody>
  </table>

<!-- MODAL PARA actualizar ROLES  -->
  <div class="modal fade" id="modal-edit_roles" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_objeto" value="no">
      <input type="hidden" id="objeto_afectado" value="">
      <input type="hidden" id="permiso_insertar" value="">
      <input type="hidden" id="permiso_actualizar" value="">
      <input type="hidden" id="permiso_consultar" value="">
      <input type="hidden" id="estado_objeto" value="">
      <div id="cargar_modal_editar_roles">
      </div>
  </div>

  <script src="usuarios/usuarios.js"></script>

  <script type="text/javascript">
  $(document).ready(function(){
  // alert(2);
  $('#roles-editar-dt').dataTable();
  });


  </script>
<?php } ?>

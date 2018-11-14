<?php
require_once("../php/admin.class.php");
$tabla = new administracion();
$tabla_personal = $tabla->traer_tabla_usuarios();
// print_r($tabla_personal);

require_once("../assets/includes/menu.class.php");
$menu = new menu();
// session_start();
//echo $_SESSION['id_usuario'];
$menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],5);// NUMERO DE OBJETO 6 VENTAS

?>
<?php if ($tabla_personal->num_rows){ ?>
  <div class="panel-body">
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="usuarios-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Usuario</center></th>
                      <th><center>Estado</center></th>
                      <th><center>Correo</center></th>
                      <th><center>Vencimiento Contraseña</center></th>
                      <th><center>Rol Asignado</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Editar Usuario</center></th>
                      <th><center>Reset Contraseña</center></th>
                      <?php }; ?>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_personal)){?>
                            <tr class="" id="tr_<?=$row['id_usuario']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td><?=$row['usuario']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                <?php if ($row['estado_usuario']=='A'){?>
                                    <td><center><span class="label label-success label-mini">ACTIVO</span></center></td>
                              <?php  }elseif ($row['estado_usuario']=='I') {?>
                                    <td><center><span class="label label-danger label-mini">INACTIVO</span></center></td>
                            <?php  }elseif ($row['estado_usuario']=='B') {?>
                                <td><center><span class="label label-danger label-mini">BLOQUEADO</span></center></td>
                            <?php  }?>
                                <td ><center><?=$row['correo_electronico']?></center></td>
                                <td ><center><?=$row['fecha_vencimiento']?></center></td>
                                <td ><center><?=$row['rol']?></center></td>
                                <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                  <td><center><a tipous="<?=$row['id_rol']?>" value="<?=$row['id_usuario']?>" nombre="<?=$row['usuario']?>" correo="<?=$row['correo_electronico']?>" fvencimiento="<?=$row['fecha_vencimiento']?>" estado="<?=$row['estado_usuario']?>" class="fa fa-edit btn btn-info enviar_actualizar" data-toggle="modal" data-target="#modal-edit_estado"></a></center></td>
                                  <td><center><a uar="<?=$row['usuario']?>" value="<?=$row['id_usuario']?>" ide="<?=$row['id_usuario']?>"  class="fa fa-refresh btn btn-warning reset_usuario"></a></center></td>

                                <?php }; ?>

                          <?php }?>
                </tbody>
            </table>

  </div>
  <div class="modal fade" id="modal-edit_estado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="correo_usuario" value="no">
      <input type="hidden" id="id_usuario" value="">
      <div id="cargar_modal_edit">
      </div>
  </div>
<?php }else {  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen registros en el sistema </strong></center></div>
<?php } ?>
<script src="usuarios/usuarios.js"></script>
<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#usuarios-dt').dataTable();
  });


 $(document).ready( function () {
     $('#tabla_id').DataTable({
      "language":{
       "lengthMenu":"Mostrar _MENU_ registros por página.",
       "zeroRecords": "Lo sentimos. No se encontraron registros.",
             "info": "Mostrando página _PAGE_ de _PAGES_",
             "infoEmpty": "No hay registros aún.",
             "infoFiltered": "(filtrados de un total de _MAX_ registros)",
             "search" : "Búsqueda",
             "LoadingRecords": "Cargando ...",
             "Processing": "Procesando...",
             "SearchPlaceholder": "Comience a teclear...",
             "paginate": {
     "previous": "Anterior",
     "next": "Siguiente",
     }
      }
     });
 } );
</script>

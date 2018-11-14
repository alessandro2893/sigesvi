<?php
require_once("../assets/includes/menu.class.php");
$menu = new menu();
session_start();
$menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],1);// NUMERO DE OBJETO 6 VENTAS


require_once("viatico.class.php");
$tabla = new administracion();
$dependencia=$_POST['dependencia'];
$tabla_empleados = $tabla->traer_vista_empleados($dependencia);
//print_r($tabla_zona);
?>




<?php if ($tabla_empleados->num_rows){ ?>
  <div class="panel-body">
                  <!-- -- BASIC PROGRESS BARS ---->
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_viaticos-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre Empleado</center></th>
                        <th><center>Dependencia</center></th>
                        <th><center>Reloj Marcador</center></th>
                        <th><center>Cargo</center></th>
                        <th><center>Disponibilidad</center></th>
                        <th><center>Categoria</center></th>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                          <th><center>Generar Solicitud</center></th>
                        <?php }; ?>
                     </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_empleados)){?>
                            <tr class="" id="tr_<?=$row['id_empleado']?>">
                              <td ><center><?=$i+1;$i++;?></center></td>
                              <td id="nombre<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['nombre']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <td id="dependencia<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['dependencia']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <td id="reloj<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['reloj']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <td id="cargo<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['cargo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <td id="estado_gira<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['estado_gira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <td id="categoria<?=$row['id_empleado']?>"class="edit_empleado_elemento"><?=$row['categoria']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                              <?php if ($menu_tabs['permiso_insertar']){ ?>
                              <td><center><a categoria="<?=$row['id_categoria']?>" value="<?=$row['id_empleado']?>" id="<?=$row['id_empleado']?>" class="fa fa-plus btn btn-info enviar_n_solicitud" data-toggle="modal" data-target="#modal-usolicitante"></a></center></td>
                          <?php }?>
                          <?php }?>
                </tbody>
            </table>
</div>
  <div class="modal fade" id="modal-usolicitante" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <div id="cargar_modal_usolicitante">
      </div>
  </div>



    </div>


<?php }else {  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No hay empleados disponible para este departamento</strong></center></div>
<?php } ?>

<script src="viaticos/funciones_viaticos.js"></script>

<script type="text/javascript">
$(document).ready(function(){
// alert(2);
$('#t_viaticos-dt').dataTable();
  });
</script>

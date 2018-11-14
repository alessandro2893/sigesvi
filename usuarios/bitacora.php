<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],5);// NUMERO DE OBJETO 5 VENTAS

  require_once("../php/admin.class.php");
  $tabla = new administracion();
  $tabla_bitacora = $tabla->traer_tabla_bitacora();
  //print_r($tabla_personal);
 ?>
 <div class="panel-body">
<div id="page-wrapper">
          <div class="row">
                <div class="col-lg-12">
                    <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span>BITACORA</h4>
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>

                    <a id="respaldo" class="fa btn btn-success enviar_base_datos" aria-hidden="true">RESPALDO BASE DE DATOS</a>
                  <?php }; ?>
                    <br>

                </div>
                <!-- /.col-lg-12 -->
              </div>


<?php if ($tabla_bitacora->num_rows){ ?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12 ">

        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0"  cellspacing="0" border="0" class="table table-striped table-bordered" id="bitacora-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Operación</center></th>
                      <th><center>Tabla afectada</center></th>
                      <th><center>Campo afectado</center></th>
                      <th><center>Valor viejo</center></th>
                      <th><center>Valor nuevo</center></th>
                      <th><center>Usuario</center></th>
                      <th><center>Host</center></th>
                      <th><center>Fecha modificación</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_bitacora)){?>
                            <tr class="" id="tr_<?=$row['id_bitacora']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="operacion<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['operacion']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="tbl_afectada<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['tbl_afectada']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="campo_afectado<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['campo_afectado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="valor_viejo<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['valor_viejo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="valor_nuevo<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['valor_nuevo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="usuario<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['usuario']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="nombre_host<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['nombre_host']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="fecha_modificacion<?=$row['id_bitacora']?>"class="edit_b_elemento"><?=$row['fecha_modificacion']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                  <?php }?>

                </tbody>
            </table>
          </div>
  </div>

    </div>
  </div>
</div>
</div>

<?php }else {  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen registros en el sistema </strong></center></div>
<?php } ?>
<?php } ?>

<script src="usuarios/usuarios.js"></script>
<script src="usuarios/respaldo/bitacora.js"></script>
<script type="text/javascript">

$(document).ready(function(){
//alert(2);
$('#bitacora-dt').DataTable();
    } );
// $('#bitacora-dt').dataTable({
//   });


$('#respaldo').click(function(){
// alert(234);
    window.open('usuarios/respaldo/descargar.php');
});


</script>


     <!-- <script src="js/validaciones.js"></script> -->

<?php
require_once("viatico.class.php");
$tabla = new administracion();
$tabla_usolicitante = $tabla->traer_tabla_usolicitante();

// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],2);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
?>
<?php if (@$tabla_usolicitante->num_rows){ ?>
  <div class="panel-body">
    <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_viaticos-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Cantidad</center></th>
                      <th><center>Zona</center></th>
                      <th><center>Fecha Salida</center></th>
                      <th><center>Fecha Retorno</center></th>
                      <th><center>Lugar Gira</center></th>
                      <th><center>Proposito</center></th>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                      <th><center>Asignar Vehiculo</center></th>
                      <?php }; ?>
                      <?php if ($menu_tabs['permiso_consultar']){ ?>
                      <th><center>Ver Detalle</center></th>
                      <?php }; ?>

                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_usolicitante)){?>
                            <tr class="" id="tr_<?=$row['id_usoli']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="cantidad<?=$row['id_usoli']?>"><?=$row['cantidad']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="zona<?=$row['id_usoli']?>"><?=$row['zona']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_salida<?=$row['id_usoli']?>"><?=$row['f_salida']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_retorno<?=$row['id_usoli']?>"><?=$row['f_retorno']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="lgira<?=$row['id_usoli']?>"><?=$row['lgira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="proposito<?=$row['id_usoli']?>"><?=$row['proposito']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_insertar']){ ?>
                                    <td><center><a codigogira="<?=$row['codigo_gira']?>" value="<?=$row['id_usoli']?>" id="<?=$row['id_usoli']?>" class="fa fa-car btn btn-success asignar_vehiculo" data-toggle="modal" data-target="#modal-avehiculo"></a></center></td>
                                    <?php }?>
                                    <?php if ($menu_tabs['permiso_consultar']){ ?>
                                    <td><center><a cgira="<?=$row['codigo_gira']?>" value="<?=$row['id_usoli']?>" id="<?=$row['id_usoli']?>" class="fa fa-search btn btn-info ver_detalle" data-toggle="modal" data-target="#modal-verdetalle"></a></center></td>
                                    <?php }?>
                          <?php }?>
                </tbody>
            </table>

          </div>
  </div>
  <div class="modal fade" id="modal-avehiculo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_sgenerales" value="no">
      <input type="hidden" id="codigo_gira" value="">
      <input type="hidden" id="cantidad" value="">
      <input type="hidden" id="zona" value="">
      <div id="cargar_modal_asig_vehiculo">
      </div>
  </div>

  <div class="modal fade" id="modal-verdetalle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <div id="cargar_modal_ver_detalle">
      </div>
  </div>


<?php }else{  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen solicitudes pendientes para asignar un vehiculo</strong></center></div>
<?php } ?>
<script src="viaticos/funciones_viaticos.js"></script>

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#t_viaticos-dt').dataTable();
  });
</script>

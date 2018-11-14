<?php
require_once("viatico.class.php");
$tabla = new administracion();
//echo $_POST['t_empleado'];
$tabla_sgenerales = $tabla->traer_tabla_sgenerales();
//print_r($tabla_empleados);

// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  // session_start();
  //echo $_SESSION['id_usuario'];
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],2);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
?>
<?php if (@$tabla_sgenerales->num_rows){ ?>
  <div class="panel-body">
    <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_cancelarsgenerales_dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Tipo Vehiculo</center></th>
                      <th><center>N° Placa</center></th>
                      <th><center>Kilometraje</center></th>
                      <th><center>Cantidad de Personas</center></th>
                      <th><center>Lugar</center></th>
                      <th><center>Fecha Salida</center></th>
                      <th><center>Fecha Retorno</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Cambio de Vehiculo</center></th>
                      <th><center>Eliminar Empleado Gira</center></th>
                      <th><center>Cancelar Gira</center></th>
                      <?php }; ?>

                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_sgenerales)){?>
                            <tr id="tr_<?=$row['id_sgenerales']?>">
                                    <td><center><?=$i+1;$i++;?></center></td>
                                    <td id="tipo_vehiculo<?=$row['id_sgenerales']?>" ><?=$row['tvehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="placa<?=$row['id_sgenerales']?>" ><?=$row['placa_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="kilometraje<?=$row['id_sgenerales']?>" ><?=$row['kilometraje']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="cantidad<?=$row['id_sgenerales']?>" ><?=$row['cantidad']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="lgira<?=$row['id_sgenerales']?>" ><?=$row['lgira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_salida<?=$row['id_sgenerales']?>" ><?=$row['f_salida_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_retorno<?=$row['id_sgenerales']?>" ><?=$row['f_retorno_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a cgira="<?=$row['codigo_gira']?>"  value="<?=$row['id_sgenerales']?>" id="<?=$row['id_sgenerales']?>" class="fa fa-car btn btn-info enviar_cancelar_sgenerales" data-toggle="modal" data-target="#modal-can_sgenerales"></a></center></td>
                                    <td><center><a cantidad="<?=$row['cantidad']?>" placa="<?=$row['placa_vehiculo']?>" cgira="<?=$row['codigo_gira']?>" class="fa fa-user btn btn-warning enviar_cancelar_empleado" data-toggle="modal" data-target="#modal-can_empleado"></a></center></td>
                                    <td><center><a  cgira="<?=$row['codigo_gira']?>" Nplaca="<?=$row['placa_vehiculo']?>"  value="<?=$row['id_sgenerales'];?> " id="<?=$row['id_sgenerales']?>" class="fa fa-trash-o btn btn-danger enviar_cancelar_gira" data-toggle="modal" data-target="#modal-can_gira"></a></center></td>
                                    <?php }?>
                          <?php }?>
                </tbody>
            </table>

          </div>
  </div>
  <div class="modal fade" id="modal-can_sgenerales" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <input type="hidden" id="id_cancelacion" value="no">
    <input type="hidden" id="codigo_gira" value="">
    <input type="hidden" id="tipo_vehiculo" value="">
      <input type="hidden" id="placa" value="">
      <input type="hidden" id="lgira" value="">
      <input type="hidden" id="cantidad" value="">
      <input type="hidden" id="f_salida" value="">
      <input type="hidden" id="f_retorno" value="">
      <div id="cargar_modal_can_asignacion">
      </div>
  </div>

<!--  MODAL PARA CANCELAR SOLO UN EMPLEADO-->
  <div class="modal fade" id="modal-can_empleado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <input type="hidden" id="id_cancelacion" value="no">
    <input type="hidden" id="codigo_gira" value="">
    <input type="hidden" id="lgira" value="">
      <div id="cargar_modal_can_empleado">
      </div>
  </div>

  <!--  MODAL PARA CANCELAR GIRA-->
    <div class="modal fade" id="modal-can_gira" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_cancelacion" value="no">
      <input type="hidden" id="codigo_gira" value="">
        <div id="cargar_modal_can_gira">
        </div>
    </div>

<?php }else{  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen solicitudes de asignación para cancelar</strong></center></div>
<?php } ?>

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#t_cancelarsgenerales_dt').dataTable();
  });
</script>

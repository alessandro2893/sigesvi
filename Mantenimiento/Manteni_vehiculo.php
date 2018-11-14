<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_vehiculo = $tabla->traer_tabla_vehiculo();
  //print_r($tabla_personal);
  ?>

  <div class="panel-body">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span> MANTENIMIENTO VEHICULOS</h4>

                    <!-- <h4 class="page-header" style="text-transform:uppercase; font-weight: bold;">MANTENIMIENTO VEHICULOS</h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_vehiculo" aria-hidden="true" data-toggle="modal" data-target="#modal_nueva_vehiculo">  NUEVO</a>
                  <?php }; ?>
                    <!-- MODAL PARA GUARDAR DEPARTAMENTO  -->
                      <div class="modal fade" id="modal_nueva_vehiculo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                        <input type="hidden" id="tipo_vehiculo" value="">
                        <input type="hidden" id="n_vehiculo" value="">
                        <input type="hidden" id="capacidad_personas" value="">
                        <input type="hidden" id="placa_vehiculo" value="">
                        <input type="hidden" id="marca_vehiculo" value="">
                        <input type="hidden" id="modelo_vehiculo" value="">
                        <input type="hidden" id="color_vehiculo" value="">
                        <input type="hidden" id="estado" value="">

                          <div id="cargar_modal_nueva_vehiculo">
                          </div>
                        </div>
                </div>
            </div>



<?php if ($tabla_vehiculo->num_rows){ ?>
  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
        				<!-- -- BASIC PROGRESS BARS ---->
        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="vehiculo-dt">
                <thead>
                  <th><center>#</center></th>
                  <th><center>Tipo De Vehículo</center></th>
                  <th><center>No. Vehículo</center></th>
                  <th><center>Capacidad Personas</center></th>
                  <th><center>Número De Placa</center></th>
                  <th><center>Marca</center></th>
                  <th><center>Modelo</center></th>
                  <th><center>Color</center></th>
                  <th><center>Estado</center></th>
                  <?php if ($menu_tabs['permiso_actualizar']){ ?>
                  <th><center>Editar</center></th>
                <?php }; ?>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
  <?php
  $i=0;
       while($row = mysqli_fetch_assoc($tabla_vehiculo)){?>
            <tr class="" id="tr_<?=$row['id_vehiculo']?>">
                    <td ><center><?=$i+1;$i++;?></center></td>
                    <td id="tipo_vehiculo<?=$row['id_vehiculo']?>"><?=$row['tipo_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="n_vehiculo<?=$row['id_vehiculo']?>"><?=$row['n_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="capacidad_personas<?=$row['id_vehiculo']?>"><?=$row['capacidad_personas']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="placa_vehiculo<?=$row['id_vehiculo']?>"><?=$row['placa_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="marca_vehiculo<?=$row['id_vehiculo']?>"><?=$row['marca_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="modelo_vehiculo<?=$row['id_vehiculo']?>"><?=$row['modelo_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="color_vehiculo<?=$row['id_vehiculo']?>"><?=$row['color_vehiculo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <td id="estado<?=$row['id_vehiculo']?>"><?=$row['estado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                    <td><center><a value="<?=$row['id_vehiculo']?>" id="<?=$row['id_vehiculo']?>" class="fa fa-edit btn btn-info enviar_actualizar_vehiculo" data-toggle="modal" data-target="#modal_edit_vehiculo"></a></center></td>
                  <?php }?>
          <?php }?>
                </tbody>
            </table>
          </div>
  </div>
  <div class="modal fade" id="modal_edit_vehiculo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">

      <div id="cargar_modal_edit_vehiculo">
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
<script src="Mantenimiento/funciones_mantenimento.js"></script>



<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#vehiculo-dt').dataTable();
  });
</script>

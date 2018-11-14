<?php
// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  //echo $_SESSION['id_usuario'];
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],2);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
 ?>


 <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
   <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
 <?php }else {?>
<!-- <div id="page-wrapper">
                <div class="col-lg-12">
                    <h6 class="page-header">ASIGNACIÓN DE VEHICULO</h6>
                    <hr>
                </div>
</div> -->
<div class="panel-body">

<div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">
      				<div class="showback">

                <ul role="tablist" class="nav nav-tabs" id="myTab">
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                      <li class="active pes"><a data-toggle="tab" role="tab" href="#asignar_vehiculo">Asignar Vehiculo</a></li>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                        <li class="pes"><a  data-toggle="tab" role="tab" href="#cancelar_asignacion">Cancelar Asignación</a></li>
                  <!--<li><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_personal">Modificar/Guardar Usuario</a></li>-->
                      <?php }; ?>
                  <?php }; ?>

                </ul>
                <div class="tab-content">
                  <!-- ############################ ver registros ############################################-->
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                      <div id="asignar_vehiculo" class="tab-pane tabs-up fade in active panel panel-default">
                          <?php include('tabla_asig_vehiculo.php') ?>
                        </div>
                  <?php }; ?>

                  <?php if ($menu_tabs['permiso_actualizar']){ ?>
                    <div id="cancelar_asignacion" class="tab-pane tabs-up fade panel panel-default">
                        <?php include('tabla_can_vehiculo.php') ?>
                      </div>
                  <?php }; ?>

                </div>
              </div>
            </div>
</div>
</div>
<?php }; ?>

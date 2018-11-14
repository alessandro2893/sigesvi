<?php
// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  //echo $_SESSION['id_usuario'];
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],4);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
 ?>
 <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
   <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
 <?php }else {?>
<!-- <div id="page-wrapper">
                <div class="col-lg-12">
                    <h6 class="page-header">APROBACIÓN SOLICITUD</h6>
                    <hr>
                </div>
</div> -->
<div class="panel-body">


<div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">
      				<div class="showback">

                <ul role="tablist" class="nav nav-tabs" id="myTab">
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                  <li class="active pes" id="li_buscar_solicitud"><a id="a_buscar_solicitud" data-toggle="tab" role="tab" href="#buscar_solicitud">Buscar Solicitud</a></li>
                  <?php }; ?>

                  <li class="pes" id="li_desglosar_solicitud"><a id="a_desglosar_solicitud" data-toggle="tab" role="tab" style="display:none;" href="#desglosar_solicitud">Desglosar</a></li>
                  <li class="pes"><a  data-toggle="tab" role="tab" href="#cancelar_desglose">Anulación de Desglose/Generar Reporte</a></li>


                </ul>
                <div class="tab-content">
                  <!-- ############################ ver registros ############################################-->
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                  <div id="buscar_solicitud" class="tab-pane tabs-up fade in active panel panel-default">
                    <?php include('buscar_solicitud.php') ?>
                  </div>
                  <?php }; ?>
                  <?php if ($menu_tabs['permiso_actualizar']){ ?>
                    <div id="cancelar_desglose" class="tab-pane tabs-up fade panel panel-default">
                      <?php include('tabla_can_desglo_greporte.php') ?>

                      </div>
                  <?php }; ?>

                  <div id="desglosar_solicitud" class="tab-pane tabs-up fade panel panel-default">
                    <?php include('desglosar_solicitud.php') ?>

                    </div>
                </div>
              </div>
            </div>
</div>
</div>
<?php }; ?>

<!-- <script src="viaticos/funciones_viaticos.js"></script> -->

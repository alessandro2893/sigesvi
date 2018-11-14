<?php
require_once("../assets/includes/menu.class.php");
$menu = new menu();
session_start();
$menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],5);// NUMERO DE OBJETO 6 VENTAS
?>





<div id="page-wrapper">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-user"></span> GESTION DE EMPLEADOS</h4>

                </div>
                <!-- /.col-lg-12 -->
</div>
<div class="panel-body">

<div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">
      				<div class="showback">
                <!-- ###########################################################################################-->
                <ul role="tablist" class="nav nav-tabs" id="myTab">
                    <li class="active pes" id="a_ver_empleados"><a id="li_ver_empleados"  data-toggle="tab" role="tab" href="#ver_registros">Ver Empledo</a></li>
                    <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <li class="pes" id="a_ingresar_empleado"><a id="li_ingresar_empleado" data-toggle="tab" role="tab" href="#ingreso_empleado">Añadir/Editar Empleado</a></li>
                  <?php }; ?>

                  <!--<li><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_personal">Modificar/Guardar Usuario</a></li>-->
                </ul>




                <div class="tab-content" id="myTabContent">
                  <!-- ############################ ver registros ############################################-->
                  <div id="ver_registros" class="tab-pane tabs-up fade in active panel panel-default">
                      <?php include('tabla_empleados.php') ?>
                  </div>



                <!-- ############################ Responsables ############################################-->

                  <!-- ############################ ver registros ############################################-->

                <?php if ($menu_tabs['permiso_insertar']){ ?>
                  <div id="ingreso_empleado" class="tab-pane tabs-up fade panel panel-default ingreso_empleado">
                      <?php include('manteni_empleados.php') ?>
                  </div>
                <?php }; ?>



                </div>
                <!--<script src="assets/js/fn_mantenimientos.js"></script>-->
                <!--<script src="assets/js/plugins/datatables/jquery.dataTables-conf.js"></script>-->

      				</div><!--/showback -->
</div>
</div>
</div>

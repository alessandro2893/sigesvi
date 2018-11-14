<?php
// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  //echo $_SESSION['id_usuario'];
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],1);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
 ?>


 <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
   <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
 <?php }else {?>
<!-- <div id="page-wrapper">
                <div class="col-lg-12">
                    <h6 class="page-header">GENERAR NUEVA SOLICITUD</h6>
                    <hr>
                </div>
              </div> -->
              <div class="panel-body">

              <div class="row mt">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    				<div class="showback">

                <ul role="tablist" class="nav nav-tabs" id="myTab">
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                  <li class="active pes"><a id="btn_ver_personal"  data-toggle="tab" role="tab" href="#generar_soli">Generar Solicitud</a></li>
                  <?php }; ?>
                  <?php if ($menu_tabs['permiso_actualizar']){ ?>
                  <li class="pes"><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#cancelar_soli">Cancelar Solicitud</a></li>
                  <!--<li><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_personal">Modificar/Guardar Usuario</a></li>-->
                  <?php }; ?>
                </ul>
                <div class="tab-content" >
                  <input type="hidden" id="dependencia" value="<?=$_SESSION["dependencia"]?>">
                  <!-- ############################ ver registros ############################################-->
                    <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_insertar']){ ?>
                  <div id="generar_soli" class="tab-pane tabs-up fade in active panel panel-default">
                      <?php include('tabla_viaticos.php') ?>
                  </div>
                    <?php }; ?>
                  <?php if ($menu_tabs['permiso_actualizar']){ ?>
                  <div id="cancelar_soli" class="tab-pane tabs-up fade panel panel-default">
                      <?php include('tabla_can_viaticos.php') ?>
                  </div>
                  <?php }; ?>

                </div>
              </div>
            </div>
          </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
    var dependencia = $('#dependencia').val();
    //  alert(dependencia);
    $("#generar_soli").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.post('viaticos/tabla_viaticos.php',{dependencia:dependencia}).done(function(htmlexterno){
      $("#generar_soli").html(htmlexterno);
     });
});
</script>
<?php }; ?>

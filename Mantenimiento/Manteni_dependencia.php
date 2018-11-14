<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_dependencia = $tabla->traer_tabla_dependencia();
  //print_r($tabla_personal);
 ?>
 <div class="panel-body">
<div id="page-wrapper">
       <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span> MANTENIMIENTO Dependencias de Empleados</h4>
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                        <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_dependencia" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_dependencia" fount="r">  NUEVO</a>
                  <?php }; ?>
                    <!-- MODAL PARA GUARDAR CATEGORIA  -->
                      <div class="modal fade" id="modal-nueva_dependencia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                        <input type="hidden" id="id_dependencia" value="no">
                        <input type="hidden" id="dependencia" value="">
                        <input type="hidden" id="estado" value="">

                          <div id="cargar_modal_nueva_dependencia">
                          </div>
                        </div>
                </div>
                <!-- /.col-lg-12 -->
</div>


<?php if ($tabla_dependencia->num_rows){ ?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
        				<!-- -- BASIC PROGRESS BARS ---->
        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="dependencia-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Dependencia</center></th>
                      <th><center>Estado</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Editar</center></th>
                    <?php }; ?>
                        </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_dependencia)){?>
                            <tr class="" id="tr_<?=$row['id_categoria']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="dependencia<?=$row['id_dependencia']?>"class="edit_dependencia_elemento"><?=$row['dependencia']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="estado<?=$row['id_dependencia']?>"class="edit_dependencia_elemento"><?=$row['estado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_dependencia']?>" id="<?=$row['id_dependencia']?>" class="fa fa-edit btn btn-info enviar_actualizar_dependencia" data-toggle="modal" data-target="#modal-edit_dependencia"></a></center></td>
                          <?php }?>
                        <?php }?>
                                          </tbody>
            </table>
          </div>
  </div>
<!-- MODAL PARA actualizar dependencia  -->
  <div class="modal fade" id="modal-edit_dependencia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_dependencia" value="no">
      <input type="hidden" id="dependencia" value="">
      <input type="hidden" id="estado" value="">

      <div id="cargar_modal_edit_dependencia">
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
$('#dependencia-dt').dataTable();
  });
</script>
<script src="assets\js\sweetalert.min.js"></script>
     <!-- <script src="js/validaciones.js"></script> -->

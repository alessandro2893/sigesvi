<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_departamento = $tabla->traer_tabla_departamento();
  //print_r($tabla_personal);
  ?>

  <div class="panel-body">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span>MANTENIMIENTO DEPARTAMENTOS</h4>

                    <!-- <h4 class="page-header" style="text-transform:uppercase; font-weight: bold;">MANTENIMIENTO DEPARTAMENTOS</h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_departamento" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_departamento">  NUEVO</a>
                  <?php }; ?>
                    <!-- MODAL PARA GUARDAR DEPARTAMENTO  -->
                      <div class="modal fade" id="modal-nueva_departamento" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                        <input type="hidden" id="id_catalogo_pago" value="">
                        <input type="hidden" id="codigo_pago" value="">
                        <input type="hidden" id="descripcion_pago" value="">
                        <input type="hidden" id="estado" value="">
                          <div id="cargar_modal_nueva_departamento">
                          </div>
                        </div>
                </div>
            </div>



<?php if ($tabla_departamento->num_rows){ ?>
  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
        				<!-- -- BASIC PROGRESS BARS ---->
        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="departamento-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Departamento</center></th>
                      <th><center>Estado</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Editar Departamento<center></th>
                      <?php }; ?>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_departamento)){?>
                            <tr class="" id="tr_<?=$row['id_departamento']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="departamento<?=$row['id_departamento']?>"class="edit_usuario_elemento"><?=$row['departamento']?></td>

                                    <!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="estado<?=$row['id_departamento']?>"class="edit_usuario_elemento"><?=$row['estado']?></td>
                                 <!-- data-toggle="modal" data-target="#modal-normal"-->
                                   <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_departamento']?>" id="<?=$row['id_departamento']?>" class="fa fa-edit btn btn-info enviar_actualizar_departamento" data-toggle="modal" data-target="#modal-edit_departamento"></a></center></td>
                                  <?php }?>
                          <?php }?>
                </tbody>
            </table>
</div>
  </div>
  <div class="modal fade" id="modal-edit_departamento" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_departamento" value="no">
      <input type="hidden" id="departamento" value="">
      <input type="hidden" id="estado" value="">
      <div id="cargar_modal_edit_departamento">
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
$('#departamento-dt').dataTable();
  });
</script>
<script src="assets\js\sweetalert.min.js"></script>

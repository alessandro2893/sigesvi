<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_municipio = $tabla->traer_tabla_municipio();
  //print_r($tabla_personal);
  ?>



  <div class="panel-body">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span>MANTENIMIENTO MUNICIPIOS</h4>

                    <!-- <h4 class="page-header"  >MANTENIMIENTO MUNICIPIOS</h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_municipio" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_municipio">  NUEVO</a>
                    <?php }; ?>
                    <!-- MODAL PARA GUARDAR MUNICIPIO  -->
                      <div class="modal fade" id="modal-nueva_municipio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                        <input type="hidden" id="id_municipio" value="">
                        <input type="hidden" id="municipio" value="">
                        <input type="hidden" id="estado" value="">
                        <input type="hidden" id="zona" value="">

                          <div id="cargar_modal_nueva_municipio">
                          </div>
                        </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>



<?php if ($tabla_municipio->num_rows){ ?>
  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="departamento-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Departamento</center></th>
                      <th><center>Municipio</center></th>
                      <th><center>Estado</center></th>
                      <th><center>Zona</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Editar Municipio<center></th>
                      <?php }; ?>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_municipio)){?>
                            <tr class="" id="tr_<?=$row['id_municipio']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="departamento<?=$row['id_municipio']?>"class="edit_usuario_elemento"><?=$row['depto']?></td>
                                    <!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="municipio<?=$row['id_municipio']?>"class="edit_municipio_elemento"><?=$row['municipio']?></td>
                                    <!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="estado<?=$row['id_municipio']?>"class="edit_municipio_elemento"><?=$row['estado']?></td>
                                    <td id="zona<?=$row['id_zona']?>"class="edit_municipio_elemento"><?=$row['nombre_zona']?></td>
                                    <!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_municipio']?>" id="<?=$row['id_municipio']?>" class="fa fa-edit btn btn-info enviar_actualizar_municipio" data-toggle="modal" data-target="#modal-edit_municipio"></a></center></td>

                                  <?php }?>
                          <?php }?>
                </tbody>
            </table>
          </div>
  </div>
  <div class="modal fade" id="modal-edit_municipio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_municipio" value="no">
      <!--<input type="hidden" id="id_departamento" value=""> -->
      <input type="hidden" id="municipio" value="">
      <input type="hidden" id="estado" value="">
      <input type="hidden" id="zona" value="">

      <div id="cargar_modal_edit_municipio">
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
<!-- <script src="assets/js/validaciones.js"></script> -->

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#departamento-dt').dataTable();
  });
</script>

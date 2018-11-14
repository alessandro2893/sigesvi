<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_zona = $tabla->traer_tabla_zona();
  //print_r($tabla_zona);
   ?>

   <div class="panel-body">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span> MANTENIMIENTO ZONAS</h4>

                    <!-- <h4 class="page-header" style="text-transform:uppercase; font-weight: bold;" >MANTENIMIENTO ZONAS</h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_zona" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_zona">  NUEVO</a>
                  <?php }; ?>

                    <br>
                    <!-- MODAL PARA GUARDAR ZONA  -->
                 <div class="modal fade" id="modal-nueva_zona" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                   <input type="hidden" id="nombre_zona" value="">


                     <div id="cargar_modal_nueva_zona">
                     </div>
                   </div>
                </div>
                <!-- /.col-lg-12 -->
              </div>



<?php if ($tabla_zona->num_rows){ ?>
  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="zona-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre Zona</center></th>
                      <th><center>Estado</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                            <th><center>Editar Zona</center></th>
                          <?php }; ?>

                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_zona)){?>
                            <tr class="" id="tr_<?=$row['id_zona']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="nombre_zona<?=$row['id_zona']?>"class="edit_zona_elemento"><?=$row['nombre_zona']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($row['estado']=='ACTIVO'){?>
                                        <td id="estadoz<?=$row['id_zona']?>"><center><span>ACTIVO</span></center></td>
                                    <?php  }elseif ($row['estado']=='INACTIVO') {?>
                                        <td id="estadoz<?=$row['id_zona']?>"><center><span>INACTIVO</span></center></td>
                                    <?php  }elseif ($row['estado']=='ESPERANDO ASIGNACION DE CATEGORIA') {?>
                                    <td id="estadoz<?=$row['id_zona']?>"><center><span class="label label-danger label-mini">ESPERANDO ASIGNACION DE CATEGORIA</span></center></td>
                                    <?php  }?>
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_zona']?>" id="<?=$row['id_zona']?>" class="fa fa-edit btn btn-info enviar_actualizar_zona" data-toggle="modal" data-target="#modal-edit_zona"></a></center></td>
                                  <?php }?>
                          <?php }?>
                </tbody>
            </table>
          </div>
  </div>
  <div class="modal fade" id="modal-edit_zona" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_zona" value="no">
      <input type="hidden" id="nombre_zona" value="">
      <input type="hidden" id="estadoz" value="">
      <div id="cargar_modal_edit_zona">
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
$('#zona-dt').dataTable();
  });
</script>
     <!-- <script src="js/validaciones.js"></script> -->

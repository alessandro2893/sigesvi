<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_cate_zona = $tabla->traer_tabla_cate_zona();
  //print_r($tabla_zona);
   ?>

   <div class="panel-body">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span> MANTENIMIENTO CATEGORIAS DE ZONAS</h4>
                    <!-- <h4 class="page-header" style="text-transform:uppercase; font-weight: bold;" ></h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_cate_zona" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_cate_zona">  NUEVO</a>
                  <?php }; ?>
                    <br>
                    <!-- MODAL PARA GUARDAR ZONA  -->
                 <div class="modal fade" id="modal-nueva_cate_zona" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                     <div id="cargar_modal_nueva_cate_zona">

                     </div>
                   </div>
                </div>
                <!-- /.col-lg-12 -->
              </div>


<?php if ($tabla_cate_zona->num_rows){ ?>
  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="showback">

                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="categ_zona-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre Zona</center></th>
                        <th><center>Categoría</center></th>
                        <th><center>Periodo Corto</center></th>
                        <th><center>Periodo Largo</center></th>
                      <th><center>Estado</center></th>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                          <th><center>Editar Categoría Zona</center></th>
                        <?php }; ?>

                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_cate_zona)){?>
                         <tr class="" id="tr_<?=$row['id_categoria_zona']?>">
                                 <td ><center><?=$i+1;$i++;?></center></td>
                                 <td id="nombre_zona<?=$row['id_categoria_zona']?>"> <?=$row['nombre_zona']?></td>
                                 <td id="categoria<?=$row['id_categoria_zona']?>"><?=$row['categoria']?></td>
                                 <td id="periodo_c<?=$row['id_categoria_zona']?>"><?=$row['periodo_corto']?></td>
                                 <td id="periodo_l<?=$row['id_categoria_zona']?>"><?=$row['periodo_largo']?></td>
                                 <td id="estado<?=$row['id_categoria_zona']?>"><?=$row['estado']?></td>
                                 <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                 <td><center><a idcate="<?=$row['id_categoria_fk']?>"  idzona="<?=$row['id_zona_fk']?>" value="<?=$row['id_categoria_zona']?>" id="<?=$row['id_categoria_zona']?>" class="fa fa-edit btn btn-info enviar_actualizar_cate_zona" data-toggle="modal" data-target="#modal-edit_cate_zona"></a></center></td>
                       <?php }?>
                       <?php }?>
                </tbody>
            </table>
          </div>
  </div>
  <div class="modal fade" id="modal-edit_cate_zona" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <div id="cargar_modal_edit_cate_zona">
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
$('#categ_zona-dt').dataTable();
  });
</script>
     <!-- <script src="js/validaciones.js"></script> -->

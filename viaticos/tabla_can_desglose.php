<?php
require_once("viatico.class.php");
$tabla = new administracion();
//echo $_POST['t_empleado'];
$tabla_can_desglose = $tabla->traer_vista_can_desglose();
// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],3);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);
?>
<?php if (@$tabla_can_desglose->num_rows){ ?>
  <div class="panel-body">
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_can_desglose-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre Empleado</center></th>
                      <th><center>Categoria</center></th>
                      <th><center>Zona</center></th>
                      <th><center>Departamento</center></th>
                      <th><center>Fecha Salida</center></th>
                      <th><center>Fecha Retorno</center></th>
                      <th><center>Dias</center></th>
                      <th><center>Lugar Gira</center></th>
                      <th><center>Correlativo</center></th>
                      <?php if ($menu_tabs['permiso_consultar']){ ?>
                      <th><center>Generar Reporte</center></th>
                      <?php }; ?>
                      <?php if ($menu_tabs['permiso_actualizar']){ ?>
                      <th><center>Anular Aprobacion</center></th>
                      <?php }; ?>

                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_can_desglose)){?>
                            <tr class="" id="tr_<?=$row['id_usoli']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="nombre<?=$row['id_usoli']?>"><?=$row['nombre']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="categoria<?=$row['id_usoli']?>"><?=$row['categoria']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="zona<?=$row['id_usoli']?>"><?=$row['zona']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="dependencia<?=$row['id_usoli']?>"><?=$row['dependencia']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_salida<?=$row['id_usoli']?>"><?=$row['f_salida']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="r_retorno<?=$row['id_usoli']?>"><?=$row['f_retorno']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="dias_gira<?=$row['id_usoli']?>"><?=$row['dias_gira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="lugar_gira<?=$row['id_usoli']?>"><?=$row['lugar_gira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="correlativo<?=$row['id_usoli']?>"><?=$row['correlativo']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_insertar']){ ?>
                                    <td><center><a value="<?=$row['id_usoli']?>" correlativo="<?=$row['correlativo']?>" class=" btn btn-danger generar_reporte"> <img src="../assets/img/pdf_24.png"></a></center></td>
                                    <?php }; ?>
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_usoli']?>" id="<?=$row['id_usoli']?>" class="fa fa-times fa-2x btn btn-warning  anular_aprobacion" data-toggle="modal" data-target="#modal-anular_aprobacion"></a></center></td>
                                    <?php }?>
                          <?php }?>
                </tbody>
            </table>

  </div>




<!-- MODAL CANCELAR APROBACION -->
  <div class="modal fade" id="modal-anular_aprobacion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_sgenerales" value="no">
      <input type="hidden" id="motivo" value="">

      <div id="cargar_modal_anu_aprobacion">
      </div>
  </div>


<?php }else{  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No hay empleados disponible para este departamento</strong></center></div>
<?php } ?>

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#t_can_desglose-dt').dataTable();
  });
</script>
<!-- <script src="viaticos/funciones_viaticos.js"></script>

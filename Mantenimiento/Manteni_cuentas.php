<?php
  require_once("../assets/includes/menu.class.php");
  $menu = new menu();
  session_start();
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS

  require_once("mante.class.php");
  $tabla = new administracion();
  $tabla_cuentas = $tabla->traer_tabla_cuentas();
  //print_r($tabla_cuentas);
  ?>

  <div class="panel-body">
 <div id="page-wrapper">
       <div class="row">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-cog"></span> MANTENIMIENTO CUENTAS BANCARIAS</h4>

                    <!-- <h4 class="page-header" style="text-transform:uppercase; font-weight: bold;">MANTENIMIENTO CUENTAS BANCARIAS</h4> -->
                    <?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
                      <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
                    <?php }else {?>
                      <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <a value="" id="" class="fa fa-plus-square btn btn-success enviar_nueva_cuenta" aria-hidden="true" data-toggle="modal" data-target="#modal-nueva_cuenta" fount="r">  NUEVO</a>
                  <?php }; ?>
                    <!-- MODAL PARA GUARDAR CATEGORIA  -->
                      <div class="modal fade" id="modal-nueva_cuenta" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                        <input type="hidden" id="id_cta_bancaria" value="no">
                        <input type="hidden" id="banco" value="">
                        <input type="hidden" id="tipo_cuenta" value="">
                        <input type="hidden" id="tipo_moneda" value="">
                        <input type="hidden" id="numero_cta" value="">
                        <input type="hidden" id="estado" value="">
                          <div id="cargar_modal_nueva_cuenta">
                          </div>
                        </div>
                </div>
                <!-- /.col-lg-12 -->
</div>


<?php if (@$tabla_cuentas->num_rows){ ?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">
        				<!-- -- BASIC PROGRESS BARS ---->
        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="cuentas-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Banco</center></th>
                      <th><center>Tipo De Cuenta</center></th>
                      <th><center>Tipo De Moneda</center></th>
                      <th><center>Número De Cuenta</center></th>
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
                       while($row = mysqli_fetch_assoc($tabla_cuentas)){?>
                            <tr class="" id="tr_<?=$row['id_cta']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="banco<?=$row['id_cta']?>"class="edit_cuenta_elemento"><?=$row['banco']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="tipo_cuenta<?=$row['id_cta']?>"class="edit_cuenta_elemento"><?=$row['tipo_cuenta']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="tipo_moneda<?=$row['id_cta']?>"class="edit_cuenta_elemento"><?=$row['tipo_moneda']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="numero_cuenta<?=$row['id_cta']?>"class="edit_cuenta_elemento"><?=$row['numero_cuenta']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="estado<?=$row['id_cta']?>"class="edit_cuenta_elemento"><?=$row['estado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($menu_tabs['permiso_actualizar']){ ?>
                                    <td><center><a value="<?=$row['id_cta']?>" id="<?=$row['id_cta']?>" class="fa fa-edit btn btn-info enviar_actualizar_cuentas" data-toggle="modal" data-target="#modal-edit_cuentas"></a></center></td>
                                  <?php }?>
                          <?php }?>
                </tbody>
            </table>
          </div>
  </div>
<!-- MODAL PARA actualizar dependencia  -->
  <div class="modal fade" id="modal-edit_cuentas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <input type="hidden" id="id_cuenta" value="no">
      <input type="hidden" id="numero_cuenta" value="">
      <input type="hidden" id="estado" value="">

      <div id="cargar_modal_edit_cuentas">
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
$('#cuentas-dt').dataTable();
  });
</script>
<script src="assets\js\sweetalert.min.js"></script>
     <!-- <script src="js/validaciones.js"></script> -->

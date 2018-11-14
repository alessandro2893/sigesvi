<?php
require_once("viatico.class.php");
$tabla = new administracion();
//echo $_POST['t_empleado'];
$tabla_usoli = $tabla->traer_tabla_usoli();
//print_r($tabla_empleados);
?>
<?php if (@$tabla_usoli->num_rows){ ?>
  <div class="panel-body">
    <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_cancelarsoli_dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre Empleado</center></th>
                      <th><center>Dependecia</center></th>
                      <th><center>Categoria</center></th>
                      <th><center>Zona</center></th>
                      <th><center>Fecha Salida</center></th>
                      <th><center>Fecha Retorno</center></th>
                      <th><center>Lugar</center></th>
                      <th><center>Proposito</center></th>
                      <th><center>Cancelar Solicitud</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($tabla_usoli)){?>
                            <tr id="tr_<?=$row['id_usoli']?>">
                                    <td><center><?=$i+1;$i++;?></center></td>
                                    <td id="nombrec<?=$row['id_usoli']?>" ><?=$row['nombrec']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="dependencia<?=$row['id_usoli']?>" ><?=$row['dependencia']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="categoria<?=$row['id_usoli']?>" ><?=$row['categoria']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="zona<?=$row['id_usoli']?>" ><?=$row['zona']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="f_salida<?=$row['id_usoli']?>" ><?=$row['f_salida']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="fecha_retorno<?=$row['id_usoli']?>" ><?=$row['fecha_retorno']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="lugar_gira<?=$row['id_usoli']?>" ><?=$row['lugar_gira']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="proposito<?=$row['id_usoli']?>" ><?=$row['proposito']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td><center><a idempleado="<?=$row['id_empleado']?>" value="<?=$row['id_usoli']?>" id="<?=$row['id_usoli']?>" class="glyphicon glyphicon-remove btn btn-danger enviar_cancelar_solicitud" data-toggle="modal" data-target="#modal-can_usolicitante"></a></center></td>
                          <?php }?>
                </tbody>
            </table>

          </div>
  </div>
  <div class="modal fade" id="modal-can_usolicitante" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <input type="hidden" id="id_cancelacion" value="no">
    <input type="hidden" id="id_empleado" value="">
      <input type="hidden" id="nombre" value="">
      <input type="hidden" id="motivo_cancelacion" value="">
      <div id="cargar_modal_can_usolicitante">
      </div>
  </div>



<?php }else{  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen solicitudes para cancelar</strong></center></div>
<?php } ?>

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#t_cancelarsoli_dt').dataTable();
  });
</script>

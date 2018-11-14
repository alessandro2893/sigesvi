<?php
require_once("mante.class.php");
$tabla = new administracion();
$traer_tabla_empleado = $tabla->traer_tabla_empleado();
//print_r($tabla_personal);
?>
<?php if ($traer_tabla_empleado->num_rows){ ?>
  <div class="panel-body">
    <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="empleados-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre</center></th>
                      <th><center>Reloj Marcador</center></th>
                      <th><center>Tarjeta Identidad</center></th>
                      <th><center>Dependencia</center></th>
                      <th><center>Categoría</center></th>
                      <th><center>Estado</center></th>
                      <th><center>Editar Empleado</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($traer_tabla_empleado)){?>
                            <tr class="" id="tr_<?=$row['id_empleado']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="nombre<?=$row['id_empleado']?>" ><?=$row['nombre']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="reloj_marcador<?=$row['id_empleado']?>" ><?=$row['reloj_marcador']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="tarjeta_identidad<?=$row['id_empleado']?>" ><?=$row['tarjeta_identidad']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="dependencia<?=$row['id_empleado']?>" ><?=$row['dependencia']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="categoria<?=$row['id_empleado']?>" ><?=$row['categoria']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <td id="estado<?=$row['id_empleado']?>" ><?=$row['estado']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                  <td><center><a  value="<?=$row['id_empleado']?>" noid="<?=$row['tarjeta_identidad']?>" class="fa fa-edit btn btn-info buscar_identidad"></a></center></td>

                                <?php }; ?>

                          <?php }?>
                </tbody>
            </table>
          </div>

  </div>

  <script src="Mantenimiento/funciones_mantenimento.js"></script>


<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#empleados-dt').dataTable();
  });
</script>

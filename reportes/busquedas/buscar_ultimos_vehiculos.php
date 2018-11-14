<?php
require_once("../reportes.class.php");
$tabla = new reportes();
$tabla_vehiculo = $tabla->traer_tabla_vehiculos($_POST['cantidad']);
 ?>
 <div class="panel-body">



<?php   if ($tabla_vehiculo->num_rows){ ?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">

        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="categorias-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>No. vehículo</center></th>
                      <th><center>No. placa</center></th>
                      <th><center>Tipo vehículo</center></th>
                      <th><center>Modelo</center></th>
                      <th><center>Marca</center></th>
                      <th><center>Color</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                  while($row = mysqli_fetch_assoc($tabla_vehiculo)){?>
                            <tr >
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td ><?=$row['n_vehiculo']?></td>
                                    <td ><?=$row['placa_vehiculo']?></td>
                                    <td ><?=$row['tipo_vehiculo']?></td>
                                    <td ><?=$row['modelo_vehiculo']?></td>
                                    <td ><?=$row['marca_vehiculo']?></td>
                                    <td ><?=$row['color_vehiculo']?></td>

                        <?php }?>

                </tbody>
            </table>
          </div>
  </div>



    </div>
  </div>
</div>

<?php }else {  ?>
  <br><div class="alert alert-warning alert-dismissible" role="alert"><center><strong>No existen registros en el sistema </strong></center></div>
<?php } ?>


  <script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#categorias-dt').dataTable();
  });
</script>

<?php
require_once("../reportes.class.php");
$tabla = new reportes();
$giras_anio = $tabla->traer_giras_por_anno($_POST['anio']);
 ?>
 <div class="panel-body">



<?php   if ($giras_anio->num_rows){ ?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">

        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="categorias-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre</center></th>
                      <th><center>Lugar gira</center></th>
                      <th><center>Proposito</center></th>
                      <th><center>Fecha salida</center></th>
                      <th><center>Fecha retorno</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                  while($row = mysqli_fetch_assoc($giras_anio)){?>
                            <tr >
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td ><?=$row['nombre']?></td>
                                    <td ><?=$row['lugar_gira']?></td>
                                    <td ><?=$row['proposito']?></td>
                                    <td ><?=$row['fecha_salida']?></td>
                                    <td ><?=$row['fecha_retorno']?></td>
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

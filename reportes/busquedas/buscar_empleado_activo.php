<?php
require_once("../reportes.class.php");
$tabla = new reportes();
$tabla_empleados_a = $tabla->traer_tabla_empleados_activo($_POST['estado']);
 ?>
 <div class="panel-body">



<?php if ($tabla_empleados_a->num_rows){?>

  <div class="row mt">
    <div class="col-lg-12 col-md-12 col-sm-12">

        				<div class="showback">
                  <div class="anti_desborde_scroll_horizontal">

            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="categorias-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Nombre</center></th>
                      <th><center>Identidad</center></th>
                      <th><center>Dependencia</center></th>
                      <th><center>Cargo</center></th>
                      <th><center>Categoria</center></th>
                      <th><center>Estado</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                  while($row = mysqli_fetch_assoc($tabla_empleados_a)){?>
                            <tr >
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td ><?=$row['nombre']?></td>
                                    <td ><?=$row['tarjeta_identidad']?></td>
                                    <td ><?=$row['dependencia']?></td>
                                    <td ><?=$row['cargo']?></td>
                                    <td ><?=$row['categoria']?></td>
                                    <td ><?=$row['estado']?></td>

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

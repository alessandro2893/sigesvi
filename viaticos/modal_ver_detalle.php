<?php
require_once("viatico.class.php");
$tabla = new administracion();
//echo $_POST['t_empleado'];
$empleados_gira= $tabla->empleados_gira($_POST['cgira']);

?>
<div class="panel panel-info modal-dialog modal-lg">
  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <div class="panel-heading"> EMPLEADOS QUE SE DIRIGEN A LA GIRA DE <?=$_POST['lgira']?> </div>

    <div class="panel-body">
      <?php if ($empleados_gira->num_rows){ ?>
        <div class="anti_desborde_scroll_horizontal">
              <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="t_ver_detalle_dt">
                  <thead>
                      <tr>
                        <th><center>#</center></th>
                        <th><center>NOMBRE EMPLEADO</center></th>
                        <th><center>CARGO</center></th>
                        <th><center>DEPENDENCIA</center></th>
                        <th><center>CATEGORIA</center></th>
                        <th><center>LUGAR GIRA</center></th>
                        <th><center>PROPOSITO</center></th>
                      </tr>
                  </thead>
                  <tbody>
    <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                    <?php
                    $i=0;

                    while(@$row = mysqli_fetch_assoc(@$empleados_gira)){?>
                         <tr class="">
                             <td><center><?=$i+1;$i++;?></center></td>
                             <td><center><?=$row['nombre'];?></center></td>
                             <td><center><?=$row['cargo'];?></center></td>
                             <td><center><?=$row['dependencia'];?></center></td>
                             <td><center><?=$row['categoria'];?></center></td>
                             <td><center><?=$row['lgira'];?></center></td>
                             <td><center><?=$row['proposito'];?></center></td>
                       <?php }?>
                  </tbody>
              </table>
</div>
                <?php } ?>
                <div class="form-group">
                <center><button type="button" class="btn btn-success" data-dismiss="modal">CERRAR</button></center>
                </div>

    </div>
  </div>


  <script type="text/javascript">
  $(document).ready(function(){
  //alert(2);
  $('#t_ver_detalle_dt').dataTable();
    });
  </script>

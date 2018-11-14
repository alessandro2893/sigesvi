<?php
require_once("../assets/php/conexion.php");
$cogira=$_POST['cgira'];
$traer_nombre_emp = "SELECT tbl_emp.id_empleado as id_empleado, concat(tbl_emp.nombre1,' ',tbl_emp.apellido1) as nombre
FROM tbl_man_empleados as tbl_emp
inner join tbl_unidad_solicitante on tbl_emp.id_empleado=tbl_unidad_solicitante.id_empleado_fk
inner join tbl_servicios_generales on tbl_unidad_solicitante.id_usoli= tbl_servicios_generales.id_usoli_fk
where tbl_servicios_generales.codigo_gira='$cogira' and tbl_servicios_generales.estado='SERVIGE'; ";
// echo($cogira);
$query = mysqli_query($mysqli,$traer_nombre_emp);
?>


<div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >ELIMINAR EMPLEADO PARA LA GIRA <?=$_POST['lgira']?></h4>

    </div>


        <form   action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad" style="
    margin-left: 20px;">
              <input type="hidden"  id="cgira"  value="<?=$_POST['cgira']?>">
              <!-- <input type="hidden"  id="id_cance"  value="<?=$_POST['id']?>"> -->
              <input type="hidden"  id="cant"  value="<?=$_POST['cantidad']?>">
              <input type="hidden"  id="plca"  value="<?=$_POST['placa']?>">

              <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                <label class="col-sm-3 control-label" for="textinput">Seleccione Empleado</label>
                <div class="col-sm-10">
                <select class="form-control"  name="rol_usuario" id="select_empleado" style="overflow-x: auto;" style="text-transform:uppercase; font-weight: bold;">
                  <option value="">SELECCIONE EMPLEADO QUE DESEA CANCELAR VIAJE</option>
                  <?php
                      while ($fila= mysqli_fetch_array($query)){ ?>
                      <option nom="<?=$fila['nombre']?>" value="<?=$fila['id_empleado']?>"><?=$fila['nombre']?></option>
                  <?php }; ?>
                </select>
              </div>
              </div>
              <br>

              <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Motivo de Cancelacion</label>

                    <div class="col-sm-8">
                    <textarea  rows="5" class="form-control"  style="text-transform:uppercase; font-weight: bold;"   id="detalle"
                      maxlength="200" autocomplete="off" value=""></textarea>
                   </div>
            </div>
            <br>
            <br>
      <center><div class="form-group">
              <input id="btn_can_empleado" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_cancelar_empleado($('#select_empleado').val(),
                                       $('#detalle').val(),
                                       $('#cgira').val(),
                                       $('#cant').val(),
                                       $('#plca').val())
                                       ;return false;" value="ELIMINAR EMPLEADO DE LA GIRA"/>
             <button type="button" class="btn btn-danger" data-dismiss="modal">CERRAR</button>

       </div></center>

         <div id="msg_can_empleado">
         </div>
     </div>
     </form>
    </div>
  </div>

<!-- <script src="viaticos/funciones_viaticos.js"></script> -->

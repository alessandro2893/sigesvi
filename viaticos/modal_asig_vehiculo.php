<?php
// require_once("../assets/php/conexion.php");
require_once("viatico.class.php");
$tabla = new administracion();
$query_vehiculos = $tabla->traer_vehiculos();
$fecha_max = $tabla->traer_fechas();

$fecha_actual = date("Y-m-d");
?>


<div class="modal-md modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">ASIGNAR VEHICULO A LA GIRA</h4>
    </div>


    <div class="modal-body">
      <form  onsubmit="fn_asignar_vehiculo($('#cgira').val(),
                               $('#cant').val(),
                               $('#f_salida').val(),
                               $('#f_retorno').val(),
                               $('#lgira').val(),
                               $('#kilometraje').val(),
                               $('select#select_vehiculo').val(),
                               $('#id_soli').val())
                               ;return false;" rol"form">

           <input type="hidden"  id="id_soli"  value="<?=$_POST['id']?>">
           <input type="hidden"  id="cgira"  value="<?=$_POST['cgira']?>">


          <div class="row">
              <div class="col-md-4">
                  <label for="">Cantidad Empleado</label><br>
                  <input disabled style="text-transform: uppercase;  font-weight: bold;" value="<?=$_POST['cantidad']?>" id="cant" type="text"
                   onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="8">

                </div>
          </div>

          <br>

          <div class="row">
                <div class="col-md-4">
                    <label for="">Zona a la que viajara</label><br>
                    <input disabled style="text-transform: uppercase;  font-weight: bold;" required value="<?=$_POST['zona']?>" id="zona" type="text"
                     onkeypress="return validarEspacioNumero(event)" class="form-control" autocomplete="off"  maxlength="8">

                </div>

                <div class="col-md-4">
                    <label for="">Fecha Salida</label><br>
                    <input  required style="font-weight: bold;" id="f_salida"
                    class="form-control" autocomplete="off" value="<?=$_POST['f_salida']?>" type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" required>
                </div>

                  <div class="col-md-4">
                      <label for="">Fecha Retorno</label><br>
                      <input  required style="font-weight: bold;" id="f_retorno"
                      class="form-control" autocomplete="off" value="<?=$_POST['f_retorno']?>" type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" required>
                  </div>
            </div>

          <br>

          <div class="row">
            <div class="col-md-12">
                <label for="">Lugar de la Gira</label><br>
                <input disabled style="text-transform: uppercase;   font-weight: bold;" required value="<?=$_POST['lgira']?>" id="lgira" type="text"
                 onkeypress="return validarEspacioNumero(event)" class="form-control" autocomplete="off"  maxlength="20">
            </div>

          </div>

          <br>


          <div class="row">


              <div class="col-md-8">
                <label for="">Seleccionar Vehiculo</label><br>
                <select class="form-control" id="select_vehiculo" required style="font-weight: bold;">
                   <?php
                    while ($fila= mysqli_fetch_array($query_vehiculos)){?>
                      <option value="<?=$fila['id_vehiculo']?>"><?=$fila['tipo_vehiculo']?></option>
                     <?php }; ?>
                </select>
              </div>

              <div class="col-md-4">
                  <label for="">Kilometraje</label><br>
                  <input style="text-transform:uppercase; font-weight: bold;  text-align: right;" id="kilometraje" required type="text" onkeypress="return validarNumeros(event)"
                  minlength="6" onkeyup="return zerofill(6,0)" value="000000" class="form-control" autocomplete="off"  maxlength="7">
              </div>
          </div>

          <br>

         <center>
            <div class="row">
              <div class="form-group">
                <input type="submit" id="btn_asig_vehiculo" class="btn btn-success" href="javascript:;" value="ASIGNAR VEHICULO"/>
                <button type="button" class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
             </div>
            </div>
        </center>

        <div class="row">
          <div id="msg_asignar">
          </div>
        </div>
      </form>
    </div>

  </div>
</div>

<script>
function zerofill (pos,fill)
{
var num=$('#kilometraje').val();
$('#kilometraje').val((fill + num).slice(-6));
  // console.log( (fill + num).slice(-4) );
  // "0001"
  // alert('ENTRO');
  // var data=document.getElementById("correlativo").value;
  // console.log(data.padStart(pos, fill));
}

</script>
  <!-- <script src="viaticos/funciones_viaticos.js"></script> -->

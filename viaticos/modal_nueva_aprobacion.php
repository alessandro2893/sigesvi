<?php
require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_cta, numero_cuenta FROM tbl_man_cuentas_bancarias WHERE estado ='ACTIVO'";
$query = mysqli_query($mysqli,$sentencia);
?>

<div class="modal-dialog modal-md" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 style="overflow-x: auto;" class="modal-title" >APROBAR SOLICITUD PARA <?=$_POST['nombre']?></h4>

    </div>


        <form  onsubmit="fn_nueva_aprobacion(
                                 $('#id_cta').val(),
                                 $('#tipo_transaccion').val(),
                                 $('#folio').val(),
                                 $('#n_transaccion').val(),
                                 $('#observacion').val(),
                                 $('#correlativo').val(),
                                 $('#anticipo').val(),
                                 $('#montog').val(),
                                 $('#id_soli_fk').val());return false;"
         action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad" >
            <div class="form-group">

              <input type="hidden"  id="id_soli_fk"  value="<?=$_POST['id']?>">
              <input type="hidden"  id="correlativo"  value="<?=$_POST['correlativo']?>">

              <div class="form-group">
                  <label class="col-sm-3 control-label" for="textinput">Cuenta Empleado</label>
                  <div class="col-sm-8">
                    <input disabled type="text" class="form-control" style=" font-weight: bold; " id="cta_bancaria" autocomplete="off" onkeypress="return validarNumeros(event)" value="<?=$_POST['cta_bancaria']?>">
                  </div>
              </div>

      <div class="form-group">
        <label class="col-sm-3 control-label" for="textinput">Monto</label>
        <div class="col-sm-8">
          <input disabled type="text" class="form-control" id="montog"
          style=" font-weight: bold; text-align: right;"  onkeypress="return validarNumeroPunto(event)" autocomplete="off" value="<?=$_POST['monto']?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-3 control-label" for="textinput">Dias Gira</label>
        <div class="col-sm-8">
          <input disabled type="text" class="form-control" id="dias"
          style="text-transform:uppercase; font-weight: bold;" onkeypress="return validarNumeroPunto(event)" autocomplete="off" value="<?=$_POST['dgira']?>">
        </div>
      </div>

      <div class="form-group">
          <label class="col-sm-3 control-label" for="textinput">Cuenta INHGEOMIN</label>
         <div class="col-sm-8">
           <select class="form-control" id="id_cta" style="text-transform:uppercase; font-weight: bold;">
              <?php
               while ($fila= mysqli_fetch_array($query)){ ?>
                <option value="<?=$fila['id_cta']?>"><?=$fila['numero_cuenta']?></option>

             <?php }; ?>
           </select>
         </div>
      </div>

      <div class="form-group">
          <label class="col-sm-3 control-label" for="textinput">TIPO DE TRANSACCION</label>
       <div class="col-sm-8">
         <select class="form-control" id="tipo_transaccion" required style="text-transform:uppercase; font-weight: bold;">
           <option value="">SELECCIONE TIPO TRANSACCION</option>
             <option value="CHEQUE">CHEQUE</option>
              <option value="DEPOSITO">DEPOSITO</option>
         </select>
       </div>
     </div>

        <div class="form-group" id="div1" style="display: none;">
            <label class="col-sm-3 control-label" for="textinput">F/01</label>
          <div class="col-sm-8">
            <input type="text" maxlength="40" class="form-control" onkeypress="return validarNumeros(event)" id="folio" style="text-transform:uppercase; font-weight: bold;"
            autocomplete="off">
          </div>
        </div>

        <div class="form-group" id="div2" style="display: none;">
            <label class="col-sm-3 control-label" for="textinput">N° Transacción</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" required id="n_transaccion" maxlength="10" onkeypress="return validarNumeros(event)" style="text-transform:uppercase; font-weight: bold;" autocomplete="off">
          </div>
          <br>
          <br>
<br>
          <!-- <div class="form-group" id="div2" style="display: none;"> -->
            <label class="col-sm-3 control-label" for="textinput">Anticipo</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" required maxlength="10" onkeypress="return validarNumeros(event)" id="anticipo" style="text-transform:uppercase; font-weight: bold; text-align: right;" autocomplete="off">
          <!-- </div> -->
          </div>

        </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="textinput">Observacion</label>
        <div class="col-sm-8">
          <textarea  rows="2" class="form-control"  style="text-transform:uppercase; font-weight: bold;"  id="observacion"
          maxlength="140" autocomplete="off"  value=""></textarea>
       </div>
    </div>

    </div>

    <div id="msg_aprobar">
    </div>

      <center><div class="form-group">
              <input id="btn_nueva_apro" type="submit" class="btn btn-success" href="javascript:;"
               value="APROBAR Y GENERAR REPORTE"/>



        <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
          </center>
      </form>
</div>

    </div>
  </div>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $("#tipo_transaccion").on('change',function(){
      var SelectValue=$(this).val();
      // alert(SelectValue);
       if(SelectValue =="DEPOSITO"){
           $("#div2").show();
           $("#div1").hide();

       }else if(SelectValue =="CHEQUE"){
                  $("#div2").show();
                  $("#div1").show();
      }

    });
});


$("#anticipo").on({
  "focus": function (event) {
      $(event.target).select();
  },
  "keyup": function (event) {
      $(event.target).val(function (index, value ) {
          return value.replace(/\D/g, "")
                      .replace(/([0-9])([0-9]{2})$/, '$1.$2')
                      // .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
      });
  }
});


</script>

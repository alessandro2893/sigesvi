<?php
require_once("../assets/php/conexion.php");
$fecha_actual = date("Y-m-d");
$query_corre="SELECT LPAD((if((max(correlativo)+1) is NULL,1,max(correlativo)+1)),6,'0') as correlativo from tbl_desglose_gastos;";
$consultar=$mysqli->query($query_corre);
$arreglo = mysqli_fetch_assoc($consultar);
$correlativo=$arreglo['correlativo'];
?>

<div class="container">
      <div class="panel-body">
        <form id="form" class="form-horizontal" role="form">
          <input type="hidden"  id="input_id_apr_fk">
          <input type="hidden"  id="input_id_empleado">
          <input type="hidden"  id="input_id_sgenerales">
          <input type="hidden"  id="input_id_usoli">
          <input type="hidden"  id="input_id_vehiculo">

<div class="row">
        <div class="form-group col-md-5">
          <label class="col-md-2 control-label" for="textinput">Correlativo</label>
            <div class="col-md-7 col-lg-8">
              <input id="input_correlativo" disabled value="<?=$correlativo?>" maxlength="16" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold; text-align: right;"/>
            </div>
        </div>

           <div class="form-group col-lg-9">
              <label class="col-md-1 control-label" for="textinput">Lugar</label>
               <div class="col-md-7 col-lg-8">
                 <input autocomplete="off" id="input_lgira" disabled  type="text"  class="form-control" style="text-transform:uppercase; font-weight: bold; " />
              </div>
            </div>
</div> <!--Cierre segundo row-->

<div class="row"> <!--Tercer row-->
  <div class="form-group col-md-4">
     <label class="col-md-4 control-label" for="textinput">Viaticos Diarios</label>
      <div class="col-md-7 col-lg-8">
        <input disabled autocomplete="off"   id="input_vdiarios" maxlength="16" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold; text-align: right; "/>
</div>
</div>

      <div class="form-group col-md-4">
          <label class="col-md-3 control-label" for="textinput">Dias</label>
      <div class="col-md-7 col-lg-6">
        <input disabled autocomplete="off" id="input_vdias"  maxlength="4" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold;"/>
        </div>
      </div>



    <div class="form-group col-lg-4">
       <label class="col-md-3 control-label"  for="textinput">Lps.</label>
        <div class="col-md-7 col-lg-6">
          <input autocomplete="off" disabled id="lps_totald"    maxlength="16" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold; text-align: right;"/>
    </div>
    </div>

</div><!--Cierre Cuarto row-->


<div class="row"><!--Sexto row-->
  <div class="form-group  col-lg-8">
     <label class="col-md-2 control-label" for="textinput">Otros Gastos</label>
      <div class="col-md-10 col-lg-9">
          <input autocomplete="off" placeholder="Descripción de otros gastos" id="input_ogastos"  maxlength="40" type="text"   class="form-control pwd1 enter" required style="text-transform:uppercase; font-weight: bold; " />
  </div>
  </div>

   <div class="form-group col-md-3">
         <label class="col-md-3 control-label" for="textinput">Lps.</label>
     <div class="col-md-7 col-lg-8">
       <input value="0" autocomplete="off" id="lps_otrogastos" onkeypress="return validarNumeros(event);" maxlength="7" type="text"   class="form-control pwd1 enter" required style="text-transform:uppercase; font-weight: bold; text-align: right;" />
      </div>
   </div>

</div><!--Cierre Sexto row-->


<div class="row"><!--Sexto row-->
  <div class="form-group  col-lg-8">
     <label class="col-md-2 control-label" for="textinput">Gastos de Combustible</label>
      <div class="col-md-10 col-lg-9">
        <input autocomplete="off" placeholder="Descripción de gastos de combustible" id="input_gcombustible"  maxlength="40" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold; "/>
  </div>
  </div>

   <div class="form-group col-md-3">
         <label class="col-md-3 control-label" for="textinput">Lps.</label>
     <div class="col-md-7 col-lg-8">
       <input value="0" autocomplete="off" id="lps_gcombusti" onkeypress="return validarNumeros(event);" maxlength="7" type="text"  class="form-control" required style="text-transform:uppercase; font-weight: bold; text-align: right;"/>
      </div>
   </div>

</div><!--Cierre Sexto row-->


<div class="row"><!--Sexto row-->
  <div class="form-group  col-lg-8">
     <label class="col-md-2 control-label" for="textinput">Observaciones</label>
      <div class="col-md-10 col-lg-9">
        <textarea  rows="2" class="form-control" onkeypress="return validarEspacioComa(event);" style="text-transform:uppercase; font-weight: bold;"  id="input_observaciones"
          maxlength="70" autocomplete="off" value=""></textarea>

  </div>
  </div>

   <div class="form-group col-md-3">
     <label class="col-md-3 control-label" for="textinput">Subtotal</label>
     <div class="col-md-7 col-lg-8">
       <input disabled autocomplete="off" id="input_subtotal" maxlength="16" type="text" style="font-weight: bold; text-align: right" class="form-control pwd1 enter" required />
      </div>
   </div>


</div><!--Cierre Sexto row-->

<div class="row"> <!--Tercer row-->
  <div class="form-group col-md-4">
     <label class="col-md-4 control-label" for="textinput">Tipo de Transacción</label>
      <div class="col-md-7 col-lg-8">
        <input autocomplete="off" disabled id="input_tipotrans"  maxlength="200" type="text"  class="form-control pwd1 enter" required style="text-transform:uppercase; font-weight: bold;"/>
</div>
</div>

      <div class="form-group col-md-4">
          <label class="col-md-4 control-label" for="textinput">N Transacción</label>
      <div class=" col-lg-5">
        <input  autocomplete="off" disabled id="input_numerotrans"  maxlength="200" type="text"  class="form-control pwd1 enter" required style="text-transform:uppercase; font-weight: bold; "/>
        </div>
      </div>



    <div class="form-group col-lg-4">
       <label class="col-md-3 control-label"  for="textinput">Anticipo Recibido</label>
        <div class="col-md-7 col-lg-6">
          <input autocomplete="off" disabled id="input_antrecibido"  maxlength="16" type="text"    class="form-control pwd1 enter" required style="text-transform:uppercase; font-weight: bold; text-align: right" />
    </div>
    </div>

</div><!--Cierre Cuarto row-->



  <div class="row"><!--Sexto row-->
  <div class="form-group col-md-4">
    <div class="col-md-7 col-lg-8">
    </div>
  </div>

  <div class="form-group col-md-4">
    <div class="col-md-7 col-lg-8">
    </div>
  </div>


   <div class="form-group col-md-3">
         <label class="col-md-4 control-label" id="lbl_saldo" for="textinput"></label>
     <div class="col-md-7 col-lg-8">
       <input autocomplete="off" disabled id="input_saldos" maxlength="16" type="text"  class="form-control" style="font-weight: bold; text-align: right" />
      </div>
   </div>
</div><!--Cierre Sexto row-->


        <center><div class="form-group">
        <input id="btn_desglosar" type="button" class="btn btn-success" href="javascript:;"
        onclick="fn_desglosar($('#input_id_apr_fk').val(),
                                   $('#input_id_empleado').val(),
                                   $('#input_id_sgenerales').val(),
                                   $('#input_id_usoli').val(),
                                   $('#input_id_vehiculo').val(),
                                   $('#input_correlativo').val(),
                                   $('#input_lgira').val(),
                                   $('#input_vdiarios').val(),
                                   $('#input_vdias').val(),
                                   $('#lps_totald').val(),
                                   $('#input_ogastos').val(),
                                   $('#lps_otrogastos').val(),
                                   $('#input_gcombustible').val(),
                                   $('#lps_gcombusti').val(),
                                   $('#input_subtotal').val(),
                                   $('#input_numerotrans').val(),
                                   $('#input_antrecibido').val(),
                                   $('#input_saldos').val(),
                                   $('#input_observaciones').val(),
                                   $('#input_tipotrans').val(),
                                   $('#lbl_saldo').text())
                                   ;return false;" value="GUARDAR"/>

            <button type="button" id="btn_can_desglose"class="btn btn-danger" >CANCELAR</button>

        </center>
<div id="msg_desglosar"> </div>
   </div>


</form>
</div>

</div>



<script type="text/javascript">

$("#lps_otrogastos").on({
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

$("#lps_gcombusti").on({
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


$("#input_subtotal").on({
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


$(document).ready(function() {
    $("#desglosar").on('click',function(){
      var lgira = $("#lgira").val();
      var id_aprobacion = $("#id_apr_fk").val();
      var id_vehiculo = $("#id_vehiculo").val();
      var id_empleado = $("#id_empleado").val();
      var id_usoli = $("#id_usoli").val();
      var id_sgenerales = $("#id_sgenerales").val();
      var tipo_transaccion = $("#tipo_transaccion").val();
      var n_transaccion = $("#n_transaccion").val();
      var dias = $("#dias").val();
      var viaticos_diarios = $("#viaticos_diarios").val();
      var total_viaticos = $("#total_viaticos").val();
      var anticipo = $("#anticipo").val();

      //  alert(tipo_transaccion);
      $("#input_lgira").val(lgira);
      $("#input_id_apr_fk").val(id_aprobacion);
      $("#input_id_vehiculo").val(id_vehiculo);
      $("#input_id_empleado").val(id_empleado);
      $("#input_id_usoli").val(id_usoli);
      $("#input_id_sgenerales").val(id_sgenerales);
      $("#input_tipotrans").val(tipo_transaccion);
      $("#input_numerotrans").val(n_transaccion);
      $("#input_vdias").val(dias);
      $("#input_vdiarios").val(viaticos_diarios);
      $("#lps_totald").val(total_viaticos);
      $("#input_subtotal").val(total_viaticos);
      $("#input_antrecibido").val(anticipo).keyup();
  });
});
</script>

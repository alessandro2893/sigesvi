<div class="container">
      <div class="panel-body">
        <form id="form" class="form-horizontal" role="form">

          <div class="row">

            <div class="form-group col-md-6">
            </div>

           <div class="form-group col-md-6">
           <label class="col-md-3 control-label" for="textinput">Nº Solicitud viaticos</label>
            <div class="col-md-7 col-lg-8">
              <input  id="correlativo" onkeyup="return zerofill(6,0)" onkeypress="return validarNumeros(event)"  value="000000"  style="text-transform:uppercase; font-weight: bold;  text-align: right;" type="text" class="form-control"  autocomplete="off" placeholder="CORRELATIVO"  maxlength="7">
            </div>
          </div>
        </div>


              <!--Cierre Primer row-->

              <input type="hidden"  id="id_apr_fk">
              <input type="hidden"  id="id_empleado">
              <input type="hidden"  id="id_vehiculo">
              <input type="hidden"  id="id_usoli">
              <input type="hidden"  id="id_sgenerales">
              <input type="hidden"  id="dias">
              <input type="hidden"  id="viaticos_diarios">
              <input type="hidden"  id="total_viaticos">
              <input type="hidden"  id="anticipo">

                   <div class="row"> <!--Segundo row-->
                              <div class="form-group col-md-6">
                                 <label class="col-md-3 control-label" for="textinput">Nombre </label>
                                  <div class="col-md-7 col-lg-8">
                                 <input disabled="" onkeypress="return validarEspacio(event)" style="text-transform: uppercase; font-weight: bold;" id="nombre" type="text" class="form-control" autocomplete="off" placeholder="NOMBRE"  maxlength="45">
                            </div>
                          </div>

                          <div class="form-group col-md-6">
                              <label class="col-md-3 control-label" for="textinput">Categoria</label>
                          <div class="col-md-7 col-lg-8">
                               <input disabled="" id="cate" type="text" class="form-control" onkeypress="return validarLetras(event)" autocomplete="off" placeholder="CATEGORIA" style="text-transform: uppercase; font-weight: bold;" maxlength="9">
                            </div>
                          </div>
                   </div> <!--Cierre segundo row-->



                         <div class="row"> <!--Tercer row-->
                           <div class="form-group col-md-6">
                              <label class="col-md-3 control-label" for="textinput">Tipo Transacción </label>
                               <div class="col-md-7 col-lg-8">
                              <input disabled=""  id="tipo_transaccion" style="text-transform: uppercase; font-weight: bold;" type="text" class="form-control" onkeypress="return validarLetras(event)" autocomplete="off" placeholder="TIPO TRANSACCION"  maxlength="45">
                            </div>
                          </div>

                           <div class="form-group col-md-6">
                              <label class="col-md-3 control-label" for="textinput">N° Transacción </label>
                               <div class="col-md-7 col-lg-8">
                              <input disabled=""  id="n_transaccion" style="text-transform: uppercase; font-weight: bold;" type="text" class="form-control" onkeypress="return validarNumeros(event)" autocomplete="off" placeholder="N° TRANSACCION"  maxlength="45">
                            </div>
                          </div>
                         </div> <!--Cierre tercer row-->


                         <div class="row"> <!--Cuarto row-->
                             <div class="form-group col-md-6">
                                    <label class="col-md-3 control-label" for="textinput">Cargo del empleado </label>
                               <div class="col-md-7 col-lg-8">
                                    <input  disabled="" id="cargo" style="text-transform: uppercase; font-weight: bold;" type="text" onkeypress="return validarEspacio(event)" class="form-control" autocomplete="off" placeholder="CARGO DEL EMPLEADO" required="" input="" maxlength="45">
                               </div>
                             </div>

                             <div class="form-group col-md-6">
                                <label class="col-md-3 control-label" for="textinput">Zona a la que viajó</label>
                                <div class="col-md-7 col-lg-8">
                                  <input disabled="" value="" id="zona" type="text" onkeypress="return validarEspacioNumero(event)" class="form-control" autocomplete="off" placeholder="ZONA DE VIAJE"  maxlength="15" style="text-transform: uppercase; font-weight: bold;">
                                </div>
                            </div>
                         </div><!--Cierre Cuarto row-->




                         <div class="row"><!-- Septimo row-->
                              <div class="form-group col-md-6">
                               <label class="col-md-3 control-label" for="textinput">Fecha de salida</label>
                                 <div class="col-md-7 col-lg-8">
                                 <input disabled="" id="f_salida" style=" font-weight: bold;" class="form-control"  type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" value="">
                             </div>
                           </div>

                           <div class="form-group col-md-6">
                              <label class="col-md-3 control-label" for="textinput">Fecha de retorno</label>
                                <div class="col-md-7 col-lg-8">
                                <input disabled id="f_retorno" style=" font-weight: bold;" class="form-control"  type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" value="">
                            </div>
                           </div>
                         </div><!--Cierre Septimo row-->


                         <div class="row">  <!--Noveno Row-->
                             <div class="form-group col-md-6">
                               <label class="col-md-3 control-label" for="textinput">Descripción de la Gira</label>
                             <div class="col-md-7 col-lg-8">
                                 <textarea disabled id="proposito" type="text" onkeypress="return validarEspacioNumero(event)" class="form-control" autocomplete="off"  maxlength="200" style="text-transform: uppercase; font-weight: bold;"></textarea>
                              </div>
                           </div>

                           <div class="form-group col-md-6">
                                 <label class="col-md-3 control-label" for="textinput">Lugar de la gira </label>
                             <div class="col-md-7 col-lg-8">
                                   <input disabled="" id="lgira" style="text-transform: uppercase; font-weight: bold;" type="text" class="form-control" onkeypress="return validarEspacio(event)" autocomplete="off" placeholder="LUGAR DE LA GIRA"  maxlength="45">
                              </div>
                           </div>
                         </div><!--cierre Noveno row-->


                         <div class="row"> <!--Segundo row-->
                                <div class="col-sm-3 text-center">
                                  <input id="desglosar" style="display:none;" type="button" class="btn btn-success prueba"  data-toggle="modal" data-target="#m_desglose" value="DESGLOSAR">
                                </div>

                          </div> <!--Cierre segundo row-->

                               <center>
                               <div id="resultado">
                               </div>
                             </center>
</form>
</div>

</div>

<script src="viaticos/funciones_viaticos.js"></script>

<script>
function zerofill (pos,fill)
{
var num=$('#correlativo').val();
$('#correlativo').val((fill + num).slice(-6));
  // console.log( (fill + num).slice(-4) );
  // "0001"
  // alert('ENTRO');
  // var data=document.getElementById("correlativo").value;
  // console.log(data.padStart(pos, fill));
}

</script>

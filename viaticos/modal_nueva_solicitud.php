<?php
// require_once("../assets/php/conexion.php");
require_once("viatico.class.php");
$tabla = new administracion();
$query_depto = $tabla->traer_deptos();
$query_zona = $tabla->traer_zonas();
$correlativo = $tabla->traer_correlativo();
$fecha_max = $tabla->traer_fechas();

$fecha_actual = date("Y-m-d");
?>
<div class="modal-md modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">

      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 style="overflow-x: auto;" class="modal-title">GENERAR NUEVA SOLICITUD PARA <?=$_POST['nombre']?></h4>

    </div>


    <div class="modal-body">
      <form  onsubmit="fn_nueva_solicitud($('#id_cate').val(),
                               $('#f_salida').val(),
                               $('#correlativo').val(),
                               $('#f_retorno').val(),
                               $('#cbx_departamento').val(),
                               $('#cbx_municipio').val(),
                               $('#pgira').val(),
                               $('#diaE').val(),
                               $('#diaD').val(),
                               $('#viaticos_diarios').val(),
                               $('#total_viaticos').val(),
                               $('select#select_zona').val(),
                               $('#id_soli').val());return false;" rol"form">

        <input type="hidden" id="id_cate" value="<?=$_POST['id_cate']?>">
        <input type="hidden"  id="id_soli"  value="<?=$_POST['id']?>">


          <div class="row">
              <div class="col-md-4">
                  <label for="">Nº</label><br>
                  <input disabled style="text-transform: uppercase;  font-weight: bold;" value="<?=$correlativo?>" id="correlativo" type="text"
                  class="form-control" autocomplete="off"  maxlength="8">

                </div>
          </div>

          <br>

          <div class="row">
                <div class="col-md-4">
                    <label for="">Zona a la que viajara</label><br>
                    <select class="form-control"   id="select_zona" required>
                       <?php
                        while ($fila= mysqli_fetch_array($query_zona)){ ?>
                         <option value="<?=$fila['id_zona']?>"><?=$fila['nombre_zona']?></option>
                      <?php }; ?>
                  </select>
                </div>

                <div class="col-md-4">
                    <label for="">Fecha Salida</label><br>
                    <input  style="font-weight: bold;" id="f_salida"
                    class="form-control" autocomplete="off"  type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" required>
                </div>

                  <div class="col-md-4">
                      <label for="">Fecha Retorno</label><br>
                      <input  style="font-weight: bold;" id="f_retorno"
                      class="form-control" autocomplete="off"  type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" required>
                  </div>
            </div>

          <br>

          <div class="row">
            <div class="col-md-2">
              <label for="">Dias Gira</label><br>
              <input style="font-weight: bold;" id="diaE" onkeypress="return validarNumeros(event);" placeholder="D" disabled maxlength="2" class="form-control " autocomplete="off"  type="text" required>
            </div>

                    <!-- <label style="font-weight: bold;" for="">.</label><br> -->

            <div class="col-md-2">
              <label for="">Propención</label><br>
              <input style="font-weight: bold;" id="diaD" maxlength="2" onkeypress="return validarNumeros(event);"  placeholder="H" value="0" class="form-control " autocomplete="off"  type="text" >
          </div>

              <div class="col-md-4">
                  <label for="">Viaticos Diarios</label><br>
                  <input style="font-weight: bold;" disabled id="viaticos_diarios" onkeypress="return validarNumeros(event);"  maxlength="2" class="form-control" autocomplete="off"  type="text" required>
              </div>

              <div class="col-md-4">
                  <label for="">Total Viaticos</label><br>
                  <input style="font-weight: bold;" disabled id="total_viaticos" onkeypress="return validarNumeros(event);"  maxlength="20" class="form-control" autocomplete="off"  type="text" required>
              </div>
          </div>

          <br>

          <div class="row">
              <div class="col-md-6">
                  <label for="">Lugar Gira (Departamento)</label><br>
                  <select class="form-control" name="cbx_departamento" id="cbx_departamento" required>
                          <option value="">Departamento</option>
                      <?php
                          while ($fila= mysqli_fetch_array($query_depto)){ ?>
                          <option  value="<?=$fila['id_departamento']?>"><?=$fila['departamento']?></option>
                      <?php }; ?>
                  </select>
              </div>

              <div class="col-md-6" id="div_municipio" style="display:none;" >
                <label >Lugar Gira (Municipio)</label><br>
                <select class="form-control" name="cbx_municipio"  id="cbx_municipio" required>
                <<option value="" >Municipio</option>
                </select>
              </div>
          </div>

          <br>

          <div class="row">
            <div class="col-md-12">
                <label for="">Proposito de la Gira</label><br>
                <textarea  rows="3"  class="form-control" maxlength="63"  style="text-transform:uppercase;"  id="pgira"
                  maxlength="150" autocomplete="off" required></textarea>
            </div>
          </div>

          <br>

          <div class="row">
            <div id="msg_nusolicitud">
            </div>
          </div>

         <center>
            <div class="row">
              <div class="form-group">
                <input type="submit" id="btn_enviar_solicitud"  class="btn btn-success" href="javascript:;" value="GENERAR"/>
                <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
             </div>
            </div>
        </center>


      </form>
    </div>

  </div>
</div>

  <script language="javascript">

  function checkSubmit() {
  			document.getElementById("btsubmit").value = "Enviando...";
  			document.getElementById("btsubmit").disabled = true;
  			return true;
  		}



    $(document).ready(function(){
      $("#cbx_departamento").change(function () {

        $("#cbx_departamento option:selected").each(function () {
          id_departamento = $(this).val();
          id_zona = $("#select_zona").val();
          // alert(id_zona);
          if (id_departamento!="") {
            $('#div_municipio').show();
          }else{
            $('#div_municipio').hide();
          }

          //  alert(id_departamento);
          $.post("viaticos/getmunicipios.php", { id_departamento: id_departamento, id_zona:id_zona }, function(data){
            $("#cbx_municipio").html(data);
          });
        });
      })

      $("#select_zona").change(function () {

        $("#select_zona option:selected").each(function () {
          id_zona = $(this).val();
           id_departamento= $("#cbx_departamento").val();
          // alert(id_zona);
          if (id_departamento!="") {
            $('#div_municipio').show();
          }else{
            $('#div_municipio').hide();
          }

          //  alert(id_departamento);
          $.post("viaticos/getmunicipios.php", { id_departamento: id_departamento, id_zona:id_zona }, function(data){
            $("#cbx_municipio").html(data);
          });
        });
      })
    });
    </script>
  <script src="viaticos/funciones_viaticos.js"></script>
  <script src="assets/js/moment.min.js"></script>

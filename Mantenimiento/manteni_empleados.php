<?php
require_once("../assets/php/conexion.php");

//$sentencia = "SELECT id_municipio, municipio FROM tbl_man_municipios";
//$query = mysqli_query($mysqli,$sentencia);

$sentencia = "SELECT id_municipio, municipio FROM tbl_man_municipios";
$query = mysqli_query($mysqli,$sentencia);

$sentencia2 = "SELECT id_categoria, categoria FROM tbl_man_categoria_empleados";
$query2 = mysqli_query($mysqli,$sentencia2);

$sentencia1 = "SELECT id_dependencia, dependencia FROM tbl_man_dependencia";
$query1 = mysqli_query($mysqli,$sentencia1);


?>
              <!-- /.col-lg-12 -->

      <!-- <div class="container" > -->
      <div class="panel-body"  id="body">
              <form id="form" class="form-horizontal" role="form">
                <div id="resultado">
                </div>
                <div id="vencida">
                </div>
                <div id="reloj_existe">
                </div>
        <div class="row">
       <div class="form-group col-md-6">
            <label class="col-md-3 control-label" for="textinput">Número de Identidad</label>
              <div class="col-md-7 col-lg-8">
             <input onkeypress="mascara_identidad(this,'-',patron_identidad,true)" style="text-transform: uppercase; font-weight: bold;" value=""
                               id="n_identidad" type="text" class="form-control" autocomplete="off"  required   maxlength="15">
             </div>
           </div>
           <div class="form-group col-md-6">
              <label class="col-md-3 control-label" for="textinput">Reloj Marcador </label>
               <div class="col-md-7 col-lg-8">
              <input disabled onkeypress="return validarNumeros(event);" style="text-transform: uppercase; font-weight: bold;"
             value="" id="reloj" type="text" class="form-control" autocomplete="off"  required   maxlength="5">
         </div>
       </div>
           </div>

<div class="row">
       <div class="form-group col-md-6">
         <label class="col-md-3 control-label" for="textinput">Primer Nombre </label>
           <div class="col-md-7 col-lg-8">
           <input  disabled onkeypress="return validarLetras(event);" style="text-transform: uppercase; font-weight: bold;"
                    id="nom1" type="text" class="form-control" autocomplete="off"  required   maxlength="45">
          </div>
      </div>
      <div class="form-group col-md-6">
           <label class="col-md-3 control-label" for="textinput">Segundo Nombre </label>
          <div class="col-md-7 col-lg-8">
           <input disabled onkeypress="return validarLetras(event);" style="text-transform: uppercase; font-weight: bold;"
                              value="" id="nom2" type="text" class="form-control" autocomplete="off"  required   maxlength="45">
         </div>
      </div>
      </div>

<div class="row">
        <div class="form-group col-md-6">
          <label  class="col-md-3 control-label" for="textinput">Primer Apellido </label>
        <div class="col-md-7 col-lg-8">
           <input disabled onkeypress="return validarLetras(event);" style="text-transform: uppercase; font-weight: bold;"
                  value="" id="apellido1" type="text" class="form-control" autocomplete="off"  required   maxlength="45">
         </div>
      </div>
        <div class="form-group col-md-6">
           <label class="col-md-3 control-label" for="textinput">Segundo Apellido </label>
      <div class="col-md-7 col-lg-8">
           <input disabled  onkeypress="return validarLetras(event);" style="text-transform: uppercase; font-weight: bold;"
          value="" id="apellido2" type="text" class="form-control" autocomplete="off"  required   maxlength="45">
      </div>
    </div>
        </div>

  <div class="row">
      <div class="form-group col-md-6">
          <label class="col-md-3 control-label" for="textinput">Teléfono</label>
      <div class="col-md-7 col-lg-8">
           <input disabled onkeypress="mascara_identidad(this,'-',patron_identidad,true)"
                    value="" id="telefono" type="text" class="form-control" autocomplete="off"  style="text-transform: uppercase; font-weight: bold;" required   maxlength="9">
        </div>
      </div>
      <div class="form-group col-md-6">
            <label class="col-md-3 control-label" for="textinput">Dependencia</label>
              <div class="col-md-7 col-lg-8">
               <select disabled class="form-control" id="depen" style="text-transform: uppercase; font-weight: bold;" >
                 <option value="default">SELECCIONE DEPENDENCIA</option>

                 <?php while ($fila= mysqli_fetch_array($query1)){ ?>
                     <option value="<?=$fila['id_dependencia']?>"><?=$fila['dependencia']?></option>
                 <?php }; ?>
              </select>
          </div>
      </div>
    </div>

      <div class="row">
    <div class="form-group col-md-6">
        <label class="col-md-3 control-label" for="textinput">Cargo</label>
        <div class="col-md-7 col-lg-8">
         <input disabled style="text-transform: uppercase; font-weight: bold;" onkeypress="return validarEspacio(event)"
                  placeholder="ejm: CONDUCTOR" id="cargo" type="text" class="form-control" autocomplete="off" required   maxlength="45">
      </div>
    </div>
        <div class="form-group col-md-6">
        <label class="col-md-3 control-label" for="textinput">Categoría</label>
      <div class="col-md-7 col-lg-8">
          <select disabled class="form-control" id="categoria" style="text-transform: uppercase; font-weight: bold;" >
            <option value="default">SELECCIONE CATEGORIA</option>
             <?php while ($fila= mysqli_fetch_array($query2)){ ?>
               <option value="<?=$fila['id_categoria']?>"><?=$fila['categoria']?></option>
             <?php }; ?>
          </select>
      </div>
    </div>
  </div>


      <div class="row">
      <div class="form-group col-md-6" id="div_tipo" style="display: none;">
         <label class="col-md-3 control-label" for="textinput">Tipo de Liencia</label>
        <div class="col-md-7 col-lg-8">
          <select  class="form-control" id="select_tipo_licencia" style="text-transform: uppercase;  font-weight: bold;" >
            <option value="default">SELECCIONE TIPO LICENCIA</option>
              <option value="NORMAL">NORMAL</option>
              <option value="PESADA">PESADA </option>
          </select>
      </div>
    </div>
    <div class="form-group col-md-6" id="div_fecha" style="display: none;">
        <label class="col-md-3 control-label" for="textinput">Fecha Vencimiento Licencia</label>
          <div class="col-md-7 col-lg-8">
          <input  id="f_vencimiento"  style="text-transform: uppercase;  font-weight: bold;" class="form-control" required type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>" value="">
      </div>
    </div>
  </div><!--CIERRE DIV FORM GROUP-->

    <div class="row">
    <div class="form-group col-md-6">
        <label class="col-md-3 control-label" for="textinput">Salario</label>
      <div class="col-md-7 col-lg-8">
       <input disabled value="" id="salario" onkeypress="return validarNumeroPunto(event);"
        type="text" class="form-control" autocomplete="off"  required maxlength="15" style="text-transform: uppercase;  font-weight: bold;">
     </div>
    </div>
    <div class="form-group col-md-6">
       <label class="col-md-3 control-label" for="textinput">Estado Civil</label>
       <div class="col-md-7 col-lg-8">
            <select disabled class="form-control" id="select_estado_civil" style="text-transform: uppercase;  font-weight: bold;" >
              <option value="default">SELECCIONE ESTADO CIVIL</option>
                <option value="SOLTERO">SOLTERO</option>
                <option value="CASADO">CASADO</option>
                <option value="DIVORCIADO">DIVORCIADO</option>
                <option value="VIUDO">VIUDO</option>
                <option value="UNION">UNION LIBRE </option>
            </select>
        </div>
      </div>
</div>

<div class="row">

           <div class="form-group col-md-6" id="div_municipio">
                <label class="col-md-3 control-label" for="textinput">Municipio</label>
                <div class="col-md-7 col-lg-8">
                    <select disabled="" class="form-control"   id="municipio" style="text-transform: uppercase;  font-weight: bold;" >
                      <option  value="default">SELECCIONE MUNICIPIO</option>

                       <?php while ($fila= mysqli_fetch_array($query)){ ?>
                         <option value="<?=$fila['id_municipio']?>"><?=$fila['municipio']?></option>
                       <?php }; ?>
                     </select>
                   </div>
         </div>
         <div class="form-group col-md-6">
           <label class="col-md-3 control-label" for="textinput">Dirección</label>
         <div class="col-md-7 col-lg-8">
            <textarea disabled id="direccion" type="texta" onkeypress="return validarEspacioNumero(event)"
            class="form-control" autocomplete="off"  required maxlength="100" style="text-transform: uppercase;  font-weight: bold;">
             </textarea>
          </div>
       </div>
 </div>

    <div class="row">
    <div class="form-group col-md-6">
       <label class="col-md-3 control-label" for="textinput">Estado</label>
      <div class="col-md-7 col-lg-8">
        <select disabled class="form-control" id="estado" style="text-transform: uppercase;  font-weight: bold;" >
          <option value="default">SELECCIONE ESTADO</option>
            <option value="ACTIVO">ACTIVO</option>
            <option value="INACTIVO">INACTIVO</option>
        </select>
    </div>
  </div>
  <div class="form-group col-md-6">
      <label class="col-md-3 control-label" for="textinput">Cuenta Bancaria</label>
    <div class="col-md-7 col-lg-8">
       <input disabled id="cta_banca" type="text" class="form-control" onkeypress="return validarNumeros(event)"
        autocomplete="off"  maxlength="20" style="text-transform: uppercase; font-weight: bold; " >
     </div>
   </div>
  </div>
  <div class="row">
    <div class="form-group col-md-6" id="div_motivo" style="display:none;">
       <label class="col-md-3 control-label" for="textinput">Motivo Inactividad</label>
       <div class="col-md-7 col-lg-8">
            <select disabled class="form-control" id="select_motivobaja" style="text-transform: uppercase; font-weight: bold; " >
              <option value="">SELECCIONE MOTIVO DE BAJA</option>
                <option value="DE BAJA">DE BAJA</option>
                <option value="VACACIONES">VACACIONES</option>
                <option value="PERMISO">PERMISO</option>
                <option value="INCAPACIDAD">INCAPACIDAD</option>
            </select>
        </div>
      </div>
  </div>

 <div class="row">
     <div class="col-sm-offset-5 col-sm-2 text-center">
      <input id="btn_crear_emp" type="submit" class="btn btn-success" href="javascript:;"
      onclick="fn_empleados($('#n_identidad').val(),
                                       $('#nom1').val(),
                                       $('#nom2').val(),
                                       $('#apellido1').val(),
                                       $('#apellido2').val(),
                                       $('#reloj').val(),
                                       $('#telefono').val(),
                                       $('select#depen').val(),
                                       $('#cargo').val(),
                                       $('select#categoria').val(),
                                       $('#salario').val(),

                                       $('select#municipio').val(),
                                       $('#direccion').val(),
                                       $('select#select_estado_civil').val(),
                                       $('select#estado').val(),
                                       $('select#select_tipo_licencia').val(),
                                       $('#f_vencimiento').val(),
                                       $('#cta_banca').val(),
                                       $('#select_motivobaja').val())
                                       ;return false;" value="CREAR/ACTUALIZAR">
 </div>


</div>


</form>
</div>

<script type="text/javascript">
  $(document).ready(function(){
    $('#estado').change(function(){
      var estado=$('#estado').val();
      if (estado==="INACTIVO") {
        $("#div_motivo").show();

      }else{
        $("#div_motivo").hide();



      }
    });

  });

  $("#salario").on({
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

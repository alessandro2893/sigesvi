<?php
// FILTRAR SI PUEDE VER - CREAR - MODIFICAR
  require_once("../assets/includes/menu.class.php");
  require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
  $menu = new menu();
  session_start();
  //echo $_SESSION['id_usuario'];
  $menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],5);// NUMERO DE OBJETO 6 VENTAS
  //print_r($menu_tabs);

$sentencia = "SELECT id_parametro, intentos, dias_habiles_pass, admin_minimo_clave, admin_maximo_clave,
admin_dias_activacion, pc_dia_min, pl_dia_max, clave_default_des, max_dias_aprobacion FROM tbl_parametros";
$consultar=$mysqli->query($sentencia);
$arreglo = mysqli_fetch_assoc($consultar);
$id_parametro=$arreglo['id_parametro'];
$intentos=$arreglo['intentos'];
$dias_habiles_pass=$arreglo['dias_habiles_pass'];
$admin_minimo_clave=$arreglo['admin_minimo_clave'];
$admin_maximo_clave=$arreglo['admin_maximo_clave'];
$admin_dias_activacion=$arreglo['admin_dias_activacion'];
$pc_dias_min=$arreglo['pc_dia_min'];
$pl_dias_max=$arreglo['pl_dia_max'];
$clave_default_des=$arreglo['clave_default_des'];
$max_dias_aprobacion=$arreglo['max_dias_aprobacion'];

?>
<br>
<h4 class="panel-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="fa fa-edit"></span>PARAMENTROS</h4>

<?php if ($menu_tabs['permiso_actualizar']==0){ ?>
  <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene permiso de actualizar para esta pantalla </strong></center></div>
<?php }else {?>

  <div class="panel-body"  >
    <div class="showback">

    <form  onsubmit="fn_actualizar_parametros($('#dias_habiles').val(),
                             $('#dias_vencimiento_contraseña').val(),
                             $('#intentos').val(),
                             $('#pc_dia_min').val(),
                             $('#pl_dia_max').val(),
                             $('#clave_default').val(),
                             $('#max_dias_aprobacion').val(),
                             $('#minimo_clave').val(),
                             $('#maximo_clave').val())
                             ;return false;" rol"form">

         <!-- <input type="hidden"  id="id_soli"  value="<?=$_POST['id']?>">
         <input type="hidden"  id="cgira"  value="<?=$_POST['cgira']?>"> -->
        <div class="row">

              <div class="col-md-3">
                  <label for="">Días Habiles Cambio Contraseña</label><br>
                  <input style="text-transform: uppercase;  font-weight: bold;" required value="<?=$dias_habiles_pass?>" id="dias_habiles" type="text"
                   onkeypress="return validarNumeros(event)" class="form-control" autocomplete="off"  maxlength="2">
              </div>

              <div class="col-md-3">
                  <label for="">Dias Plazo Vencimiento Contraseña</label><br>
                  <input style="text-transform: uppercase;  font-weight: bold;" required value="<?=$admin_dias_activacion?>" id="dias_vencimiento_contraseña" type="text"
                   onkeypress="return validarNumeros(event)" class="form-control" autocomplete="off"  maxlength="3">
              </div>

              <div class="col-md-3">
                  <label for="">Minimo de Caracteres Para Contraseña</label><br>
                  <input style="text-transform: uppercase;  font-weight: bold;" required value="<?=$admin_minimo_clave?>" id="minimo_clave" type="text"
                   onkeypress="return validarNumeros(event)" class="form-control" autocomplete="off"  maxlength="2">
              </div>

              <div class="col-md-3">
                  <label for="">Maximo de Caracteres Para Contraseña</label><br>
                  <input style="text-transform: uppercase;  font-weight: bold;" required value="<?=$admin_maximo_clave?>" id="maximo_clave" type="text"
                   onkeypress="return validarNumeros(event)" class="form-control" autocomplete="off"  maxlength="2">
              </div>
          </div>

        <br>

        <div class="row">
          <div class="col-md-3">
              <label>Intentos</label><br>
              <input  style="text-transform: uppercase;  font-weight: bold;" value="<?=$intentos?>" id="intentos" type="text"
               onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="1">
          </div>

          <div class="col-md-3">
              <label>Dias Minimos Para Gira</label><br>
              <input  style="text-transform: uppercase;  font-weight: bold;" value="<?=$pc_dias_min?>" id="pc_dia_min" type="text"
               onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="2">
          </div>

          <div class="col-md-3">
            <label>Dias Maximos Para Gira</label><br>
              <input  style="text-transform: uppercase;  font-weight: bold;" value="<?=$pl_dias_max?>" id="pl_dia_max" type="text"
               onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="2">
          </div>

          <div class="col-md-3">
            <label>Contraseña Por Defecto Reset Usuario</label><br>
              <input  style="text-transform: uppercase;  font-weight: bold;" value="<?=$clave_default_des?>" id="clave_default" type="text"
               onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="16">
          </div>
        </div>

        <br>

        <div class="row">
          <div class="col-md-3">
            <label>Dias Maximos Aprobar/Desglosar Solicitud</label><br>
              <input  style="text-transform: uppercase;  font-weight: bold;" value="<?=$max_dias_aprobacion?>" id="max_dias_aprobacion" type="text"
               onkeypress="return validarNumeros(event)" required class="form-control" autocomplete="off"  maxlength="2">
          </div>
        </div>

       <center>
          <div class="row">
            <div class="form-group">
              <input type="submit" id="btn_parametros" class="btn btn-success" href="javascript:;" value="ACTUALIZAR"/>
           </div>
          </div>
      </center>

      <div class="row">
        <div id="resultado">
        </div>
      </div>
    </form>
  </div>
</div>
<?php }; ?>

<script src="Mantenimiento/funciones_mantenimento.js"></script>

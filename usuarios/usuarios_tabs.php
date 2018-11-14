<?php
require_once("../php/admin.class.php");
require_once("../assets/includes/menu.class.php");
$usuarios = new administracion();
$fecha_max = $usuarios->dias_activacion();
$fecha_actual = date("Y-m-d");

require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_rol, rol FROM tbl_man_roles";
$query = mysqli_query($mysqli,$sentencia);


$menu = new menu();
session_start();
//echo $_SESSION['id_usuario'];
$menu_tabs = $menu->get_menu_tab($_SESSION['id_usuario'],5);// NUMERO DE OBJETO 6 VENTAS
// print_r($menu_tabs);
?>

<?php if ($menu_tabs['permiso_consultar']==0 AND $menu_tabs['permiso_insertar']==0 AND $menu_tabs['permiso_actualizar']==0){ ?>
  <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>No tiene ningun permiso asignado a esta pantalla </strong></center></div>
<?php }else {?>
  <div id="page-wrapper">
                  <div class="col-lg-12">
                    <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-user"></span> GESTION DE USUARIOS</h4>

                  </div>
                  <!-- /.col-lg-12 -->
  </div>

<div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">
      				<div class="showback">
                <!-- ###########################################################################################-->
                <ul role="tablist" class="nav nav-tabs" id="myTab">
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_actualizar']){ ?>
                    <li class="active pes"><a id="btn_ver_personal"  data-toggle="tab" role="tab" href="#ver_registros">Ver Registros</a></li>
                  <?php }; ?>

                  <?php if ($menu_tabs['permiso_insertar']){ ?>
                    <li class="pes"><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_usuario">Añadir Usuario</a></li>
                  <?php }; ?>

                  <!--<li><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_personal">Modificar/Guardar Usuario</a></li>-->
                </ul>




                <div class="tab-content" id="myTabContent">
                  <!-- ############################ ver registros ############################################-->
                  <?php if ($menu_tabs['permiso_consultar'] || $menu_tabs['permiso_actualizar']){ ?>
                  <div id="ver_registros" class="tab-pane tabs-up fade in active panel panel-default">
                      <?php include('tabla_usuarios.php') ?>
                  </div>
                  <?php }; ?>



                <!-- ############################ Responsables ############################################-->
                <?php if ($menu_tabs['permiso_insertar']){ ?>


                <div id="ingreso_usuario" class="tab-pane tabs-up fade panel panel-default">
                  <div class="panel-body">
                             <br>
                             <center><form onsubmit="fn_inserta_usuario($('select#roles').val());return false" class="form-inline formulario" rol"form" >
                               <input type="hidden" id="fk_personal" name="id_personal" >
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                          <label for="">Numero de Identidad</label>
                                            <input onkeypress="mascara_identidad(this,'-',patron_identidad,true)" name="identidad" style="text-transform: uppercase; font-weight: bold;" id="input_id_usuario" type="text" class="form-control" autocomplete="off" placeholder="Identidad Usuario" required=""  maxlength="15">
                                          </div>

                                          <div class="col-sm-3">
                                               <label for="">Nombre de Usuario</label>
                                               <input disabled="" onkeypress="return validarLetras(event);" name="nombre_usuario" style="text-transform: uppercase; font-weight: bold;" value="" id="input_n_usuario" type="text" class="form-control" autocomplete="off" placeholder="Nombre Usuario" required="" maxlength="25">
                                          </div>

                                          <div class="col-sm-3">
                                            <label for="">Correo Electronico</label>
                                            <br>
                                            <div class="col-sm-5">

                                            <input type="email" disabled required="" id="input_correo_usuario" name="correo" style=" font-weight: bold; width: 326px;;" type="text" class="form-control" autocomplete="off" placeholder="Correo Usuario" maxlength="45">
                                          </div>
                                          </div>

                                          <br>
                                          <br>
                                          <br>
                                          <br>
                                          <br>
                                              <div class="col-sm-3">
                                               <label  for="textinput">Asignar Rol</label> <br>
                                                <select class="form-control" required="" id="roles" name="roles" disabled="" style="text-transform: uppercase; font-weight: bold;">
                                                <option value="default"> Asigne Rol </option>

                                                            <?php
                                                                while ($fila= mysqli_fetch_array($query)){ ?>
                                                                <option value="<?=$fila['id_rol']?>"><?=$fila['rol']?></option>
                                                            <?php }; ?>
                                                            </select>
                                                     </div>




                                          <div class="col-sm-3">
                                              <label for="">Fecha Vencimiento de Usuario</label>
                                              <input disabled required="" id="f_vencimiento" name="f_vencimiento" style="text-transform: uppercase; font-weight: bold;" class="form-control" type="date" min="<?=$fecha_actual?>" max="<?=$fecha_max?>">
                                          </div>

                                          <div class="col-sm-3">
                                              <label for="">Contraseña Temporal</label>
                                              <input disabled id="pass_usuario" name="pass_usuario" class="form-control" type="text" required="">
                                              <button onclick="generar_pass()" type="button" class="btn btn-info"><i class="fa fa-refresh"></i></button>
                                          </div>

                                          <div class="col-sm-3">
                                              <label for="">Fecha Creacion</label>
                                              <input disabled="" class="form-control" required style="text-transform: uppercase; font-weight: bold;" type="date" value="<?=$fecha_actual?>">
                                          </div>


                                          <br>
                                          <br>
                                          <br>
                                          <br>
                                          <br>

                                          <!-- <div class="col-sm-5">
                                               <label class="col-md-7 control-label" for="textinput">Fotografia</label>
                                                 <input type="file" id="imagen" name="archivo">

                                              </div> -->
                                       </div> <!--CIERRE DIV FORM GROUP-->

                                                             <input type="hidden" id="pass_temporal" value="w6DIXRl/">
                                                         <div class=""><br><br>
                                                         <input id="crear_usuario" type="submit" class="btn btn-success" href="javascript:;" value="CREAR">
                                                  </div></form></center></div>
                                 <div id="resultado_usuario">
                               </div>
                  </div>
                  <?php }; ?>


                </div>
                </div>
                <!--<script src="assets/js/fn_mantenimientos.js"></script>-->
                <!--<script src="assets/js/plugins/datatables/jquery.dataTables-conf.js"></script>-->
                <script type="text/javascript">
                function rand_code(){
                        chars = "!!!#$%&/_()=?0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZqwertyuiopasdfghjklzxcvbnm";
                        lon = 8;
                        code = "";
                        for (x=0; x < lon; x++){
                            rand = Math.floor(Math.random()*chars.length);
                            code += chars.substr(rand, 1);
                        }
                        return code;
                    }
                function generar_pass(){
                  var c_aleatorio=rand_code();
                  $("#pass_usuario").val(c_aleatorio);
                  $("#pass_temporal").val(c_aleatorio);
                }

                function a(){
                  alert(1);
                }

                $(document).ready(function(){
                    var c_aleatorio=rand_code();
                    $("#pass_usuario").val(c_aleatorio);
                    $("#pass_temporal").val(c_aleatorio);
                });

                </script>
      				</div><!--/showback -->
</div>
</div>
<!-- <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->

<script src="assets/js/validaciones.js"></script>
<?php }; ?>

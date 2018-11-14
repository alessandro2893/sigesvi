<div id="page-wrapper">
                <div class="col-lg-12">
                  <h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-user"></span> ADMINISTRACION DE ROLES Y PERMISOS DE USUARIO</h4>

                </div>
                <!-- /.col-lg-12 -->
</div>
<div class="panel-body">

<div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">
      				<div class="showback">
                <!-- ###########################################################################################-->
                <ul role="tablist" class="nav nav-tabs" id="myTab">
                    <li class="active pes"  id="li_ver_roles" ><a id="a_ver_roles" data-toggle="tab" role="tab" href="#ver_registros">Ver roles</a></li>
                    <li class="pes" id="li_ingresar_roles" ><a id="a_ingresar_roles" data-toggle="tab" role="tab" href="#ingreso_empleado">Añadir/Editar Rol</a></li>
                  <!--<li><a id="mostrar_form_insertar" data-toggle="tab" role="tab" href="#ingreso_personal">Modificar/Guardar Usuario</a></li>-->
                </ul>


                <div class="tab-content" id="myTabContent">
                  <div id="ver_registros" class="tab-pane tabs-up fade in active panel panel-default">
                      <?php include('tabla_ver_roles.php') ?>
                  </div>

                <!-- ############################ Responsables ############################################-->
        <div id="ingreso_empleado"  class="tab-pane tabs-up fade panel panel-default ingreso_empleado">
            <div class="panel-body">
                <div class="row" >
                   <div class="form-group col-md-3">
                     <form role="form">
                        <!-- <div class="col-md-7 col-lg-7" > -->
                            <label>Ingrese Rol </label><br>
                            <!-- deje el onkeypress vacio -->

                            <input style="text-transform: uppercase;"
                                  id="input_rol" onkeypress="return validarEspacioNumero(event)" type="text" class="form-control" autocomplete="off" placeholder="BUSCAR" maxlength="45">



                        <!-- </div> -->
                    </form>
                </div>

                <div id="div_botton_grol" style="display:none;" class="form-group col-md-2">

                    <input type="button" disabled class="btn btn-success" id="guardar_rol"  href="javascript:;"
                    onclick="fn_ingrese_rol($('#input_rol').val());return false;"
                     value="  CREAR ROL"/>

                </div>

                <div id="form_ingresar_rol">
                </div>


              </div>
              <div class="row" >
                <div class="form-group col-sm-3" id="rol_existe">
                </div>
                <div class="form-group col-sm-3" id="respuesta">
                </div>


              </div>


              <div style="display:" id="div_tablaR">

              <div class="form-group" id="tabla_roles" >
              </div>
            </div>
          </div>
      </div>
</div>
</div><!--/showback -->
</div>
</div>
</div>
<!-- <script src="usuarios/usuarios.js"></script> -->

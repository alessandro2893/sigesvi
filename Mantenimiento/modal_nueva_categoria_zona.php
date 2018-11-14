<?php
//require_once("../php/admin.class.php");
//$usuarios = new administracion();
//$estado = $usuarios->get_modal_estado($_POST['usuario']);
//echo $_POST['usuario'];
require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_zona, nombre_zona FROM tbl_man_zonas ORDER BY nombre_zona";
$query = mysqli_query($mysqli,$sentencia);
$sentencia2 = "SELECT id_categoria, categoria FROM tbl_man_categoria_empleados ORDER BY  categoria";
$query2 = mysqli_query($mysqli,$sentencia2);
?>
<div class="modal-dialog modal-md" id="">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">CREAR CATEGORÍA ZONA</h4>
    </div>



            <form  onsubmit="fn_nueva_cate_zona($('#select_zona').val(),
                                        $('#select_categoria').val(),
                                        $('#p_corto').val(),
                                        $('#p_largo').val(),
                                        $('#estado_cate_zona').val())
                                        ;return false;" method="POST" class="form-horizontal mitad" rol"form">
               <div class="modal-dialog mitad">
             <div class="form-group">

          <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Zona</label>
                        <div class="col-sm-8">
                          <select class="form-control" style="text-transform: uppercase; font-weight: bold;"  id="select_zona" >
                                  <?php
                                   while ($fila= mysqli_fetch_array($query)){ ?>
                                    <option value="<?=$fila['id_zona']?>"><?=$fila['nombre_zona']?></option>
                                 <?php }; ?>
                         </select>
            </div>
            </div>

          <<div class="form-group">
                     <label class="col-sm-3 control-label" for="textinput">Categoría</label>
                          <div class="col-sm-8">
                            <select required class="form-control" style="text-transform: uppercase; font-weight: bold;"  id="select_categoria" >
                                    <?php
                                     while ($fila= mysqli_fetch_array($query2)){ ?>
                                      <option value="<?=$fila['id_categoria']?>"><?=$fila['categoria']?></option>
                                   <?php }; ?>
                           </select>
              </div>
              </div>


                      <div class="form-group">
                                   <label class="col-sm-3 control-label" for="textinput">Periodo Corto</label>
                                        <div class="col-sm-8">
                                    <input required type="text" class="form-control" onkeypress="return validarNumePun(event)" style="text-transform: uppercase; font-weight: bold;" id="p_corto"
                                      maxlength="45" autocomplete="off" >
                            </div>
                            </div>

                            <div class="form-group">
                                         <label class="col-sm-3 control-label" for="textinput">Periodo Largo</label>
                                              <div class="col-sm-8">
                                          <input required type="text" class="form-control" onkeypress="return validarNumePun(event)" style="text-transform: uppercase; font-weight: bold;" id="p_largo"
                                            maxlength="45" autocomplete="off" >
                                  </div>
                                  </div>

                <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                   <div class="col-sm-8">
                  <select style="text-transform: uppercase; font-weight: bold;" id="estado_cate_zona"class="form-control"
                   autocomplete="off" >
                  <option value="ACTIVO">ACTIVO</option>
                  <option value="INACTIVO">INACTIVO</option>
                  </select>
              </div>
              </div>
  </div>


      <center><div class="form-group">
              <input id="btn_actualizar" type="submit" class="btn btn-success" href="javascript:;" value="GUARDAR"/>


        <button type="button" id="cerrar_modal"class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
        </center>
      </form>
</div>
      <div class="modal-footer">
          <div id="msg_cambio_cate_zona">
          </div>
      </div>
    </div>
 </div>
</div>

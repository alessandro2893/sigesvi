<?php
require_once("../php/admin.class.php");
require_once("../assets/php/conexion.php");
$tabla = new administracion();
$traer_select_roles = $tabla->get_select_roles($_POST['rol']);

//print_r($tabla_personal);
// echo($_POST['rol'])
?>


</div>

<?php if ($traer_select_roles->num_rows) {?>
                    <form  role="form" method="POST">
                      <div class="form-group col-md-4">
                        <input value="<?=$_POST['rol']?>" type="hidden" id="rol" >

                           <label class="col-md-6 control-label" for="textinput">Asignar Pantallas </label><br>
                           <select class="form-control" id="id_objeto_fk">
                              <?php
                               while (@$fila= mysqli_fetch_assoc(@$traer_select_roles)){ ?>
                                <option value="<?=$fila['id_objeto']?>"><?=$fila['objeto_afectado']?></option>
                             <?php }; ?>
                     </select>
                      </div>
                    </form>

                      <div class="form-group col-md-3">
                        <label >Permisos </label><br>
                        <input value="1" name="chk_insertar" type="checkbox"> Insertar
                        <input value="1" name="chk_actualizar" type="checkbox"> Actualizar
                        <input value="1" name="chk_consultar" type="checkbox"> Consultar
                       </div>

                       <div class="form-group col-md-2">
                               <input  type="button" class="btn btn-success" href="javascript:;"
                               onclick="fn_insertar_rol($('#id_objeto_fk').val(),
                                                        $('#rol').val(),
                                                        $('input:checkbox[name=chk_insertar]:checked').val(),
                                                        $('input:checkbox[name=chk_actualizar]:checked').val(),
                                                        $('input:checkbox[name=chk_consultar]:checked').val())
                                                        ;return false;" value="AGREGAR"/>
                        </div>
                        <?php }?>

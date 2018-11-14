<?php
require_once("../php/admin.class.php");
$tabla = new administracion();
$traer_tabla_roles = $tabla->traer_tabla_roles();
//print_r($tabla_personal);
?>
<?php if ($traer_tabla_roles->num_rows){ ?>
  <div class="panel-body">
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="empleados-dt">
                <thead>
                    <tr>
                      <th><center>#</center></th>
                      <th><center>Tipo de Rol</center></th>
                      <th><center>Estado</center></th>
                      <th><center>Editar Permisos</center></th>
                      <th><center>Ver Detalle</center></th>
                    </tr>
                </thead>
                <tbody>
  <!-- SE RECORREN LOS REGISTROS DE LA BASE DE DATOS-->
                  <?php
                  $i=0;
                       while($row = mysqli_fetch_assoc($traer_tabla_roles)){?>
                            <tr class="" id="tr_<?=$row['id_rol']?>">
                                    <td ><center><?=$i+1;$i++;?></center></td>
                                    <td id="tipo_rol<?=$row['id_rol']?>" ><?=$row['rol']?></td><!-- data-toggle="modal" data-target="#modal-normal"-->
                                    <?php if ($row['estado_rol']=='ACTIVO'){?>
                                        <td><center><span class="label label-success label-mini">ACTIVO</span></center></td>
                                    <?php  }elseif ($row['estado_rol']=='INACTIVO') {?>
                                        <td><center><span class="label label-danger label-mini">INACTIVO</span></center></td>
                                    <?php  }?>
                                    <td><center><a  value="<?=$row['id_rol']?>" class="fa fa-edit btn btn-info llevar_rol"></a></center></td>
                                    <td><center><a  value="<?=$row['id_rol']?>" id="<?=$row['id_rol']?>" class="fa fa-search btn btn ver_roles" data-toggle="modal" data-target="#modal-roles"></a></center></td>

                                <?php }; ?>

                          <?php }?>
                </tbody>
            </table>
  </div>
  <!-- MODAL PARA actualizar CATEGORIA  -->
    <div class="modal fade" id="modal-roles" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
        <div id="cargar_modal_ver_roles">
        </div>
    </div>


    <script src="usuarios/usuarios.js"></script>

<script type="text/javascript">
$(document).ready(function(){
//alert(2);
$('#empleados-dt').dataTable();
  });
</script>

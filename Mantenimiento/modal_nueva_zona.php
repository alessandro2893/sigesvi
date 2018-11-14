<?php
//require_once("../php/admin.class.php");
//$usuarios = new administracion();
//$estado = $usuarios->get_modal_estado($_POST['usuario']);
//echo $_POST['usuario'];
require_once("../assets/php/conexion.php");
$sentencia = "SELECT id_categoria, categoria FROM tbl_man_categoria_empleados";
$query = mysqli_query($mysqli,$sentencia);

?>
<div class="modal-dialog modal-md" id="modal_zona">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title">CREAR ZONA</h4>
    </div>



            <form onsubmit="fn_nueva_zona($('#nom_z').val(),
                                  $('#estado_z').val())
                                 ;return false;" method="POST" class="form-horizontal mitad" rol"form">
               <div class="modal-dialog mitad">
             <div class="form-group">

            <div class="form-group">
                   <label class="col-sm-3 control-label" for="textinput">Nombre Zona</label>
                        <div class="col-sm-8">
                    <input required type="text" class="form-control" onkeypress="return validarEspacioNumero(event)" style="text-transform:uppercase; font-weight: bold;"  id="nom_z"
                      maxlength="45" autocomplete="off" >
            </div>
            </div>


                <div class="form-group">                                          <!--aqui nombra el ajax funciones_admin.js-->
                  <label class="col-sm-3 control-label" for="textinput">Estado</label>
                   <div class="col-sm-8">
                     <input required type="text" class="form-control" onkeypress="return validarEspacioNumero(event)" disabled style="text-transform:uppercase; font-weight: bold;"  id="estado_z"
                       maxlength="45" autocomplete="off" placeholder="Esperando asigancion de categoria" onpaste="return false">
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
          <div id="msg_cambio_zona">
          </div>
      </div>
    </div>
 </div>
</div>

<script type="text/javascript">
$(document).ready(function () {
    //Disable cut copy paste
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });

    //Disable mouse right click
    $("body").on("contextmenu",function(e){
        return false;
    });
});
</script>

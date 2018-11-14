<div class="modal fade in" style="display: block;" id="modal_sesion_caduco" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="modal_man_nombre"></h4>
      </div>
      <div class="modal-body">
        <input type="hidden" id="cerrar_sesion" value="no">
        <?php if (isset($_GET['minutos'])){ ?>
          <input type="hidden" id="cerrar_sesion" value="si">
          <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong>Ultimo acceso hace <?=$_GET['minutos'].' Minutos, '?>Su sesion ha expirado.</strong></center></div>
        <?php }?>
        <?php if (!isset($_GET['minutos'])){ ?>
          <?php session_start(); ?>
          <br><div class="alert alert-info alert-dismissible" role="alert"><center><strong><?=$_SESSION['usuario_activo']?>, Bienvenido al sistema.</strong></center></div>
        <?php };?>
      </div>

      <div class="modal-footer">
          <div class="resultado">
          </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
    var c_s=$("#cerrar_sesion").val();
    if (c_s=='no') {
      setTimeout(function() {
        $.get('../index.php').done(function(htmlexterno){
          $("#contenedor_principal").html(htmlexterno);
         });
         $("#modal").removeClass( "modal-backdrop fade in" );
      },5000);
    }
   });
</script>

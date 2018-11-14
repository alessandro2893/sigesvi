<div class="modal-dialog modal-md" id="modal_zona">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 style="overflow-x: auto;" class="modal-title" >CANCELAR SOLICITUD PARA <?=$_POST['nombre']?></h4>
    </div>


        <form   action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad" >
            <div class="form-group">
              <input type="hidden"  id="id_emp"  value="<?=$_POST['id_emple']?>">
              <input type="hidden"  id="id_cance"  value="<?=$_POST['id']?>">
                   <label class="col-sm-3 control-label" for="textinput">Motivo de Cancelación</label>
                    <div class="col-sm-8">
                    <textarea  rows="5" class="form-control"   style="text-transform:uppercase; font-weight: bold;"  id="motivo_cance"
                      maxlength="200" autocomplete="off" value=""></textarea>
                   </div>
            </div>


      <center><div class="form-group">
              <input id="btn_can_solicitud" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_cancelar_solicitud($('#motivo_cance').val(),
                                       $('#id_emp').val(),
                                       $('#id_cance').val())
                                       ;return false;" value="CANCELAR SOLICITUD"/>
                                       <button type="button" class="btn btn-danger" data-dismiss="modal">CERRAR</button>

      </div></center>

          <div id="msg_nsolicitud">
          </div>

    </div>
  </form>
  </div>
</div>

<div class="modal-dialog modal-md" id="modal_zona">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >CANCELAR SOLICITUD PARA EL VEHICULO <?=$_POST['tvehiculo']?> CON PLACA <?=$_POST['placa']?> </h4>

    </div>
        <form   action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad" >
            <div class="form-group">

          <input type="hidden"  id="nplaca"  value="<?=$_POST['placa']?>">
              <input type="hidden"  id="cgira"  value="<?=$_POST['cgira']?>">
              <input type="hidden"  id="id_cance"  value="<?=$_POST['id']?>">
                   <label class="col-sm-3 control-label" for="textinput">Motivo de Cancelacion</label>
                    <div class="col-sm-8">
                    <textarea  rows="5" class="form-control"  style="text-transform:uppercase; font-weight: bold;"   id="detalle"
                      maxlength="200" autocomplete="off" value=""></textarea>
                   </div>
            </div>

      <center><div class="form-group">
              <input id="btn_can_asignacion" type="button" class="btn btn-success" href="javascript:;"
              onclick="fn_cancelar_asignacion($('#nplaca').val(),
                                       $('#detalle').val(),
                                       $('#cgira').val(),
                                       $('#id_cance').val())
                                       ;return false;" value="CANCELAR ASIGNACION"/>
             <button type="button" class="btn btn-danger" data-dismiss="modal">CERRAR</button>

        </div></center>
          <div id="msg_can_vehiculo">
          </div>
      </div>
      </form>
    </div>
  </div>
<!-- <script src="viaticos/funciones_viaticos.js"></script> -->

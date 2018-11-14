<div class="modal-dialog modal-md">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 class="modal-title" >CANCELAR GIRA COMPLETA </h4>
    </div>

        <form   action="" method="POST" class="form-horizontal mitad" rol"form">
          <div class="modal-dialog mitad" >
            <div class="form-group">

              <input type="hidden"  id="cgira"  value="<?=$_POST['cgira']?>">
              <input type="hidden"  id="plca"  value="<?=$_POST['Nplaca']?>">
              <input type="hidden"  id="id_cance"  value="<?=$_POST['id']?>">
                   <label class="col-sm-3 control-label" for="textinput">Motivo de Cancelacion</label>
                    <div class="col-sm-8">
                    <textarea  rows="5" class="form-control"  style="text-transform:uppercase; font-weight: bold;"   id="detalle"
                      maxlength="200" autocomplete="off" value=""></textarea>
                   </div>
            </div>

      <center><div class="form-group">
              <input type="button" id="btn_can_gira" class="btn btn-success" href="javascript:;"
              onclick="fn_cancelar_gira($('#detalle').val(),
                                        $('#plca').val(),
                                        $('#cgira').val(),
                                        $('#id_cance').val())
                                       ;return false;" value="CANCELAR GIRA"/>
             <button type="button" class="btn btn-danger" data-dismiss="modal">CERRAR</button>

        </div></center>

          <div id="msg_can_gira">
          </div>
      </div>
      </form>
    </div>
  </div>
<!-- <script src="viaticos/funciones_viaticos.js"></script> -->

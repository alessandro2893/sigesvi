<div class="modal-md modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 style="overflow-x: auto;" class="modal-title" >ANULAR APROBACIÓN PARA <?=$_POST['nombre']?></h4>

    </div>


    <div class="modal-body">
      <form  onsubmit="fn_cancelar_aprobacion2($('#detalle').val(),
                                $('#id_soli_fk').val())
                               ;return false;" rol"form">

                               <input type="hidden"  id="id_soli_fk"  value="<?=$_POST['id_usoli_fk']?>">
                               <center>

          <div class="row">
              <div class="col-md-12">
                  <label for="">Motivo de Anulación</label><br>
                  <textarea  rows="5" class="form-control"  style="text-transform:uppercase; font-weight: bold;" onkeypress="return validarEspacioComaGuion(event)"  id="detalle"
                    maxlength="200" autocomplete="off" value=""></textarea>
                </div>
          </div>


          <br>

            <div class="row">
              <div class="form-group">
                <input type="submit" id="btn_can_apro2" class="btn btn-success" href="javascript:;" value="ANULAR APROBACIÓN"/>
                <button type="button" class="btn btn-danger" data-dismiss="modal">CANCELAR</button>
             </div>
            </div>
        </center>

        <div class="row">
          <div id="msg_can_gira">
          </div>
        </div>
      </form>
    </div>

  </div>
</div>

  <!-- <script src="viaticos/funciones_viaticos.js"></script> -->

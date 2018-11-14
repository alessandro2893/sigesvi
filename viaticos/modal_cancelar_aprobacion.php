<div class="modal-md modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">
      <button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <h4 style="overflow-x: auto;" class="modal-title" >CANCELAR GIRA PARA <?=$_POST['nombre']?></h4>

    </div>


    <div class="modal-body">
      <form  onsubmit="fn_cancelar_aprobacion($('#detalle').val(),
                                $('#id_cance').val())
                               ;return false;" rol"form">

                               <!-- <input type="text"  id="cgira"  value="<?=$_POST['cgira']?>">
                               <input type="text"  id="plca"  value="<?=$_POST['placa']?>"> -->
                               <input type="hidden"  id="id_cance"  value="<?=$_POST['id_soli_fk']?>">
                               <center>

          <div class="row">
              <div class="col-md-12">
                  <label for="">Motivo de Cancelacion</label><br>
                  <textarea required rows="5" class="form-control"  style="text-transform:uppercase; font-weight: bold;" onkeypress="return validarEspacioComaGuion(event)"  id="detalle"
                    maxlength="200" autocomplete="off" value=""></textarea>
                </div>
          </div>


          <br>

            <div class="row">
              <div class="form-group">
                <input type="submit" id="btn_can_apro" class="btn btn-success" href="javascript:;" value="CANCELAR GIRA"/>
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

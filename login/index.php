<?php
session_set_cookie_params(30000);
session_start();

 if (isset($_GET['q'])){
  require_once("login.class.php");
  require_once("../conexion.php");

  $login = new login();
  $r = $login->get_es_correcto($_GET['q']);
  //print_r($r);
  $str="SELECT admin_minimo_clave AS minclave, admin_maximo_clave AS maxclave FROM tbl_parametros";
        $datos = mysqli_query($mysqli, $str);

  $datos2 = mysqli_fetch_assoc($datos);
  $maxclave = $datos2['maxclave'];//RESULTADO DE LA FUNCION fn_valida_usuario
  $minclave = $datos2['minclave'];

}
?>


 <!DOCTYPE html>
    <html lang="es">
   <head>
     <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
       <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
       <meta name="description" content="">
       <meta name="author" content=""> -->
       <title>INHGEOMIN</title>
       <link rel=" ICON" href="../assets/img/inhgeomin.png">
       <!-- Bootstrap Core CSS -->
       <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
       <!-- MetisMenu CSS -->
       <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
       <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
       <link href="../assets/css/style.css" rel="stylesheet">
       <link href="../assets/css/bootstrap.css" rel="stylesheet">

   </head>
   <body>
        <div id="carga_login" class="container">
                <input type="hidden" id="error_login" value="<?=@$r['error']?>">
                <input type="hidden" id="hace_login" value="<?=@$r['hacer']?>">
                <input type="hidden" id="nombre_usuario" value="<?=@$r['us']?>">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 bajarlogin">
                        <div class="login-panel panel panel-default">
                            <div class="modal-header">
                             <!--   <img src="../vendor/bootstrap/css/inhgeomin%20.png" class="icono_panel">-->

                                <h4 class="modal-title" ><center>AUTENTICACIÓN DE USUARIO</center></h4>

                            </div>
                            <div class="panel-body">
                               <!-- autocomplete borra seciones anteriores-->
                                <form autocomplete="off" role="form">
                                    <fieldset>


                                        <div class="form-group">
                                         <div class="input-group">
                                          <span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i> </span>
                                          <input class="form-control enter" placeholder="USUARIO" id="txt_usuario" type="text"  autofocus maxlength="16" onkeypress="return validarLetras(event);" style="text-transform:uppercase;" autocomplete="off">
                                        </div>
                                      </div>

                                        <div class="form-group">
                                          <div class="input-group">
                                             <span class="input-group-addon"> <i class="fa fa-lock"></i> </span>
                                            <input class="form-control enter" placeholder="CONTRASEÑA" id="txt_password" type="password"
                                             maxlength="16" onclick="return(false)">
                                          </div>
                                        </div>

                                        <div class="form-group">
                                        <input type="checkbox" onchange="document.getElementById('txt_password').type = this.checked ? 'text' : 'password'" > Mostrar Contraseña
                                          <!-- Change this to a button or input when using this as a form -->
                                        </div>
                                        <input type="button"  onclick="fn_login($('#txt_usuario').val(),$('#txt_password').val());return false;" class="btn btn-lg btn-success btn-block" value="INGRESAR">
                                        <div id="msg_login">
                                        </div>
                                  </fieldset>
                                    <br>

        <!-- VENTANA MODAL  NUEVA CONTRASEÑA ###############################################################################################################-->
  <?php if (isset($r['hacer'])) { ?>
    <div class="modal fade" id="m_recuperacion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-diseiss="modal" aria-hidden="true"$times;></button>
            <h4 class="modal-title"><?=$r['msg']?></h4>
          </div>

        <?php if (@$r['error']!='si'){ ?>
            <div class="form-group">
              <div class="form-group">
                <label class="col-sm-5 control-label" for="textinput"> Ingrese Nueva Contraseña</label>
                    <div class="col-sm-6">
                       <input class="form-control" id="txt_password1" maxlength="<?=$maxclave?>" minlength="<?=$minclave?>" type="password" class="form-control pwd1 enter" required /><br>
                     </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-5 control-label" for="textinput"> Repita Contraseña</label>
                    <div class="col-sm-6">
                      <input class="form-control" id="txt_password2" maxlength="16" minlength= "5" type="password"  class="form-control pwd1 enter" required/> </br>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
<br>

              <center><div class="form-group">
                    <input type="checkbox"  id="verpass">Mostrar contraseñas <br><br>
                    <input type="button" id="btn_cambiar_pass" disabled onclick="fn_cambio_pass($('#txt_password1').val(),$('#nombre_usuario').val());return false;" class="btn btn-md btn-success " value="Cambiar Contraseña">
                    <button id="btn_cancelar" type="submit" class="btn btn-danger" name="btn_cancelar" value="cancelar"  data-dismiss="modal" aria-label="Close">Cancelar</button>
                  </div></center>

                <div class="form-group">
                   <div id="msg_cambio_pass">
                   </div>
                 </div>
          </div>

              <?php }else {?>
                <br><center><div class="alert alert-danger fade in"><?=$r['msg_e']?></div></center>
              <?php }; ?>
        </div>
     </div>
  </div>
</div>
<?php  } ?>
<a class="Rep_cup" class="col-md-4 col-md-offset-3"   data-toggle="modal" data-target="#m_olvido">¿Olvidaste tu contraseña?</a>


        <!-- FIN VENTANA MODAL ###########################################################################################-->


 <!--VENTANA MODAL OLVIDO DE CONTRASEÑA
                              ################################################################################-->
                                    <div class="modal fade" id="m_olvido" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                       <input type="hidden" id="correo_usuario" value="no">
                                       <input type="hidden" id="id_usuario" value="">
                                        <div class="modal-dialog modal-md" >
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-diseiss="modal" aria-hidden="true"$times;></button>
                                                    <h4 class="modal-title">Recuperaración de contraseña</h4>

                                                </div>
                                                <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" enctype="application/x-www-form-urlencoded" name="envio">

                                                <div class="modal-body">
                                                  <label>Ingrese Usuario</label>
                                                  <input type="hidden" name="envio" value="si">

                                                  <input id="input_recuperacion_pass" maxlength="16" type="text"  class="form-control pwd1 enter" required style="text-transform:uppercase" onkeypress="return validarLetras(event);"/><br>

                                                  <center>  <input type="button" value="Por correo" id="btn_correo" disabled class="btn btn-md btn-success ">

                                                  <button id="btn_cancelar" type="submit" class="btn btn-danger" name="btn_cancelar" value="cancelar"  data-dismiss="modal" aria-label="Close">Cancelar</button>
                                                  <div id="msg_recu_correo">
                                                  <br>
                                                </div></center>

<!--                                                  <a id="btn_preguntas" disabled class="btn btn-ms btn-success btn-block" href="Recuperacion_respuestas.php">Por preguntas</a>-->
                                                </div>
                                              </form>

                                           </div>
                                        </div>
                                    </div>



                                </form>
                            </div>
                        </div>
                    </div>
                </div>







       <!-- jQuery -->
       <script src="../vendor/jquery/jquery.min.js"></script>
       <!-- Bootstrap Core JavaScript -->
       <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

      <script src="../js/validaciones.js"></script>
      <script src="../login/login.js"></script>
    </script>

  <!-- <script src="../login/jquery.passwordstrength.js"> -->
  </script>
  <script>
    $('#txt_password1').passwordStrength();
  </script>

      <!-- <script src="login.js"></script> -->
      <script type="text/javascript">
      $( document ).ready(function() {

        $(".enter").keyup(function(e){

            if(e.keyCode == 13)
            {
              var us = $('#txt_usuario').val();
              var pass = $('#txt_password').val();
              fn_login(us,pass);
                //$(this).trigger("enterKey");
            }
        });


        var hace_login=$('#hace_login').val();
        var error_login = $('#error_login').val();
        //alert(hace_login);
        if (hace_login=='recuperar') {
            $('#m_recuperacion').modal('show');
        }if (hace_login=='login_normal' || error_login=='si') {
          setTimeout(function() {
            $('#msg_cambio_categoria').html('');
            window.location.assign('http://localhost/inhgeomin/login/');
          },6000);
        }

      });
      </script>

<br>
<br>
<br>
<br>
   </body>
   <footer>
     <div class="derechos">
       Derechos Reservados © <a href="http://www.inhgeomin.gob.hn/" target="_blank">Inhgeomin</a>  2017
     </div>
   </footer>
   </html>

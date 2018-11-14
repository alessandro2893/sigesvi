<?php
header('Content-type: application/json; charset=utf-8');
/*######################################################################################################*/
/*#########################   SCRIPT PARA (PROCESAR EL LOGIN)   #########################################*/
/*################## SE LLAMARA A UNA FUNCION QUE SE ENCARGARA DE RESPONDER) ############################*/
/*######################################################################################################*/
require_once("../assets/php/conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS



//echo('GFDXZ<');
//TRABAJA CON EL ARCHIVO "LOGIN.JS"
if ($_POST['hacer'] != "") {
    //echo'prueba';
  switch ($_POST['hacer']) {
   case 'comprobar_us':
	//				echo "string";
					$usuario=$_POST['usuario'];
					$str="SELECT id_usuario AS resultado, correo_electronico AS correo FROM tbl_man_usuarios
								WHERE usuario='$usuario';";
          		  $datos = mysqli_query($mysqli, $str);

          $usuario_existe = mysqli_fetch_assoc($datos);
				  $row = $usuario_existe['resultado'];//RESULTADO DE LA FUNCION fn_valida_usuario
          $correo = $usuario_existe['correo'];
					//echo $row;
//SE DECLARAN LAS SIGUIENTES VARIABLES CON EL VALOR POR DEFAULT

					$existe='no';
					$alerta='alert-danger';
					if ($row) {

						$existe='si';
						$alerta='alert-success';
					}
          $array_resultados['correo'] = $correo;
          $array_resultados['id_usuario'] = $row;
					$array_resultados['existe'] = $existe;
          $array_resultados['color_alerta'] = $alerta;
          echo json_encode($array_resultados);
      break;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          # PARA RECUPERAR POR CORREO
case 'enviar_pass_correo':
      include("../PHPMAILER/php/envioCorreo.php");
          $usuario=$_POST['usuario'];
            $a_j['envio_correo'] = 'si';
              echo json_encode($a_j);


            // require_once("../php/encriptacion.php");
						// $usuario=$_POST['usuario'];
            // $id_usuario=$_POST['id_usuario'];
            // $correo_electronico=$_POST['correo_electronico'];
            // $f_actual=date('U');
            //
            // $para_encriptar=SHA1($f_actual).'RC'.$id_usuario.'-'.$f_actual;
            //
            // // $datos_encript = encriptar::encrypt_login($para_encriptar,'pase_libre');
            //   $url = 'http://localhost/inhgeomin/login/?q='.$para_encriptar;
						// // 	//####################### UPDATE EN LA TABLA USUARIOS ########################
            //
						// 	$str="UPDATE tbl_man_usuarios SET codigo_correo = '$f_actual', estado_login='RC', link_correo='$url' WHERE id_usuario='$id_usuario';";
						// 	$insert = mysqli_query($mysqli, $str);
            //   $a_j['envio_correo'] = 'si';
 	         //   echo json_encode($a_j);
            //   include("../PHPMAILER/php/envioCorreo.php");
            //   $email = new email('sincomin',"sigesvi.1@gmail.com","paselibre");
            //   $email->agregar($_POST["correo_electronico"],$_POST["usuario"]);
            //
            //   if ($email->enviar('CAMBIO DE CONTRASEÑA',$contenido_html)){
            //
            //
            //
            //
            //   }else{
            //
            //      $mensaje= 'El mensaje no se pudo enviar';
            //      $email->ErrorInfo;
            //   }
            //


	      break;
    default:
      break;
  };

}else {
  $array_resultados['resultado'] = 'Error Alguno vacio';
  echo json_encode($array_resultados);
}
 ?>

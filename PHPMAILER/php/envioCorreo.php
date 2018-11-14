<?php
/**
 * Created by PhpStorm.
 * User: elporfirio
 * Date: 09/05/15
 * Time: 21:17
 */
 require('PHPMailerAutoload.php');
$oMail = new PHPMailer();
$oMail->isSMTP();
$oMail->Host = 'smtp.gmail.com';
$oMail->SMTPAuth = true;
$oMail->Username = 'sigesvi.1@gmail.com';
$oMail->Password = 'paselibre';
/***/


// QUERY PARA CAPTURAR LA URL QUE SE ENVIARA AL correo

require_once("../php/encriptacion.php");
$f_actual=date(U);
$id_usuario=$_POST['id_usuario'];

$para_encriptar=SHA1($f_actual).'RC'.$id_usuario.'-'.$f_actual;
$datos_encript = encriptar::encrypt_login($para_encriptar,'pase_libre');
$url = 'http://localhost/inhgeomin/login/?q='.$para_encriptar;

$oMail->SMTPSecure = 'tls';
$oMail->SMTPOptions = array(
	'ssl' => array(
		'verify_peer' => false,
		'verify_peer_name' => false,
		'allow_self_signed' => true
	)
);
$oMail->Port = 587;
/* Envio de mensaje */
$oMail->FromName="INHGEOMIN";
$oMail->setFrom = 'sigesvi.1@gmail.com';
$oMail->addAddress($_POST['correo_electronico']);
$oMail->Subject = 'Cambio de contraseña';
$oMail->Body = 'Por favor copie y pegue el siguiente link en su explorador preferido: '.$url;
$oMail->CharSet='UTF8';
/***/

// return $oMail->Send() ;



// $oMail->send();
if($oMail->send() == false){
    echo "No se pudo enviar email";
    echo $oMail->ErrorInfo;
} else {

  $str="UPDATE tbl_man_usuarios SET codigo_correo = '$f_actual', estado_login='RC', link_correo='$url' WHERE id_usuario='$id_usuario';";
  $insert = mysqli_query($mysqli, $str);
  return $url;
    echo "Mensaje enviado";
}

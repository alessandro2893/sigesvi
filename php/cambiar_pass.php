<?php
  header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
  if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    require_once("../conexion.php");
    require_once("../php/encriptacion.php");

    $usuario = $_POST['usuario'];
    $pass = $_POST['pass'];
    //echo($usuario. 'usuario');
    $pass_hash = encriptar::encrypt($pass);


    $strsoniguales="SELECT clave FROM tbl_man_usuarios WHERE usuario='$usuario';";

    $datoscorrectos = mysqli_query($mysqli, $strsoniguales);
    $arreglo = mysqli_fetch_assoc($datoscorrectos);
    $clave = $arreglo['clave'];

    if ($clave==$pass_hash) {
      $r['redirecciona'] = 'no';
      $r['color_alerta'] = 'alert-danger';
      $r['msg'] = 'Nueva contraseña es igual que la anterior, intentelo de nuevo';
      echo json_encode($r);



    }else {
      $str="UPDATE tbl_man_usuarios SET clave='$pass_hash', estado_login='OK', fecha_modificacion=CURRENT_DATE(),codigo_correo='' WHERE usuario='$usuario'"; // aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=
      $datos = mysqli_query($mysqli, $str);
      //echo $str;
          if ($datos) {
            $str="SELECT CONCAT(nombre1,' ',apellido1) AS nombre, id_usuario as id_usuario FROM (tbl_man_empleados JOIN tbl_man_usuarios ON (id_empleado=id_empleado_fk)) WHERE usuario='$usuario';";// REVISA VERACIDAD DE USUARIO

            //echo $str;
            $datos = mysqli_query($mysqli, $str);
            $arreglo = mysqli_fetch_assoc($datos);
            $nombre_personal = $arreglo['nombre'];
            $id_usuario = $arreglo['id_usuario'];

            session_start();
            $_SESSION["logeado"]='si';
            $_SESSION["id_usuario"]=$id_usuario;
            $_SESSION["usuario_activo"]=$usuario;
            $_SESSION["nombre_personal"]= $nombre_personal;

            $r['redirecciona'] = 'si';
            $r['color_alerta'] = 'alert-success';
            $r['msg'] = 'Contraseña establecida, redirigiendo...';
            $r['url'] = 'http://localhost/inhgeomin/login/';


            echo json_encode($r);

          }
    }
 }else {
   header('Location: http://localhost/inhgeomin/');
 }
 ?>

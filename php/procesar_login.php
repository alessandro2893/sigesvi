<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
// PARA QUE SE ACEPTEN SOLO PETICIONES DE TIPO AJAX
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
  //sleep(5);
  if (($_POST['usuario'] != "") && ($_POST['pass'] != "")) {
    $usuario=$_POST['usuario']; // SE RECIBE EL USARIO DEL FORMULARIO
    $pass=$_POST['pass']; // SE RECIBE EL PASS DEL FORMULARIO
   //el require_once me esta diciendo que necesita si o si ese archivo para poder continuar con el CODIGO
   //mientas que el include no le importa y siempre muestra el sitio
    require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
    require_once("../php/encriptacion.php");
    require_once("../login/login.class.php");
    	$pass_hash = encriptar::encrypt($pass);
      $p_login = new login();
      $datos = $p_login->valida_usuario($usuario,$pass_hash);


      //echo $datos['hacer'];

      switch ($datos['hacer']) {
        case 'USOCI':
              $array_resultados['msg'] = 'Usuario o Contraseña Incorrecto';
              $array_resultados['color_alerta'] = 'alert-danger';
              echo json_encode($array_resultados);
          break;


        case 'OK':
            $str="SELECT CONCAT(nombre1,' ',apellido1) AS resultado, id_usuario as id_usuario,id_dependencia_FK AS dependencia FROM (tbl_man_empleados JOIN tbl_man_usuarios ON (id_empleado=id_empleado_fk)) WHERE usuario='$usuario';";// REVISA VERACIDAD DE USUARIO
    				$datos = mysqli_query($mysqli, $str);
    				$us_url = mysqli_fetch_assoc($datos);
    				$url = $us_url['resultado'];//RESULTADO DE LA FUNCION fn_valida_usuario
    				$nombre_personal = $us_url['resultado'];
    				$id_usuario = $us_url['id_usuario'];


                      // INICIO DE SESSIONES
    				session_start();
            $hora_login = time();
            $_SESSION["hora_login"]=$hora_login;
    				$_SESSION["logeado"]='si';
    				$_SESSION["id_usuario"]=$id_usuario;
    				$_SESSION["usuario_activo"]=$usuario;
            $_SESSION["nombre_personal"]= $nombre_personal;
            $_SESSION["dependencia"]= $us_url['dependencia'];;
            $array_resultados['redirecciona'] = 'si';
    				$array_resultados['url'] = 'http://localhost/inhgeomin/';
            $array_resultados['msg'] = 'Usuario Correcto';
         $array_resultados['color_alerta'] = 'alert-success';
            echo json_encode($array_resultados);
        break;
##############################################################################################################################################################
    		case 'I':
            $array_resultados['msg'] = $datos['msg'];
            $array_resultados['color_alerta'] = 'alert-danger';
            echo json_encode($array_resultados);
        break;
################################################################################################################################################################3
    		case 'B':
            $array_resultados['msg'] = $datos['msg'];
            $array_resultados['color_alerta'] = 'alert-danger';
            echo json_encode($array_resultados);
        break;
##################################################################################################################################################################
    		case 'CV':
    				$para_encriptar=SHA1(date('U')).'CV'.$datos['id_us'].'-'.$datos['dias'];
            //echo($datos);

    				//$datos_encript = encriptar::encrypt($para_encriptar);
            $array_resultados['redirecciona'] = 'si';
            $array_resultados['color_alerta'] = 'alert-danger';
    				$array_resultados['msg'] = 'Debe establecer su contraseña';
            $array_resultados['url'] = 'http://localhost/inhgeomin/login/?q='.$para_encriptar;
            echo json_encode($array_resultados);
        break;
        ##################################################################################################################################################################
            		case 'UV':
                $array_resultados['msg'] = 'Su tiempo de uso del sistema ha concluido, contacte al Administrador.';
                $array_resultados['color_alerta'] = 'alert-danger';
                echo json_encode($array_resultados);
                break;
    		case 'PV_RS':

    				$para_encriptar=SHA1(date('U')).$datos['pv_rs'].$datos['id_us'].'-'.$pass;
    				//$datos_encript = encriptar::encrypt($para_encriptar);
            $array_resultados['redirecciona'] = 'si';
            $array_resultados['color_alerta'] = 'alert-danger';
    				$array_resultados['msg'] = 'Debe establecer su contraseña';
            $array_resultados['url'] = 'http://localhost/inhgeomin/login/?q='.$para_encriptar;
            //echo $datos_encript;
            echo json_encode($array_resultados);
        break;
        case 'FALLO':
            //$intento = substr($row, -1);
    				$array_resultados['msg'] = $datos['msg'];
            //echo $intento; // imprime "nas"
            $array_resultados['color_alerta'] = 'alert-danger';
            echo json_encode($array_resultados);
          break;
      };
      //echo "string";
    //$a_resultados['usuario'] = $usuario;
    //$a_resultados['pass'] = $pass_hash;
    //echo json_encode($a_resultados);
 }else {
   $array_resultados['resultado'] = 'Error Alguno vacio';
   echo json_encode($array_resultados);
 }
}else {
  header('Location: http://localhost/inhgeomin/');
}
?>

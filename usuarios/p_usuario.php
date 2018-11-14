<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
// PARA QUE SE ACEPTEN SOLO PETICIONES DE TIPO AJAX
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
  if (isset($_POST['hacer'])) {
    switch ($_POST['hacer']) {

case 'buscar_identidad':
      $id=$_POST['identidad'];
      $query="SELECT COUNT(id_empleado) AS existe, id_empleado
         FROM tbl_man_empleados WHERE tarjeta_identidad = '$id' ;";
         $consultar=$mysqli->query($query);
         $arreglo = mysqli_fetch_assoc($consultar);
         $existe=$arreglo['existe'];
         //echo $query;
         if ($existe) { // SI EXISTE COMO EMPLEADO
           # SI EXISTE COMO EMPLEADO
           $id_empleado=$arreglo['id_empleado'];
           $query="SELECT COUNT(id_usuario) AS existe, usuario
              FROM tbl_man_usuarios WHERE id_empleado_fk = $id_empleado;";
              $consultar=$mysqli->query($query);
              $arreglo = mysqli_fetch_assoc($consultar);
              $existe=$arreglo['existe'];
              if ($existe) {
                $usuario=$arreglo['usuario'];
                // EXISTE COMO USUARIO Y COMO EMPLEADO, NO PUEDE CREAR OTRO
                $a_r['msg'] = "No puede crear, el empleado posee el usuario: ".$usuario;
                $a_r['color_alerta'] = "alert-info";
                $a_r['ingreso'] = 'no';
              }else {
                // EXISTE COMO EMPLEADO, PUEDE CREAR NUEVO USUARIO
                $a_r['msg'] = "Empleado existe, puede crear usuario para ese empleado .";
                $a_r['id_empleado'] = $id_empleado;
                $a_r['color_alerta'] = "alert-success";
                $a_r['ingreso'] = 'si';
              }
         }else {
           $a_r['msg'] = "Lo sentimos :|    Empleado no existe en la base de datos.";
           $a_r['color_alerta'] = "alert-danger";
           $a_r['ingreso'] = 'no';
         }
         echo json_encode($a_r);
      break;

      #####################################################################################
case 'crear_usuario':
//echo('entro al case');
        include ('../php/encriptacion.php');
        $id_personal=$_POST['id_personal'];
        $nombre_usuario= filter_var(strtoupper($_POST['nombre_usuario']), FILTER_SANITIZE_STRING );
        $tipo_us=$_POST['tipo_us'];
        $password=$_POST['pass_temporal'];
        $correo=$_POST['correo'];
        $f_vencimiento=$_POST['f_vencimiento'];

        $pass_enc = encriptar::encrypt($password);//INSERT INTO tbl_man_usuario VALUES (NULL, 'BEBEE', '239123qsjqdjasldkasladakslA', 'KSAMKSJASJ', '2', 'A', 'US', 'OK', NULL)
        session_start();
        $us_login=$_SESSION['usuario_activo'];

        //$a = "INSERT INTO tbl_man_usuarios  VALUES (NULL, '$id_personal', '$nombre_usuario', '$pass_enc', '$correo', 'codi', 'A', 'PV', '0', '$us_login', CURRENT_TIME(), NULL, NULL, NULL, NULL, '2017-03-17', 'US');";


       $query="INSERT INTO tbl_man_usuarios VALUES (NULL, '$tipo_us','$id_personal','$nombre_usuario', '$pass_enc','$correo','-', 'A',  'PV','0','$us_login', CURRENT_TIME(), NULL, NULL, NULL, NULL,'$f_vencimiento');";
        //echo $query;

/////////////////////////////////////         CODIGO JuliO                   ///////////////////////////////////////////
        // crea usuario en la base de datos y le da los privilegios
              if ($tipo_us='SUPER USUARIO') {
                $string_crea_usuario="CREATE USER '$nombre_usuario'@'localhost' IDENTIFIED BY '';";
                $string_permiso_usuario="GRANT ALL PRIVILEGES ON sincomin.* TO '$nombre_usuario'@'localhost' WITH GRANT OPTION;";
                $string_act_permisos="FLUSH PRIVILEGES;";
                $crea_user=$mysqli->query($string_crea_usuario);
                $asig_permisos=$mysqli->query($string_permiso_usuario);
                $actualiza_privilegios=$mysqli->query($string_act_permisos);
              }else {
                $string_crea_usuario="CREATE USER '$nombre_usuario'@'localhost' IDENTIFIED BY '';";
                $string_permiso_usuario="GRANT SELECT,INSERT,UPDATE ON sincomin.* TO '$nombre_usuario'@'localhost' ;";
                $string_act_permisos="FLUSH PRIVILEGES;";
                $crea_user=$mysqli->query($string_crea_usuario);
                $asig_permisos=$mysqli->query($string_permiso_usuario);
                $actualiza_privilegios=$mysqli->query($string_act_permisos);
              }
      ////////////////////////////////////////////////////////////////////////////////






       $consultar=$mysqli->query($query);
       if ($mysqli->affected_rows==1) {
           //$row['pass'] = $password;
                $row['color_alerta'] = 'alert-success';
               $row['msg'] = 'INGRESO EXITOSO';
               $row['ingreso'] = 'si';
               echo json_encode($row);
       }else{
           $row['color_alerta'] = 'alert-danger';
          $row['msg'] = 'NO INGRESADO';
          //$row['ingreso'] = 'no';
          echo json_encode($row);
       }
        break;




#####################################################################################
      case 'buscar_usuario':
      $user_name=$_POST['user_name'];
      $query="SELECT COUNT(usuario) AS existe
         FROM tbl_man_usuarios WHERE usuario = '$user_name' ;";
      $consultar=$mysqli->query($query);
      $arreglo = mysqli_fetch_assoc($consultar);
      $existe1=$arreglo['existe'];
      if ($existe1) {
//             echo('si');
        $a_r['ingreso'] = 'no';
        $a_r['msg'] = 'Nombre de Usuario en Uso';
        $a_r['color_alerta'] = "alert-danger";
        echo json_encode($a_r);
      }else{
        $a_r['ingreso'] = 'si';
        $a_r['msg'] = 'Nombre de Usuario Disponible';
        $a_r['color_alerta'] = "alert-success";
        echo json_encode($a_r);
      }
      break;

      #######################################################################################
            case 'actualizar_us':
            $nombre_usuario =$_POST['nombre_usuario'];
            $usuario_estado =$_POST['usuario_estado'];
            $tipo_us =$_POST['tipo_us'];
            $f_vencimiento =$_POST['f_vencimiento'];
            $correo =$_POST['correo'];
            $fecha_actual = date("Y-m-d");
            session_start();
            $us_login=$_SESSION['usuario_activo'];
            $string_update="UPDATE tbl_man_usuarios SET estado_usuario='$usuario_estado',
                            fecha_modificacion='$fecha_actual', correo_electronico='$correo',fecha_vencimiento='$f_vencimiento',id_rol_fk='$tipo_us', modificado_por='$us_login' WHERE usuario='$nombre_usuario'";
                            //echo $string_update;
          $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['ingreso'] = 'si';
              $a_r['msg'] = 'Usuario actualizado, procesando...';
              $a_r['color_alerta'] = "alert-success";
            }else {
              $a_r['ingreso'] = 'no';
              $a_r['msg'] = 'INCORRECTO';
              $a_r['color_alerta'] = "alert-danger";
            }
            echo json_encode($a_r);
            break;


/////////////////////////////////////////              SOLO ROLES                ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#------------>>>>>    BUSCAR ROL EN LA BASE DE DATOS
            case 'buscar_rol':
            $rol =$_POST['rol'];
            $rol=strtoupper($rol);

            $str_buscar_rol="SELECT count(rol) as id_rol, rol from tbl_man_roles WHERE rol='$rol'";
            $consultar=$mysqli->query($str_buscar_rol);
            $arreglo = mysqli_fetch_assoc($consultar);
            $traer_rol=$arreglo['rol'];
            $traer_id_rol=$arreglo['id_rol'];

              if ($traer_rol===$rol) {
                $a_r['existe'] = 'si';
                $a_r['rol'] = $rol;
                $a_r['id_rol'] = $traer_id_rol;
                $a_r['msg'] = 'Rol existe';
                $a_r['color_alerta'] = "alert-info";
            }else {
              $a_r['existe'] = 'no';
              $a_r['rol'] = $rol;
              $a_r['id_rol'] = 0;

              $a_r['msg'] = 'Creará nuevo rol';
              $a_r['color_alerta'] = "alert-success";
            }
            echo json_encode($a_r);
            break;

#---------------->>>>>    ACTUALIZAR PERMISOS PARA ROLES
            case 'actualizar_permisos':
            $permiso_insertar =$_POST['permiso_insertar'];
            $permiso_consultar =$_POST['permiso_consultar'];
            $permiso_actualizar =$_POST['permiso_actualizar'];
            $estado =$_POST['estado'];
            $id_robj =$_POST['id_robj'];
            $fecha_actual = date("Y-m-d");
            $estado=strtoupper($estado);
            session_start();
            $us_login=$_SESSION['usuario_activo'];

            $string_update="UPDATE tbl_roles_objetos SET estado_rol_obj='$estado', permiso_insertar='$permiso_insertar',permiso_actualizar='$permiso_actualizar',
                            permiso_consultar='$permiso_consultar', fecha_modificacion='$fecha_actual', modificado_por='$us_login'
                             WHERE id_r_objeto='$id_robj'";
          $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['ingreso'] = 'si';
              $a_r['msg'] = 'PERMISO ACTUALIZADO, PROCESANDO...';
              $a_r['color_alerta'] = "alert-success";
            }else {
              $a_r['ingreso'] = 'no';
              $a_r['msg'] = 'OCURRIO UN ERROR :|';
              $a_r['color_alerta'] = "alert-danger";
            }
            echo json_encode($a_r);
            break;



            #---------------->>>>>    INSERTAR PERMISOS PARA ROLES
           case 'guardar_rol':
                 $rol =$_POST['rol'];
                 $fecha_actual = date("Y-m-d");
                 $rol=strtoupper($rol);
                 session_start();

                 $us_login=$_SESSION['usuario_activo'];

                 $str_buscar_rol="SELECT rol from tbl_man_roles WHERE rol='$rol'";
                         $consultar=$mysqli->query($str_buscar_rol);
                         $arreglo = mysqli_fetch_assoc($consultar);
                         $traer_rol=$arreglo['rol'];

                         if ($traer_rol!=$rol) {
                           $string_insert_rol="INSERT INTO tbl_man_roles VALUES (NULL, '$rol','ACTIVO','$us_login', '$fecha_actual', NULL, NULL);";
                          $datos = mysqli_query($mysqli, $string_insert_rol);



                               if ($datos) {
                                $a_r['ingreso'] = 'si';
                                $a_r['rol'] = $rol;
                                $a_r['msg'] = 'ROL CREADO CON EXITO, ESPERE...';
                                $a_r['color_alerta'] = "alert-success";
                                }
             }else {
               $a_r['ingreso'] = 'no';
               $a_r['rol'] = $rol;
               $a_r['msg'] = 'ROL EXISTE ';
               $a_r['color_alerta'] = "alert-info";
               }
                             echo json_encode($a_r);
              break;



//             #---------------->>>>>    INSERTAR PERMISOS PARA ROLES
                        case 'insertar_permisos':
                        $permiso_insertar =$_POST['permiso_insertar'];
                        $permiso_consultar =$_POST['permiso_consultar'];
                        $permiso_actualizar =$_POST['permiso_actualizar'];
                        $id_objeto_fk =$_POST['id_objeto_fk'];
                        $rol =$_POST['rol'];
                        $fecha_actual = date("Y-m-d");
                        $rol=strtoupper($rol);
                        session_start();

                        $us_login=$_SESSION['usuario_activo'];
// echo($permiso_insertar);

                        $str_buscar_idrol="SELECT id_rol, rol from tbl_man_roles WHERE rol='$rol'";
                        $consultar=$mysqli->query($str_buscar_idrol);
                        $arreglo = mysqli_fetch_assoc($consultar);
                        $traer_idrol=$arreglo['id_rol'];
                        $traer_rol=$arreglo['rol'];

                        if ($traer_rol==$rol) {
                          $string_insert="INSERT INTO tbl_roles_objetos VALUES (NULL, '$traer_idrol','$id_objeto_fk',
                          '$permiso_insertar', '$permiso_consultar','$permiso_actualizar','A','$us_login', '$fecha_actual', NULL, NULL);";
                          $datos = mysqli_query($mysqli, $string_insert);

                        }
                        // else{
                        //
                        //   $string_insert="INSERT INTO tbl_roles_objetos VALUES (NULL, '$traer_idrol','$id_objeto_fk',
                        //   '$permiso_insertar', '$permiso_consultar','$permiso_actualizar','A','$us_login', '$fecha_actual', NULL, NULL);";
                        //   $datos = mysqli_query($mysqli, $string_insert);
                        // }

                        if ($datos) {
                          $a_r['ingreso'] = 'si';
                          $a_r['msg'] = 'PERMISOS ASIGNADO CON EXITO, ESPERE...';
                          $a_r['color_alerta'] = "alert-success";
                        }else {
                          $a_r['ingreso'] = 'no';
                          $a_r['msg'] = 'OCURRIO UN ERROR :|';
                          $a_r['color_alerta'] = "alert-danger";
                        }
                        echo json_encode($a_r);
                        break;





      default:
        # code...
        break;
    } //cierre del switch

  }
  //echo json_encode($a_r);
}else {
  header('Location: http://localhost/inhgeomin/');
}

?>

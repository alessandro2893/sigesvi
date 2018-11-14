<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON

//comprobamos que sea una petición ajax
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest')
{
  require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
  include ('../php/encriptacion.php');
    //obtenemos el archivo a subir
    $nombre_foto = $_FILES['archivo']['name'];
    $tipo_imagen=$_FILES['archivo']['type'];
    $tamaño_imagen=$_FILES['archivo']['size'];

    $id_personal=$_POST['id_personal'];
     $nombre_usuario= filter_var(strtoupper($_POST['nombre_usuario']), FILTER_SANITIZE_STRING );
     $tipo_us=$_POST['roles'];
     $password=$_POST['pass_usuario'];
     $correo=$_POST['correo'];
     $f_vencimiento=$_POST['f_vencimiento'];
// echo $nombre_usuario." ".$tipo_us;

     $pass_enc = encriptar::encrypt($password);//INSERT INTO tbl_man_usuario VALUES (NULL, 'BEBEE', '239123qsjqdjasldkasladakslA', 'KSAMKSJASJ', '2', 'A', 'US', 'OK', NULL)
     session_start();
     $us_login=$_SESSION['usuario_activo'];



     $query="SELECT COUNT(usuario) AS existe
        FROM tbl_man_usuarios WHERE correo_electronico = '$correo' ;";
     $consultar=$mysqli->query($query);
     $arreglo = mysqli_fetch_assoc($consultar);
     $existe=$arreglo['existe'];





////////////////////////////          FUNCIONES PARA MONTAR LA foto         ////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if ($nombre_foto=="") {
  $row['color_alerta'] = 'alert-danger';
 $row['msg'] = 'Seleccione una foto para su perfil';
 $row['ingreso'] = 'no';
 echo json_encode($row);


} elseif ($correo=="" || $password=="" || $f_vencimiento=="" || $id_personal=="" || $tipo_us=="" || $nombre_usuario=="") {
   $row['color_alerta'] = 'alert-danger';
  $row['msg'] = 'Complete todos los campos';
  $row['ingreso'] = 'no';
  echo json_encode($row);

}elseif ($existe) {
  $row['color_alerta'] = 'alert-warning';
 $row['msg'] = 'Correo electronico ya existe, intentelo de nuevo';
 $row['ingreso'] = 'no';
 echo json_encode($row);


}else {
  // # code...
     $carpeta_destino=$_SERVER['DOCUMENT_ROOT'].'/assets/img/empleados/';
     move_uploaded_file($_FILES['archivo']['tmp_name'],$carpeta_destino.$nombre_foto);

     $archivo_objetivo=fopen($carpeta_destino.$nombre_foto,"r");
     $contenido=fread($archivo_objetivo,$tamaño_imagen);
     $contenido=addslashes($contenido);
     fclose($archivo_objetivo);

      $query="INSERT INTO tbl_man_usuarios VALUES (NULL, '$tipo_us','$id_personal','$nombre_usuario', '$pass_enc','$correo','-', 'A',  'PV','0','$us_login', CURRENT_TIME(), NULL, NULL, NULL, NULL,'$f_vencimiento','$contenido','$tipo_imagen');";

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



    }





}else{
    throw new Exception("Error Processing Request", 1);
}
?>

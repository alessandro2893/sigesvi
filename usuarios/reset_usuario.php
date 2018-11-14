<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
// PARA QUE SE ACEPTEN SOLO PETICIONES DE TIPO AJAX
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS

$usuario =$_POST['usuario'];
$fecha_actual = date("Y-m-d");
//echo($usuario. $fecha_actual);

$query="SELECT clave_default FROM tbl_parametros WHERE id_parametro=1;";
$consultar=$mysqli->query($query);
$arreglo = mysqli_fetch_assoc($consultar);
$clave_default=$arreglo['clave_default'];
// echo($clave_default);

  $string_update="UPDATE tbl_man_usuarios SET estado_login='RS', intentos=0, clave='$clave_default', fecha_modificacion='$fecha_actual' WHERE usuario='$usuario'";
  $datos = mysqli_query($mysqli, $string_update);
  if ($datos) {
    $a_r['msg'] = "si";
  }else {
    $a_r['msg'] = "no" ;
  }
  echo json_encode($a_r);
}else {
  header('Location: http://localhost/inhgeomin/login/');
}
?>

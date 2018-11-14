<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
// PARA QUE SE ACEPTEN SOLO PETICIONES DE TIPO AJAX
session_start();

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
  if (isset($_POST['hacer'])) {
    switch ($_POST['hacer']) {


/////////////////////////////////////     CASE DE AVTIALIZAR PARAMETROS        /////////////////////////////////////////////////////////////////7
case 'actualizar_parametros':
      $dias_habiles_pass =$_POST['dias_habiles_pass'];
      $dias_vencimiento_contraseña =$_POST['dias_vencimiento_contraseña'];
      $minimo_clave =$_POST['minimo_clave'];
      $maximo_clave =$_POST['maximo_clave'];
      $intentos=$_POST['intentos'];
      $pc_dia_min =$_POST['pc_dia_min'];
      $pl_dia_max =$_POST['pl_dia_max'];
      $clave_default_des =$_POST['clave_default'];
      $max_dias_aprobacion =$_POST['max_dias_aprobacion'];


      include ('../php/encriptacion.php');
      $pass_enc = encriptar::encrypt($clave_default_des);//INSERT INTO tbl_man_usuario VALUES (NULL, 'BEBEE', '239123qsjqdjasldkasladakslA', 'KSAMKSJASJ', '2', 'A', 'US', 'OK', NULL)


      //echo($id. ' s '. $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);

      $string_update="UPDATE tbl_parametros SET intentos='$intentos',
       dias_habiles_pass='$dias_habiles_pass', admin_minimo_clave='$minimo_clave', admin_maximo_clave='$maximo_clave',
       admin_dias_activacion='$dias_vencimiento_contraseña', pc_dia_min='$pc_dia_min', pl_dia_max='$pl_dia_max',
       clave_default='$pass_enc', clave_default_des='$clave_default_des', max_dias_aprobacion='$max_dias_aprobacion' WHERE id_parametro=1";


      $datos = mysqli_query($mysqli, $string_update);

      if ($datos) {
        $a_r['msg'] = "si";
      }else {
        $a_r['msg'] = "no" ;
      }
      echo json_encode($a_r);
      break;
////////////////////////////////////////////////////        CIERRE DEL CASE ACTUALIZAR CATEGORIA        //////////////////////////////////////////////////////





      /////////////////////////////////////     CASE DE AVTIALIZAR CATEGORIA        /////////////////////////////////////////////////////////////////7
    case 'actualizar_categoria':
            $usuario_activo=$_SESSION["usuario_activo"];
            //echo $usuario_activo;

            $grupo =$_POST['grupo'];
            $id =$_POST['id'];
            $nivel =$_POST['nivel'];
            $comprende =$_POST['comprende'];
            $categoria=$_POST['categoria'];
            $estado =$_POST['estado'];
            $fecha_actual = date("Y-m-d");
            $categoria=strtoupper($categoria);
            $usuario_activo=strtoupper($usuario_activo);
            $grupo=strtoupper($grupo);
            $comprende=strtoupper($comprende);
            $nivel=strtoupper($nivel);

            //echo($id. ' s '. $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);

            $string_update="UPDATE tbl_man_categoria_empleados SET estado='$estado',
             fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo', grupo_ocupacional='$grupo',
             nivel_organizativo='$nivel', comprende='$comprende', categoria='$categoria' WHERE id_categoria='$id'";


            $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);
            break;
////////////////////////////////////////////////////        CIERRE DEL CASE ACTUALIZAR CATEGORIA        //////////////////////////////////////////////////////


/////////////////////////////////////     CASE DE INSERTAR CATEGORIA        /////////////////////////////////////////////////////////////////7
case 'insertar_categoria':
      $usuario_activo=$_SESSION["usuario_activo"];
      //echo $usuario_activo;
      $grupo =$_POST['grupo'];
      $nivel =$_POST['nivel'];
      $comprende =$_POST['comprende'];
      $categoria=$_POST['categoria'];
      $estado =$_POST['estado'];
      $fecha_actual = date("Y-m-d");

      $categoria=strtoupper($categoria);
      $usuario_activo=strtoupper($usuario_activo);
      $grupo=strtoupper($grupo);
      $comprende=strtoupper($comprende);
      $nivel=strtoupper($nivel);


      //echo( $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);
      $traer_categoria="select categoria from tbl_man_categoria_empleados where categoria='$categoria';";
      $consultar=$mysqli->query($traer_categoria);
      $arreglo = mysqli_fetch_assoc($consultar);
      $existe=$arreglo['categoria'];

      if ($existe!=$categoria) {
          // $string_insert="UPDATE tbl_man_categoria_empleados  estado='$estado',
          //  fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo', grupo_ocupacional='$grupo',
          //  nivel_organizativo='$nivel', comprende='$comprende', categoria='$categoria' WHERE id_categoria='$id'";

           $string_insert="INSERT INTO tbl_man_categoria_empleados VALUES (NULL, '$categoria', '$nivel', '$grupo', '$comprende', '$estado', '$usuario_activo',  '$fecha_actual', '','');";
          $datos = mysqli_query($mysqli, $string_insert);
          if ($datos) {
            $a_r['msg'] = "si";
          }else {
            $a_r['msg'] = "no" ;
          }
          echo json_encode($a_r);
    }else{
            $a_r['msg'] = "existe" ;
          echo json_encode($a_r);
      }
      break;
////////////////////////////////////////////////////        CIERRE DEL CASE DE CATEGORIA        //////////////////////////////////////////////////////




////////////////////////////////////     CASE ACTUALIZAR VEHICULO                   ///////////////////////////////////////
        case 'actualizar_vehiculo':
            $usuario_activo=$_SESSION["usuario_activo"];
            //echo $usuario_activo;

            $tipo_vehiculo =$_POST['tipo_vehiculo'];
            $id =$_POST['id'];
            $n_vehiculo =$_POST['n_vehiculo'];
            $capacidad_personas =$_POST['capacidad_personas'];
            $placa_vehiculo =$_POST['placa_vehiculo'];
            $marca_vehiculo =$_POST['marca_vehiculo'];
            $modelo_vehiculo =$_POST['modelo_vehiculo'];
            $color_vehiculo =$_POST['color_vehiculo'];
            $estado =$_POST['estado'];
            $fecha_actual = date("Y-m-d");
            //echo($nombre_zona);

            $tipo_vehiculo=strtoupper($tipo_vehiculo);
            $placa_vehiculo=strtoupper($placa_vehiculo);
            $marca_vehiculo=strtoupper($marca_vehiculo);
            $modelo_vehiculo=strtoupper($modelo_vehiculo);
            $color_vehiculo=strtoupper($color_vehiculo);
            $estado=strtoupper($estado);

            $string_update="UPDATE tbl_man_vehiculos SET estado='$estado',
             fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo', tipo_vehiculo='$tipo_vehiculo', n_vehiculo='$n_vehiculo',
             capacidad_personas='$capacidad_personas', placa_vehiculo='$placa_vehiculo', marca_vehiculo='$marca_vehiculo', modelo_vehiculo='$modelo_vehiculo', color_vehiculo='$color_vehiculo' WHERE id_vehiculo='$id'";


            $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);
            break;

//////////////////////////////////////  CIERRE CASE ACTUALIZAR VEHICULO     //////////////////////////////////////////////

/////////////////////////////////     CASE DE INSERTAR VEHICULO        ///////////////////////////////////////////7
      case 'insertar_vehiculo':

      $usuario_activo=$_SESSION["usuario_activo"];
      //echo $usuario_activo;
      $n_vehiculo =$_POST['n_vehiculo'];
      $tipo_vehiculo =$_POST['tipo_vehiculo'];
      $capacidad_personas =$_POST['capacidad_personas'];
      $placa_vehiculo =$_POST['placa_vehiculo'];
      $marca_vehiculo =$_POST['marca_vehiculo'];
      $modelo_vehiculo =$_POST['modelo_vehiculo'];
      $color_vehiculo =$_POST['color_vehiculo'];
      $kilometraje =$_POST['kilometraje'];
      $estado =$_POST['estado'];
      $fecha_actual = date("Y-m-d");
      // echo($n_vehiculo);

            $tipo_vehiculo=strtoupper($tipo_vehiculo);
            $placa_vehiculo=strtoupper($placa_vehiculo);
            $marca_vehiculo=strtoupper($marca_vehiculo);
            $modelo_vehiculo=strtoupper($modelo_vehiculo);
            $color_vehiculo=strtoupper($color_vehiculo);
            $estado=strtoupper($estado);

      $traer_placa="SELECT placa_vehiculo, n_vehiculo from tbl_man_vehiculos WHERE placa_vehiculo='$placa_vehiculo' or n_vehiculo='$n_vehiculo';";
      $consultar=$mysqli->query($traer_placa);
      $arreglo = mysqli_fetch_assoc($consultar);
      $query_placa=$arreglo['placa_vehiculo'];
      $query_n_vehiculo=$arreglo['n_vehiculo'];
// echo "$query_n_vehiculo";
            if ($query_placa==$placa_vehiculo) {
              $a_r['msg'] = "placa" ;
              echo json_encode($a_r);

            }else if($query_n_vehiculo==$n_vehiculo) {
              $a_r['msg'] = "nvehiculo" ;
            echo json_encode($a_r);

          }else{
            $string_insert="INSERT INTO tbl_man_vehiculos VALUES (NULL, '$n_vehiculo', '$tipo_vehiculo', '$capacidad_personas', '$placa_vehiculo', '$marca_vehiculo', '$modelo_vehiculo', '$color_vehiculo', '$estado', '$usuario_activo',  '$fecha_actual', '','','$kilometraje');";
            $datos = mysqli_query($mysqli, $string_insert);

            if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);
          }
      break;
///////////////////////////////  CIERRE DEL CASE DE  INSERTAR VEHICULO    //////////////////////////////////////////////////


case 'actualizar_estado_departamento':
$usuario_activo=$_SESSION["usuario_activo"];
$fecha_actual = date("Y-m-d");
$depto1 =$_POST['depto1'];
$id= $_POST['id'];
$select_update_departamento = $_POST['select_update_departamento'];
$depto1=strtoupper($depto1);

$string_update="UPDATE tbl_man_departamento SET modificado_por='$usuario_activo', fecha_modificacion='$fecha_actual', departamento='$depto1', estado='$select_update_departamento' WHERE id_departamento=$id;";
$datos = mysqli_query($mysqli, $string_update);

if ($datos) {
  $a_r['msg'] = "si";
}else {
  $a_r['msg'] = "no" ;
}
echo json_encode($a_r);
break;



               /////////////////////////////////////     CASE DE INSERTAR departamento       /////////////////////////////////////////////////////////////////7
case 'insertar_departamento':
$usuario_activo=$_SESSION["usuario_activo"];
//echo $usuario_activo;
$departamento_d =$_POST['departamento_d'];
$select_insert_estado =$_POST['select_insert_estado'];
$fecha_actual = date("Y-m-d");
//echo( $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);

$departamento_d=strtoupper($departamento_d);


$query="SELECT departamento FROM tbl_man_departamento WHERE departamento='$departamento_d'";
$consultar=$mysqli->query($query);
$arreglo = mysqli_fetch_assoc($consultar);
$traer_departamento=$arreglo['departamento'];

if ($departamento_d!=$traer_departamento ){
$string_insert="INSERT INTO tbl_man_departamento VALUES (NULL, '$departamento_d','$select_insert_estado','$usuario_activo','$fecha_actual','','')";

$datos = mysqli_query($mysqli, $string_insert);

if ($datos) {
$a_r['msg'] = "si";
}else {
$a_r['msg'] = "no" ;
}
echo json_encode($a_r);

}else{
$a_r['msg'] = "existe" ;
echo json_encode($a_r);
}
break;
////////////////////////////////////////////////////  CIERRE DEL CASE ISERTAR DEPARTAMENTO    //////////////////////////////////////////////////////


case 'actualizar_municipio':
$usuario_activo=$_SESSION["usuario_activo"];
$municip =$_POST['municip'];
$id= $_POST['id'];
$actualizar_estado_municipio = $_POST['select_update_municipio'];
$zona= $_POST['zona'];
$depto=$_POST['depto'];
$fecha_actual = date("Y-m-d");

//echo($id_depto);
//            echo( $depto1 . $id . $select_update_departamento);

$municip=strtoupper($municip);
$actualizar_estado_municipio=strtoupper($actualizar_estado_municipio);


$query="SELECT id_departamento from tbl_man_departamento where departamento='$depto'";
$consultar=$mysqli->query($query);
$arreglo = mysqli_fetch_assoc($consultar);
$traer_id_depto=$arreglo['id_departamento'];
//            echo($traer_id_depto);

$string_update="UPDATE tbl_man_municipios SET municipio='$municip', estado_municipio='$actualizar_estado_municipio', modificado_por='$usuario_activo', fecha_modificacion='$fecha_actual', id_zona_fk='$zona', id_departamento_fk='$traer_id_depto' WHERE id_municipio=$id;";
$datos = mysqli_query($mysqli, $string_update);

if ($datos) {
  $a_r['msg'] = "si";
}else {
  $a_r['msg'] = "no" ;
}
echo json_encode($a_r);
break;




                         /////////////////////////////////////     CASE DE INSERTAR nuevo municipio      /////////////////////////////////////////////////////////////////7
case 'insertar_municipio':
$usuario_activo=$_SESSION["usuario_activo"];
//echo $usuario_activo;
$id_departamento =$_POST['id_departamento'];
$id_zona =$_POST['id_zona'];
$municipio_mm =$_POST['municipio_mm'];
$select_update_muni =$_POST['select_update_muni'];
$fecha_actual = date("Y-m-d");
//echo( $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);

$municipio_mm=strtoupper($municipio_mm);

$query="SELECT municipio FROM tbl_man_municipios WHERE municipio='$municipio_mm'";
$consultar=$mysqli->query($query);
$arreglo = mysqli_fetch_assoc($consultar);
$traer_municipio=$arreglo['municipio'];


if ($traer_municipio!=$municipio_mm){
$string_insert="INSERT INTO tbl_man_municipios VALUES (NULL, '$id_departamento', '$id_zona', '$municipio_mm', '$select_update_muni', '$usuario_activo', '$fecha_actual', '', '');";


$datos = mysqli_query($mysqli, $string_insert);

if ($datos) {
$a_r['msg'] = "si";
}else {
$a_r['msg'] = "no" ;
}
echo json_encode($a_r);

}else{
$a_r['msg'] = "existe" ;
echo json_encode($a_r);
}
break;
////////////////////////////////////////////////////  CIERRE DEL CASE ISERTAR DEPARTAMENTO    //////////////////////////////////////////////////////


case 'actualizar_conductor':
                  $usuario_activo=$_SESSION["usuario_activo"];
                  //echo $usuario_activo;

                  $tipo_lic =$_POST['tipo_lic'];
                  $id =$_POST['id'];
                  $estado =$_POST['estado'];
                  $fecha_actual = date("Y-m-d");
                  $fecha_v = $_POST['fecha_v'];


                  $string_update="UPDATE tbl_man_conductor SET  fecha_vencimiento= '$fecha_v', tipo_licencia='$tipo_lic', estado='$estado',
                   fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo'
                   WHERE id_conductor='$id'";


                  $datos = mysqli_query($mysqli, $string_update);

                  if ($datos) {
                    $a_r['msg'] = "si";
                  }else {
                    $a_r['msg'] = "no" ;
                  }
                  echo json_encode($a_r);
                  break;
    /////////////////////////////////////////////dependencia////////////////

      case 'actualizar_dependencia':
                  $usuario_activo=$_SESSION["usuario_activo"];
                  //echo $usuario_activo;

                  $id =$_POST['id'];
                  $estado =$_POST['estado'];
                  $fecha_actual = date("Y-m-d");



                  $string_update="UPDATE tbl_man_dependencia SET  estado='$estado',
                   fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo'
                   WHERE id_dependencia='$id'";


                  $datos = mysqli_query($mysqli, $string_update);

                  if ($datos) {
                    $a_r['msg'] = "si";
                  }else {
                    $a_r['msg'] = "no" ;
                  }
                  echo json_encode($a_r);
                  break;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////7           CASE INSERTAR DEPENDENCIA                   /////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

case 'insertar_dependencia':
                        $usuario_activo=$_SESSION["usuario_activo"];

                      $dependencia= $_POST['dependencia'];
                        $estado = $_POST['estado'];
                        $fecha_actual = date("Y-m-d");

                        $dependencia=strtoupper($dependencia);
                        $estado=strtoupper($estado);


                        //echo( $grupo.' s '. $nivel.' s '. $comprende. ' s '. $categoria. ' s '. $estado);
                        $traer_dependencia="select dependencia from tbl_man_dependencia where dependencia= '$dependencia'";
                        $consultar=$mysqli->query($traer_dependencia);
                        $arreglo = mysqli_fetch_assoc($consultar);
                        $existe=$arreglo['dependencia'];

                        if ($existe!=$dependencia) {
                            // $string_insert="UPDATE tbl_man_categoria_empleados  estado='$estado',
                            //  fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo', grupo_ocupacional='$grupo',
                            //  nivel_organizativo='$nivel', comprende='$comprende', categoria='$categoria' WHERE id_categoria='$id'";

                             $string_insert="INSERT INTO tbl_man_dependencia VALUES (NULL, '$dependencia', '$estado', '$usuario_activo', '$fecha_actual', '', '');";
                            $datos = mysqli_query($mysqli, $string_insert);

                            if ($datos) {
                              $a_r['msg'] = "si";
                            }else {
                              $a_r['msg'] = "no" ;
                            }
                            echo json_encode($a_r);
                      }else{
                              $a_r['msg'] = "existe" ;
                            echo json_encode($a_r);
                        }
                        break;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////      CASE ACTUALIZAR CUENTAS               //////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

  case 'actualizar_cuentas':
      $usuario_activo=$_SESSION["usuario_activo"];
      $id =$_POST['id'];
      $num_cta =$_POST['numero'];
      $estado =$_POST['estado'];
      $fecha_actual = date("Y-m-d");
        $string_update="UPDATE tbl_man_cuentas_bancarias SET   numero_cuenta ='$num_cta', estado = '$estado',
                                fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo' WHERE id_cta ='$id'";

        $datos = mysqli_query($mysqli, $string_update);
            if ($datos) {
                $a_r['msg'] = "si";
            }else {
                $a_r['msg'] = "no" ;
            }
          echo json_encode($a_r);
  break;


  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
  //////////////////////////////      CASE INSERTAR CUENTAS               //////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
case 'insertar_cuentas':
      $usuario_activo=$_SESSION["usuario_activo"];
      $banco =$_POST['banco'];
      $tipo_cuenta =$_POST['tipo_cuenta'];
      $tipo_moneda =$_POST['tipo_moneda'];
      $numero_cuenta=$_POST['numero_cuenta'];
      $estado =$_POST['estado'];
      $fecha_actual = date("Y-m-d");
      $banco=strtoupper($banco);

        $traer_cuentas="select numero_cuenta, tipo_moneda from tbl_man_cuentas_bancarias where numero_cuenta='$numero_cuenta' and tipo_moneda ='$tipo_moneda';";
            $consultar=$mysqli->query($traer_cuentas);
            $arreglo = mysqli_fetch_assoc($consultar);
            $existe=$arreglo['numero_cuenta'];

        if ($existe!=$numero_cuenta  ) {
            $string_insert="INSERT INTO tbl_man_cuentas_bancarias VALUES (NULL, '$banco', '$tipo_cuenta', '$tipo_moneda', '$numero_cuenta', '$estado', '$usuario_activo',  '$fecha_actual', '','');";
            $datos = mysqli_query($mysqli, $string_insert);

            if ($datos) {
                $a_r['msg'] = "si";
            }else {
                $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);

        }else{
              $a_r['msg'] = "existe" ;
            echo json_encode($a_r);
        }
  break;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////      CASE BUSCAR IDENTIDAD               //////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
  case 'buscar_identidad':
       $identidad=$_POST['identidad'];
       $query="SELECT emp.id_empleado as id_empleado, emp.nombre1 as nombre1, emp.nombre2 as nombre2, emp.apellido1 as apellido1, emp.apellido2 as apellido2, emp.reloj_marcador as reloj_marcador, emp.tarjeta_identidad as tarjeta_identidad, emp.estado_civil as estado_civil, emp.cargo, emp.salario as salario, emp.telefono as telefono, emp.cta_bancaria as cta_bancaria, emp.estado as estado, dep.id_dependencia as id_dependencia, cate.id_categoria as id_categoria
         from tbl_man_empleados as emp
INNER JOIN tbl_man_dependencia as dep on dep.id_dependencia=emp.id_dependencia_FK
INNER JOIN tbl_man_categoria_empleados as cate on cate.id_categoria=emp.id_categoria_fk";

       $query="SELECT emp.id_empleado as id_empleado, emp.nombre1 as nombre1,
       emp.nombre2 as nombre2, emp.apellido1 as apellido1, emp.apellido2 as apellido2,
       emp.reloj_marcador as reloj_marcador, emp.tarjeta_identidad as tarjeta_identidad,
       emp.estado_civil as estado_civil, emp.cargo, emp.salario as salario, emp.telefono as telefono,
       emp.cta_bancaria as cta_bancaria, emp.estado as estado, emp.motivo_inactividad as motivo_baja, dep.id_dependencia as id_dependencia,
       cate.id_categoria as id_categoria, dir.direccion_detalle as direccion,muni.id_municipio as id_municipio_fk
              from tbl_man_empleados as emp
              INNER JOIN tbl_man_dependencia as dep on dep.id_dependencia=emp.id_dependencia_FK
              INNER JOIN tbl_man_categoria_empleados as cate on cate.id_categoria=emp.id_categoria_fk
              INNER JOIN tbl_direcciones_empleados as dir on dir.id_empleado_fk=emp.id_empleado
              INNER JOIN tbl_man_municipios as muni on muni.id_municipio=dir.id_municipio_fk

            WHERE tarjeta_identidad = '$identidad' ;";
               $consultar=$mysqli->query($query);
               $arreglo = mysqli_fetch_assoc($consultar);
               $id_empleado=$arreglo['id_empleado'];

       $query_con="SELECT tipo_licencia, fecha_vencimiento from tbl_man_conductor   WHERE id_empleado_fk = '$id_empleado' ;";
              $consultar_con=$mysqli->query($query_con);
              $arreglo_con = mysqli_fetch_assoc($consultar_con);
              $tipo_licencia=$arreglo_con['tipo_licencia'];
              $fecha_vencimiento=$arreglo_con['fecha_vencimiento'];

      if ($id_empleado){ // SI EXISTE COMO EMPLEADO
                                   # SI EXISTE COMO EMPLEADO
         $id_empleado=$arreglo['id_empleado'];
         $nombre1=$arreglo['nombre1'];
         $nombre2=$arreglo['nombre2'];
         $apellido1=$arreglo['apellido1'];
         $apellido2=$arreglo['apellido2'];
         $r_m=$arreglo['reloj_marcador'];
         $telefono=$arreglo['telefono'];
         $estado_civil=$arreglo['estado_civil'];
         $cargo=$arreglo['cargo'];
         $salario=$arreglo['salario'];
         $cta_bancaria=$arreglo['cta_bancaria'];
         $estado=$arreglo['estado'];
         $motivo_baja=$arreglo['motivo_baja'];
         $id_dependencia=$arreglo['id_dependencia'];
         $id_categoria=$arreglo['id_categoria'];
          $id_mun_fk=$arreglo['id_municipio_fk'];
          $direccion=$arreglo['direccion'];
         $estado_civil=$arreglo['estado_civil'];

              $a_r['id_empleado'] = $id_empleado;
              $a_r['nombre1'] = $nombre1;
              $a_r['nombre2'] = $nombre2;
              $a_r['apellido1'] = $apellido1;
              $a_r['apellido2'] = $apellido2;
              $a_r['r_m'] = $r_m;
              $a_r['telefono'] = $telefono;
              $a_r['estado_civil'] = $estado_civil;
              $a_r['cargo'] = $cargo;
              $a_r['salario'] = $salario;
              $a_r['cta_bancaria'] = $cta_bancaria;
              $a_r['estado'] = $estado;
              $a_r['motivo_baja'] = $motivo_baja;
              $a_r['id_dependencia'] = $id_dependencia;
              $a_r['id_categoria'] = $id_categoria;
               $a_r['id_mun_fk'] = $id_mun_fk;
               $a_r['direccion'] = $direccion;
              $a_r['estado_civil'] = $estado_civil;
              $a_r['tipo_licencia'] = $tipo_licencia;
               $a_r['f_vencimiento'] = $fecha_vencimiento;
              $a_r['msg'] = "Realizara actualizacion para el empleado: ";
              $a_r['color_alerta'] = "alert-info";
              $a_r['existe'] = 'si';
    }else {
              $a_r['ingreso'] = 'no';
              $a_r['color_alerta'] = "alert-success";
              $a_r['msg'] = "Realizara la creación de un nuevo empleado ";

    }

         echo json_encode($a_r);
break;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////      CASE INSERT UPDATE DE EMPLEADOS               //////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

//---------------->>>>>>>>>>> EL PROCESO MAS DIFICIL QUE HE HECHO EN MI VIDA
            case 'insup_empleado':
               $usuario_activo=$_SESSION["usuario_activo"];
              //$id =$_POST['id'];
              $identidad =$_POST['identidad'];
              $nombre1 =$_POST['nombre1'];
              $nombre2 =$_POST['nombre2'];
              $apellido1 =$_POST['apellido1'];
              $apellido2 =$_POST['apellido2'];
              $reloj =$_POST['reloj'];
              $telefono =$_POST['telefono'];
              $dependencia =$_POST['dependencia'];
              $cargo =$_POST['cargo'];
               $cargo = trim($cargo); //ELIMINAMOS LOS ESPACIOS ANTES Y DESPUES DE LA CADENA
              //  $cargo = ereg_replace(' +',' ',$cargo); // SUTITUIMOS LOS BLOQUES DE MAS DE UN ESPACIO POR UN ESPACIO SENCILLO

              $categoria =$_POST['categoria'];
              $salario =$_POST['salario'];
              $municipio =$_POST['municipio'];
              $direccion =$_POST['direccion'];
              $estado_civil =$_POST['estado_civil'];
              $estado =$_POST['estado'];
              $f_vencimiento =$_POST['f_vencimiento'];
              $t_lic =$_POST['t_lic'];
              $cta_bancaria =$_POST['cta_bancaria'];
              $motivobaja =$_POST['motivobaja'];
              $fecha_actual = date("Y-m-d");

              if ($estado=='ACTIVO') {
                $motivobaja='';

              }




             $nombre1=strtoupper($nombre1);
             $nombre2=strtoupper($nombre2);
             $apellido1=strtoupper($apellido1);
             $apellido2=strtoupper($apellido2);
             $cargo=strtoupper($cargo);
             $direccion=strtoupper($direccion);

            $query="SELECT emp.id_empleado as id_empleado, emp.nombre1 as nombre1,
                    emp.nombre2 as nombre2, emp.apellido1 as apellido1, emp.apellido2 as apellido2,
                    emp.reloj_marcador as reloj_marcador, emp.tarjeta_identidad as identidad,
                    emp.estado_civil as estado_civil, emp.cargo, emp.salario as salario, emp.telefono as telefono,
                    emp.cta_bancaria as cta_bancaria, emp.estado as estado, dep.id_dependencia as id_dependencia,
                    cate.id_categoria as id_categoria, dir.direccion_detalle as direccion,muni.id_municipio as id_municipio_fk
                   from tbl_man_empleados as emp
                   INNER JOIN tbl_man_dependencia as dep on dep.id_dependencia=emp.id_dependencia_FK
                   INNER JOIN tbl_man_categoria_empleados as cate on cate.id_categoria=emp.id_categoria_fk
                   INNER JOIN tbl_direcciones_empleados as dir on dir.id_empleado_fk=emp.id_empleado
                   INNER JOIN tbl_man_municipios as muni on muni.id_municipio=dir.id_municipio_fk
                   WHERE tarjeta_identidad = '$identidad' ;";
            $consultar=$mysqli->query($query);
            $arreglo = mysqli_fetch_assoc($consultar);
            $id_empleado=$arreglo['id_empleado'];
            $traer_identidad=$arreglo['identidad'];




            $query_insert="SELECT max(id_empleado)+1 as id_empleado, reloj_marcador from tbl_man_empleados";
            $consultar_id=$mysqli->query($query_insert);
            $arreglo_id = mysqli_fetch_assoc($consultar_id);
            $id_empleado_ins=$arreglo_id['id_empleado'];
            $query_reloj=$arreglo_id['reloj_marcador'];


           $query_id_con="SELECT id_conductor from tbl_man_conductor   WHERE id_empleado_fk = '$id_empleado' ;";
              $consultar_id_con=$mysqli->query($query_id_con);
              $arreglo_id_con = mysqli_fetch_assoc($consultar_id_con);
              $id_conductor=$arreglo_id_con['id_conductor'];

          $query_direc="SELECT id_direccion_emp from tbl_direcciones_empleados   WHERE id_empleado_fk = '$id_empleado';";
                  $consultar_direc=$mysqli->query($query_direc);
                  $arreglo_direc = mysqli_fetch_assoc($consultar_direc);
                  $id_direccion=$arreglo_direc['id_direccion_emp'];













          if($traer_identidad === $identidad){//en caso que exista hace update
                              // echo('son iguales');
              if($cargo === 'CONDUCTOR'){
                                // echo('entro al if conductor');

                $string_update_empleado="UPDATE tbl_man_empleados SET id_categoria_fk ='$categoria', id_dependencia_FK ='$dependencia',
                            nombre1 ='$nombre1', nombre2 ='$nombre2', apellido1 ='$apellido1', apellido2= '$apellido2', reloj_marcador = '$reloj',
                            tarjeta_identidad = '$identidad', estado_civil= '$estado_civil', cta_bancaria = '$cta_bancaria', cargo= '$cargo',
                            salario= '$salario', telefono= '$telefono', estado= '$estado', motivo_inactividad='$motivobaja', fecha_modificacion='$fecha_actual',
                            modificado_por='$usuario_activo' WHERE id_empleado ='$id_empleado'";


                    $string_update_conductor="UPDATE tbl_man_conductor SET   tipo_licencia ='$t_lic', fecha_vencimiento ='$f_vencimiento',
                               fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo' WHERE id_empleado_fk ='$id_empleado'";

                    $string_update_direccion="UPDATE tbl_direcciones_empleados SET id_municipio_fk='$municipio', direccion_detalle ='$direccion'
                               WHERE id_empleado_fk ='$id_empleado'";


                    $datos = mysqli_query($mysqli, $string_update_empleado);
                    $datos1 = mysqli_query($mysqli, $string_update_conductor);
                    $datos2 = mysqli_query($mysqli, $string_update_direccion);

                    if ($f_vencimiento<=$fecha_actual) {
                      $a_r['vencida'] = "si";
                    }else {
                      $a_r['vencida'] = "no";
                    }

                    if ($datos && $datos1 && $datos2) {
                         $a_r['msg'] = "si";
                    }else {
                         $a_r['msg'] = "no" ;
                    }
                    echo json_encode($a_r);

              }else{

                  $string_update_empleado="UPDATE tbl_man_empleados SET id_categoria_fk= '$categoria',
                   id_dependencia_FK ='$dependencia', nombre1 ='$nombre1', nombre2 ='$nombre2',
                   apellido1 ='$apellido1', apellido2= '$apellido2', reloj_marcador = '$reloj',
                   tarjeta_identidad = '$identidad', estado_civil= '$estado_civil', cta_bancaria= '$cta_bancaria',
                   cargo= '$cargo', salario= '$salario', telefono= '$telefono', estado='$estado',
                   fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo', motivo_inactividad='$motivobaja'
                   WHERE id_empleado ='$id_empleado'";

                  $string_update_direccion="UPDATE tbl_direcciones_empleados SET id_municipio_fk='$municipio', direccion_detalle ='$direccion' WHERE id_empleado_fk ='$id_empleado'";


                  $datos = mysqli_query($mysqli, $string_update_empleado);
                  $datos2 = mysqli_query($mysqli, $string_update_direccion);

                      if ($datos && $datos2) {
                             $a_r['msg'] = "si";
                      }else {
                             $a_r['msg'] = "no" ;
                      }
                                  echo json_encode($a_r);
            }


//////////////////////////////////            INSERT EN LA TABLA EMPLEADO
    }else{//Inicio de insertar empleado

          if($cargo === 'CONDUCTOR'){

            // echo "string";
              $string_insert_empleado="INSERT INTO tbl_man_empleados VALUES (NULL,'$categoria','$dependencia','$nombre1',
                      '$nombre2','$apellido1','$apellido2','$reloj','$identidad','$estado_civil','$cargo','$salario',
                      '$telefono','$cta_bancaria','$estado','$usuario_activo','$fecha_actual','','','DISPONIBLE','$motivobaja');";


              $string_insert_conductor="INSERT INTO tbl_man_conductor VALUES (NULL,'$id_empleado_ins','$t_lic','$f_vencimiento'
                                          ,'$estado','$usuario_activo','$fecha_actual','','',NULL);";

              $string_insert_direccion="INSERT INTO tbl_direcciones_empleados VALUES (NULL,'$id_empleado_ins', '$municipio','$direccion');";

                  $datos = mysqli_query($mysqli, $string_insert_empleado);
                  $datos1 = mysqli_query($mysqli, $string_insert_conductor);
                  $datos2 = mysqli_query($mysqli, $string_insert_direccion);


              if ($datos && $datos1 && $datos2) {
                         $a_r['msg'] = "si";
              }else {
                         $a_r['msg'] = "no" ;
              }
                                  echo json_encode($a_r);

          }else{//en caso que no sea conductor
            // echo $id_empleado_ins.' muni '.$municipio.' direccion '.$direccion;
              $string_insert_empleado="INSERT INTO tbl_man_empleados VALUES (NULL,'$categoria','$dependencia','$nombre1',
                                '$nombre2','$apellido1','$apellido2','$reloj','$identidad','$estado_civil','$cargo','$salario',
                               '$telefono','$cta_bancaria','$estado','$usuario_activo','$fecha_actual','','','DISPONIBLE','$motivobaja');";


              $string_insert_direccion="INSERT INTO tbl_direcciones_empleados VALUES (NULL,'$id_empleado_ins','$municipio','$direccion');";


                      $datos = mysqli_query($mysqli, $string_insert_empleado);
                      $datos2 = mysqli_query($mysqli, $string_insert_direccion);

                if ($datos && $datos2) {
                       $a_r['msg'] = "si";
                }else {
                     $a_r['msg'] = "no guardo" ;
                }
                echo json_encode($a_r);
          }
}
break;



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////      CASE ACTUALIZAR ZONA               //////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
            case 'actualizar_zona':
            $usuario_activo=$_SESSION["usuario_activo"];
            $nombre_zona =$_POST['nombre_zona'];
            $id =$_POST['id'];
            $estado =$_POST['estado'];
            $fecha_actual = date("Y-m-d");
            // echo($nombre_zona);

            $estado=strtoupper($estado);
            $nombre_zona=strtoupper($nombre_zona);

            if ($existe!=$nombre_zona) {
            $string_update="UPDATE tbl_man_zonas SET nombre_zona='$nombre_zona', estado='$estado',
           fecha_modificacion='$fecha_actual', modificado_por='$usuario_activo' WHERE id_zona='$id'";

            $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);
          }else{
        $a_r['msg'] = "existe" ;
      echo json_encode($a_r);
        }
            break;



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////      CASE INSERTAR ZONA               //////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
      case 'insertar_zona':
      $usuario_activo=$_SESSION["usuario_activo"];

      $nombre_zona =$_POST['nombre_zona'];
      $estado =$_POST['estado'];
      $fecha_actual = date("Y-m-d");

            $nombre_zona=strtoupper($nombre_zona);

            $traer_zona="select nombre_zona from tbl_man_zonas where nombre_zona='$nombre_zona';";
            $consultar=$mysqli->query($traer_zona);
            $arreglo = mysqli_fetch_assoc($consultar);
            $existe=$arreglo['nombre_zona'];

            if ($existe!=$nombre_zona) {
              $string_insert="INSERT INTO tbl_man_zonas VALUES (NULL, '$nombre_zona', '$usuario_activo', '$fecha_actual', '', '','ESPERANDO ASIGNACION DE CATEGORIA');";
              $datos = mysqli_query($mysqli, $string_insert);
              if ($datos) {

                      $a_r['msg'] = "si";
                    }else {
                      $a_r['msg'] = "no" ;
                    }
                    echo json_encode($a_r);
              }else{
            $a_r['msg'] = "existe" ;
          echo json_encode($a_r);
            }
      break;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
/////////////////////////////////       CASE ACTUALIZAR CATEGORIA ZONA        /////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
            case 'actualizar_cate_zona':
            $usuario_activo=$_SESSION["usuario_activo"];
            $id_cate_zona =$_POST['id_cate_z'];

            $periodo_corto =$_POST['pcorto'];
            $periodo_largo =$_POST['plargo'];
            $estado =$_POST['estado_cate_z'];
            $fecha_actual = date("Y-m-d");
            //echo ( $periodo_largo. 'periodo_corto '.$periodo_corto);



            $string_update="UPDATE tbl_categoria_zona SET periodo_corto='$periodo_corto',periodo_largo='$periodo_largo', estado='$estado',
                                                  fecha_modificacion='$fecha_actual',   modificado_por='$usuario_activo' WHERE id_categoria_zona='$id_cate_zona'";


            $datos = mysqli_query($mysqli, $string_update);

            if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
            echo json_encode($a_r);
            break;




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
/////////////////////////////////       CASE INSERTAR CATEGORIA ZONA        /////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
      case 'insertar_cate_zona':
      $usuario_activo=$_SESSION["usuario_activo"];
      $zona =$_POST['select_zona'];
      $categoria =$_POST['select_categoria'];
      $p_corto =$_POST['p_corto'];
      $p_largo =$_POST['p_largo'];
      $estado =$_POST['estado_cate_zona'];
      $fecha_actual = date("Y-m-d");



      $traer_cate_zona="SELECT id_zona_fk, id_categoria_fk FROM tbl_categoria_zona WHERE id_zona_fk ='$zona'  AND id_categoria_fk='$categoria';";
      $consultar=$mysqli->query($traer_cate_zona);
      $arreglo = mysqli_fetch_assoc($consultar);
      $tarer_id_zona=$arreglo['id_zona_fk'];
      $tarer_id_cate=$arreglo['id_categoria_fk'];

      $traer_id_zona="SELECT id_zona, estado FROM tbl_man_zonas WHERE id_zona ='$zona';";
      $consultar1=$mysqli->query($traer_id_zona);
      $arreglo1 = mysqli_fetch_assoc($consultar1);
      $tarer_id_zonas=$arreglo1['id_zona'];
      $tarer_estado_z=$arreglo1['estado'];
// echo "$tarer_estado_z";
            if ($zona!=  $tarer_id_zona && $categoria!=  $tarer_id_cate) {
              if ($tarer_estado_z=='ESPERANDO ASIGNACION DE CATEGORIA') {
                // echo "string";
                $string_update_z="UPDATE tbl_man_zonas SET estado='ACTIVO' WHERE id_zona='$tarer_id_zonas'";
                $datos1 = mysqli_query($mysqli, $string_update_z);

                # code...
              }

              $string_insert="INSERT INTO tbl_categoria_zona VALUES (null,' $zona',' $categoria',' $p_corto',' $p_largo','$estado','$usuario_activo','$fecha_actual','','');";
              $datos = mysqli_query($mysqli, $string_insert);
              if ($datos) {

                      $a_r['msg'] = "si";
                    }else {
                      $a_r['msg'] = "no" ;
                    }
                    echo json_encode($a_r);
              }else{
            $a_r['msg'] = "existe" ;
          echo json_encode($a_r);
            }
      break;
      default:
        # code...
        break;
    } //cierre del switch
  }
}else {
  header('Location: http://localhost/inhgeomin/');
}

?>

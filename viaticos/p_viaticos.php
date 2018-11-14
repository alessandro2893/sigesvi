<?php
header('Content-type: application/json; charset=utf-8'); // CODIFICACION PARA DEVOLVER ARREGLOS JSON
// PARA QUE SE ACEPTEN SOLO PETICIONES DE TIPO AJAX
session_start();

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
require_once("../conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
  if (isset($_POST['hacer'])) {
    switch ($_POST['hacer']) {
///////////////////////////////////   INSERTAR NUEVA SOLICITUD    ///////////////////////////////////
case 'traer_monto':
$id_emp_fk=$_POST['id_emp_fk'];
$id_zona=$_POST['id_zona_fk'];
$dias=$_POST['dias'];
$id_categoria=$_POST['id_categoria_fk'];
if ($dias>31) {
$query_monto="SELECT periodo_largo from tbl_categoria_zona where id_zona_fk='$id_zona' AND id_categoria_fk='$id_categoria'";
$consultar2=$mysqli->query($query_monto);
$arreglo2 = mysqli_fetch_assoc($consultar2);
$viaticos_diarios=$arreglo2['periodo_largo'];
$total_viaticos=$dias*$viaticos_diarios;
$total_viaticos=round($total_viaticos,2);

}else {
$query_monto="SELECT periodo_corto from tbl_categoria_zona where id_zona_fk='$id_zona' AND id_categoria_fk='$id_categoria'";
$consultar2=$mysqli->query($query_monto);
$arreglo2 = mysqli_fetch_assoc($consultar2);
$viaticos_diarios=$arreglo2['periodo_corto'];
$total_viaticos=$dias*$viaticos_diarios;
$total_viaticos=round($total_viaticos,2);

}



// $str_dias_t="SELECT fn_calcular_monto('$id_emp_fk', '$id_zona','$dias') AS total_viaticos FROM DUAL";
// //$str_dias="SELECT @dias:=fn_dias_viajara('$fecha_retorno','$fecha_salida') FROM DUAL";
// $datos = mysqli_query($mysqli, $str_dias_t);
// $ar = mysqli_fetch_assoc($datos);
// $total_viaticos = $ar['total_viaticos'];
// $total_viaticos=round($total_viaticos,2);


if ($arreglo2) {
$a_r['msg'] = "si";
$a_r['total_viaticos'] = $total_viaticos;
$a_r['viaticos_diarios'] = $viaticos_diarios;

}else {
$a_r['msg'] = "no" ;
}
echo json_encode($a_r);
break;


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////7            GENERAR SOLICITUD             /////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

      case 'insertar_solicitud':
      $usuario_activo=$_SESSION["usuario_activo"];
      $id_cate =$_POST['id_cate'];
      $fecha_salida = $_POST['f_salida'];
      $fecha_retorno = $_POST['f_retorno'];
      $id_departamento =$_POST['id_departamento'];
      $id_municipio =$_POST['id_municipio'];
      $pgira =$_POST['pgira'];
      $dias =$_POST['dia'];
      $viaticos_diarios =$_POST['viaticos_diarios'];
      $total_viaticos =$_POST['total_viaticos'];
      $id_zona =$_POST['zona'];
      $id_emp_fk =$_POST['id_emp_fk'];
      $fecha_actual = date("Y-m-d");
      $pgira=strtoupper($pgira);
      $cod_f_salida = date('dmY', strtotime($fecha_salida));
      $cod_f_retorno = date('dmY', strtotime($fecha_retorno));
      $codig_gira=$cod_f_salida.$cod_f_retorno.$id_zona;
      //$dias=5;

      $query_departamento="SELECT departamento from tbl_man_departamento where id_departamento='$id_departamento'";
      $consultar2=$mysqli->query($query_departamento);
      $arreglo2 = mysqli_fetch_assoc($consultar2);
      $departamento=$arreglo2['departamento'];

      $query_municipio="SELECT municipio from tbl_man_municipios where id_municipio='$id_municipio'";
      $consultar2=$mysqli->query($query_municipio);
      $arreglo2 = mysqli_fetch_assoc($consultar2);
      $municipio=$arreglo2['municipio'];
      $lgira=$departamento.' '.$municipio;


// QUERY PARA VALIDAR SI YA EXISTE UNA GIRA EN LA TABLA SERVIGE
            $query_capacidad="SELECT COUNT(id_sgenerales) as cantidad, codigo_gira, id_vehiculo_fk,
                    fecha_salida_vehiculo, fecha_retorno_vehiculo, estado
                    FROM tbl_servicios_generales where codigo_gira='$codig_gira' AND estado='SERVIGE'
                    group by codigo_gira";
            $consultar2=$mysqli->query($query_capacidad);
            $arreglo2 = mysqli_fetch_assoc($consultar2);
            $cantidad=$arreglo2['cantidad'];
            $codigo_gira_query=$arreglo2['codigo_gira'];
            $id_vehiculo_fk_query=$arreglo2['id_vehiculo_fk'];
            $fecha_salida_vehiculo_query=$arreglo2['fecha_salida_vehiculo'];
            $fecha_retorno_vehiculo_query=$arreglo2['fecha_retorno_vehiculo'];
            $estado_query=$arreglo2['estado'];


// QUERY PARA TRAER EL ULTIMO REGISTRO DE LA TABLA UNIDAD SOLICITANTE
            $query_capacidad="SELECT id_usoli FROM tbl_unidad_solicitante ORDER BY id_usoli DESC LIMIT 1";
            $consultar2=$mysqli->query($query_capacidad);
            $arreglo2 = mysqli_fetch_assoc($consultar2);
            $id_usoli=$arreglo2['id_usoli']+1;





      $mysqli->autocommit(false);// CAMBIAMOS EL AUTOCOMIT A FALSO
      if ($codigo_gira_query==$codig_gira AND $estado_query=="SERVIGE") {
            if ($cantidad>=5 ) {
              // $a_r['msg'] = "lleno";

              $string_insert="INSERT INTO tbl_unidad_solicitante
                              VALUES (NULL, '$id_zona', '$id_emp_fk','$fecha_salida', '$fecha_retorno', '$lgira', '$pgira','$dias','$viaticos_diarios', '$total_viaticos',
                                      'UNISOL', fn_correlativo(),'$codig_gira','$fecha_actual','$usuario_activo', '');";
              //echo $string_insert;
              $string_update="UPDATE tbl_man_empleados SET estado_gira='UNISOL' WHERE id_empleado='$id_emp_fk'";
              $inserta_u_soli=$mysqli->query($string_insert); // INSERTA EN UNIDAD DE SOLICITANTE
              $update_estado_gira=$mysqli->query($string_update); // ACTUALIZA EL ESTADO



              if ($inserta_u_soli&&$update_estado_gira) { // LOS DOS FUERON INSERTADOS (TRUE Y TRUE)
                $mysqli->commit(); // AFIRMAMOS ESO EN LA BASE DE DATOS
                $mysqli->autocommit(true); // CAMBIAMOS EL AUTOCOMIT A VERDADERO QUE ESE ES EL VALOR POR DEFECTO
                $a_r['msg'] = "sii";
              }else {
                $mysqli->rollback(); // SI HUBO ERROR ENTONCES REGRESAR ATRAS
                $mysqli->autocommit(true);
                $a_r['msg'] = "no" ;
              }

            }else {
              // echo "string";
              $string_insert="INSERT INTO tbl_unidad_solicitante
                              VALUES (NULL, '$id_zona', '$id_emp_fk','$fecha_salida', '$fecha_retorno', '$lgira', '$pgira','$dias','$viaticos_diarios', '$total_viaticos',
                                      'SERVIGE', fn_correlativo(),'$codig_gira','$fecha_actual','$usuario_activo', '');";

              $string_update="UPDATE tbl_man_empleados SET estado_gira='SERVIGE' WHERE id_empleado='$id_emp_fk'";

              $string_update_servige="INSERT INTO tbl_servicios_generales
                              VALUES (NULL, '$id_usoli', '$id_vehiculo_fk_query','$fecha_salida_vehiculo_query', '$fecha_retorno_vehiculo_query', '$lgira', '$fecha_actual' ,'$usuario_activo', 'SERVIGE','$codig_gira','');";

                    $inserta_u_soli=$mysqli->query($string_insert); // INSERTA EN UNIDAD DE SOLICITANTE
                    $update_estado_gira=$mysqli->query($string_update); // ACTUALIZA EL ESTADO
                    $update_servige=$mysqli->query($string_update_servige); // ACTUALIZA EL ESTADO


                    if ($inserta_u_soli&&$update_estado_gira&& $update_servige) { // LOS DOS FUERON INSERTADOS (TRUE Y TRUE)
                      $mysqli->commit(); // AFIRMAMOS ESO EN LA BASE DE DATOS
                      $mysqli->autocommit(true); // CAMBIAMOS EL AUTOCOMIT A VERDADERO QUE ESE ES EL VALOR POR DEFECTO
                      $a_r['msg'] = "sii";
                    }else {
                      $mysqli->rollback(); // SI HUBO ERROR ENTONCES REGRESAR ATRAS
                      $mysqli->autocommit(true);
                      $a_r['msg'] = "no" ;
                    }
            }




      }else {

        // echo "string23";
        $string_insert="INSERT INTO tbl_unidad_solicitante
                        VALUES (NULL, '$id_zona', '$id_emp_fk','$fecha_salida', '$fecha_retorno', '$lgira', '$pgira','$dias','$viaticos_diarios', '$total_viaticos',
                                'UNISOL', fn_correlativo(),'$codig_gira','$fecha_actual','$usuario_activo', '');";
        //echo $string_insert;
        $string_update="UPDATE tbl_man_empleados SET estado_gira='UNISOL' WHERE id_empleado='$id_emp_fk'";
        $inserta_u_soli=$mysqli->query($string_insert); // INSERTA EN UNIDAD DE SOLICITANTE
        $update_estado_gira=$mysqli->query($string_update); // ACTUALIZA EL ESTADO



        if ($inserta_u_soli&&$update_estado_gira) { // LOS DOS FUERON INSERTADOS (TRUE Y TRUE)
          $mysqli->commit(); // AFIRMAMOS ESO EN LA BASE DE DATOS
          $mysqli->autocommit(true); // CAMBIAMOS EL AUTOCOMIT A VERDADERO QUE ESE ES EL VALOR POR DEFECTO
          $a_r['msg'] = "sii";
        }else {
          $mysqli->rollback(); // SI HUBO ERROR ENTONCES REGRESAR ATRAS
          $mysqli->autocommit(true);
          $a_r['msg'] = "no" ;
        }
      }




    // }

      echo json_encode($a_r);
      break;



//////////////////////////////////          CASE DE CANCELAR SOLICITUD          ///////////////////////////////
      case 'cancelar_solicitud':
              $usuario_activo=$_SESSION["usuario_activo"];
              $id =$_POST['id_usoli'];
              $id_empleado =$_POST['id_emp'];
              $motivo_cancelacion =$_POST['motivo_cancelacion'];
              $fecha_actual = date("Y-m-d");

              $motivo_cancelacion=strtoupper($motivo_cancelacion);

              $string_update="UPDATE tbl_unidad_solicitante SET estado='CANCELADO', motivo_cancelacion='$motivo_cancelacion'
                WHERE id_usoli='$id'";
               $datos = mysqli_query($mysqli, $string_update);

               $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='DISPONIBLE' WHERE id_empleado='$id_empleado'";
                $datos2 = mysqli_query($mysqli, $string_update_emp);


              if ($datos) {
                $a_r['msg'] = "si";
              }else {
                $a_r['msg'] = "no" ;
              }
              echo json_encode($a_r);
              break;
  ////////////////////////////////////////////////////        CIERRE DEL CASE ACTUALIZAR CATEGORIA        //////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////          PROCESOS DE PANTALLA ASIGNACION DE VEHICULOS          ///////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ---->>  CASE PARA ASIGNAR UN VEHICULO
          case 'asignar_vehiculo':
                $usuario_activo=$_SESSION["usuario_activo"];
                $fecha_actual = date("Y-m-d");
                $id =$_POST['id_usoli'];
                $id_vehiculo =$_POST['id_vehiculo'];
                $cgira =$_POST['cgira'];
                $lgira =$_POST['lgira'];
                $cantidad =$_POST['cantidad'];
                $f_salida =$_POST['f_salida'];
                $f_retorno =$_POST['f_retorno'];
                $kilometraje =$_POST['kilometraje'];
                //echo($cantidad);


                $lgira=strtoupper($lgira);
                $query_traer_personal="select id_usoli, id_empleado_fk from tbl_unidad_solicitante where codigo_gira='$cgira' and estado='UNISOL'";
                $consultar=$mysqli->query($query_traer_personal);
                $arreglo = mysqli_fetch_assoc($consultar);

                $query_traer_can_vehi="select capacidad_personas, placa_vehiculo from tbl_man_vehiculos where id_vehiculo='$id_vehiculo'";
                $consultar2=$mysqli->query($query_traer_can_vehi);
                $arreglo2 = mysqli_fetch_assoc($consultar2);
                $traer_cantidad_per=$arreglo2['capacidad_personas'];
                $traer_placa=$arreglo2['placa_vehiculo'];


            if ($cantidad>0){
                  $contador=0;
//                     print_r($arreglo);
                     do{
                       if($contador>$traer_cantidad_per){
                       $a_r['msg'] = "excedio";

                       break;
                       }else {
                        //  echo(" entro ".$contador);

                       $traer_id_soli=$arreglo['id_usoli'];
                       $traer_id_empleado=$arreglo['id_empleado_fk'];

                       $string_insert="INSERT INTO tbl_servicios_generales VALUES (NULL, '$traer_id_soli', '$id_vehiculo',
                       '$f_salida', '$f_retorno','$lgira','$fecha_actual','$usuario_activo','SERVIGE','$cgira','');";
                       $datos = mysqli_query($mysqli, $string_insert);
                    //   echo($contador);
                        $string_update_empelados="UPDATE tbl_man_empleados SET estado_gira='SERVIGE' WHERE id_empleado='$traer_id_empleado'";
                        $datos2 = mysqli_query($mysqli, $string_update_empelados);

                        $string_update_unisoli="UPDATE tbl_unidad_solicitante SET estado='SERVIGE' WHERE id_usoli='$traer_id_soli'";
                        $datos3 = mysqli_query($mysqli, $string_update_unisoli);

                        $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='ASIGNADO', kilometraje='$kilometraje' WHERE placa_vehiculo='$traer_placa'";
                        $datos4 = mysqli_query($mysqli, $string_update_vehiculo);

                        if ($datos) {
                          $a_r['msg'] = "si";
                        }else {
                          $a_r['msg'] = "no";
                        }
                       }
                       $contador=$contador+1;
                     }while($arreglo = mysqli_fetch_assoc($consultar));

                  echo json_encode($a_r);

            }else {
              echo('no hay filas');
            }
                break;
    ////////////////////////////////////////////////////        CIERRE DEL CASE ACTUALIZAR CATEGORIA        //////////////////////////////////////////////////////


/////////////////////////////        CASE CANCELAR GIRA COMPELTA  //////////////////////////////////////////////////////
    case 'cancelar_gira':
            $usuario_activo=$_SESSION["usuario_activo"];
            $fecha_actual = date("Y-m-d");
            $id_servige =$_POST['id_servige'];
            $cgira =$_POST['cgira'];
            $detalle =$_POST['detalle'];
            $placa =$_POST['placa'];
            $detalle=strtoupper($detalle);

            $query_traer_usoli="SELECT id_usoli, id_empleado_fk from tbl_unidad_solicitante where codigo_gira='$cgira' and estado='SERVIGE'";
            $consultar=$mysqli->query($query_traer_usoli);
            $arreglo = mysqli_fetch_assoc($consultar);

            do{
                  // echo('entro al else');
              $traer_id_soli=$arreglo['id_usoli'];
              $traer_id_empleado=$arreglo['id_empleado_fk'];

              $string_update_servige="UPDATE tbl_servicios_generales set estado='CANCELADO', motivo_cancelacion='$detalle' where codigo_gira='$cgira';";
              $datos = mysqli_query($mysqli, $string_update_servige);
           //   echo($contador);
               $string_update_empelados="UPDATE tbl_man_empleados SET estado_gira='DISPONIBLE' WHERE id_empleado='$traer_id_empleado'";
               $datos1 = mysqli_query($mysqli, $string_update_empelados);

               $string_update_unisoli="UPDATE tbl_unidad_solicitante SET estado='CANCELADO', motivo_cancelacion='$detalle' WHERE id_usoli='$traer_id_soli'";
               $datos2 = mysqli_query($mysqli, $string_update_unisoli);

                //echo('entro al while');
        }while($arreglo = mysqli_fetch_assoc($consultar));

        $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='DISPONIBLE' WHERE placa_vehiculo='$placa'";
        $datos3 = mysqli_query($mysqli, $string_update_vehiculo);


        if ($datos && $datos1 && $datos2 && $datos3) {
          $a_r['msg'] = "si";
        }else {
          $a_r['msg'] = "no";
        }
        echo json_encode($a_r);


                break;
    ////////////////////////////////////////////////////        CIERRE DEL CASE CANCELAR GIRA COMPLETA       //////////////////////////////////////////////////////





    //////////////////////////////////          CASE DE ASIGNACION VEHICULO          ///////////////////////////////
          case 'cancelar_asignacion':
                  $usuario_activo=$_SESSION["usuario_activo"];
                  $fecha_actual = date("Y-m-d");
                  $id_servige =$_POST['id_servige'];
                  $cgira =$_POST['cgira'];
                  $placa =$_POST['placa'];
                  $detalle =$_POST['detalle'];
                  $detalle=strtoupper($detalle);
                  $query_traer_usoli="select id_usoli, id_empleado_fk from tbl_unidad_solicitante where codigo_gira='$cgira' and estado='SERVIGE'";
                  $consultar=$mysqli->query($query_traer_usoli);
                  $arreglo = mysqli_fetch_assoc($consultar);

                    //  print_r($arreglo);
                do{
                  // echo "entro al do";
                  $traer_id_soli=$arreglo['id_usoli'];
                  $traer_id_empleado=$arreglo['id_empleado_fk'];
                  // echo($traer_id_soli.' '.$traer_id_empleado);

                  $string_update_servige="UPDATE tbl_servicios_generales set estado='CANCELADO', motivo_cancelacion='$detalle' where codigo_gira='$cgira';";
                  $datos = mysqli_query($mysqli, $string_update_servige);

                   $string_update_unisoli="UPDATE tbl_unidad_solicitante SET estado='UNISOL' WHERE id_usoli='$traer_id_soli'";
                   $datos2 = mysqli_query($mysqli, $string_update_unisoli);

                    //echo('entro al while');
                }while($arreglo = mysqli_fetch_assoc($consultar));
                $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='DISPONIBLE' WHERE placa_vehiculo='$placa'";
                $datos3 = mysqli_query($mysqli, $string_update_vehiculo);


          if ($datos && $datos2 && $datos3) {
            $a_r['msg'] = "si";
          }else {
            $a_r['msg'] = "no";
          }
          echo json_encode($a_r);


                  break;
      ////////////////////////////////////////////////////              //////////////////////////////////////////////////////


      //////////////////////////////////          CASE DE CANCELAR SOLICITUD          ///////////////////////////////
            case 'cancelar_empleado':
                    // $usuario_activo=$_SESSION["usuario_activo"];
                    $id_empleado =$_POST['id_empleado'];
                    $id_sgenerales =$_POST['id_sgene'];
                    $detalle =$_POST['detalle'];
                    $cgira =$_POST['cgira'];
                    $cant =$_POST['cant'];
                    $placa =$_POST['placa'];
                    $detalle=strtoupper($detalle);
                    // $fecha_actual = date("Y-m-d");
                    //  echo($id_empleado);

                    $query_traer_idsoli="SELECT id_usoli from tbl_unidad_solicitante
                     where id_empleado_fk='$id_empleado' AND  estado='SERVIGE'";
                    $consultar2=$mysqli->query($query_traer_idsoli);
                    $arreglo2 = mysqli_fetch_assoc($consultar2);
                    $traer_id_soli=$arreglo2['id_usoli'];

                    $query_traer_idsoli="SELECT id_sgenerales from tbl_servicios_generales
                     where id_usoli_fk='$traer_id_soli' AND  estado='SERVIGE'";
                    $consultar2=$mysqli->query($query_traer_idsoli);
                    $arreglo2 = mysqli_fetch_assoc($consultar2);
                    $traer_id_sgenerales=$arreglo2['id_sgenerales'];



                    //
                    // echo "id soli query ".$traer_id_soli;
                    // echo " id sgenerales query ".$traer_id_sgenerales;
            if ($cant==1) {
              $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='DISPONIBLE' WHERE placa_vehiculo='$placa'";
              $datos4 = mysqli_query($mysqli, $string_update_vehiculo);
            };

                    //
                    $string_update="UPDATE tbl_unidad_solicitante SET estado='CANCELADO', motivo_cancelacion='$detalle'
                      WHERE id_empleado_fk='$id_empleado'";
                     $datos = mysqli_query($mysqli, $string_update);


                     $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='DISPONIBLE' WHERE id_empleado='$id_empleado'";
                      $datos2 = mysqli_query($mysqli, $string_update_emp);

                      $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='CANCELADO', motivo_cancelacion='$detalle'
                        WHERE id_sgenerales='$traer_id_sgenerales'";
                       $datos3 = mysqli_query($mysqli, $string_update_sgenerales);

                    if ($datos && $datos2 && $datos3) {
                      $a_r['msg'] = "si";
                    }else {
                      $a_r['msg'] = "no" ;
                    }
                    echo json_encode($a_r);
                    break;
        ////////////////////////////////////////////////////        CIERRE DEL CASE ACTUALIZAR CATEGORIA        //////////////////////////////////////////////////////





///////////////////////////////          CASE DE APROBACION               ///////////////////////////////
//////////////////////////////////          CASE DE APROBACION SOLICITUD          ///////////////////////////////
    case 'aprobacion_solicitud':
        $usuario_activo=$_SESSION["usuario_activo"];
        $fecha_actual = date("Y-m-d");
        $id_cta =$_POST['id_cta'];
        $tipo_transaccion =$_POST['tipo_transaccion'];
        $folio =$_POST['folio'];
        $n_transaccion =$_POST['n_transaccion'];
        $anticipo =$_POST['anticipo'];
        $observacion =$_POST['observacion'];
        $id_soli_fk =$_POST['id_soli_fk'];

        $observacion=strtoupper($observacion);

        $string_update_usoli="UPDATE tbl_unidad_solicitante SET estado='APR' WHERE id_usoli='$id_soli_fk'";
           $datos = mysqli_query($mysqli, $string_update_usoli);

       $query_traer_idemp="SELECT id_empleado_fk FROM tbl_unidad_solicitante WHERE id_usoli='$id_soli_fk'";
           $consultar=$mysqli->query($query_traer_idemp);
           $arreglo = mysqli_fetch_assoc($consultar);
           $traer_id_emp=$arreglo['id_empleado_fk'];

       $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='EN GIRA' WHERE id_empleado='$traer_id_emp'";
          $datos2 = mysqli_query($mysqli, $string_update_emp);

      $query_traer_idserge="SELECT id_sgenerales from tbl_servicios_generales where id_usoli_fk='$id_soli_fk'";
          $consultar2=$mysqli->query($query_traer_idserge);
          $arreglo2 = mysqli_fetch_assoc($consultar2);
          $traer_id_sgenerales=$arreglo2['id_sgenerales'];

      $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='APR' WHERE id_sgenerales='$traer_id_sgenerales'";
          $datos3 = mysqli_query($mysqli, $string_update_sgenerales);

     $string_insert="INSERT INTO tbl_aprobacion VALUES (NULL, '$id_cta', '$id_soli_fk','$tipo_transaccion',
         '$n_transaccion', '$folio','$anticipo','$usuario_activo','$observacion','$fecha_actual','APR','', '','');";
          $datos_insert = mysqli_query($mysqli, $string_insert);


        if ($datos_insert) {
           $a_r['msg'] = "si";
        }else {
           $a_r['msg'] = "no" ;
      }
        echo json_encode($a_r);
break;




//////////////////////////////////      CASE DE CANCELAR APROBACION          ///////////////////////////////
    case 'cancelar_aprobacion':
        $usuario_activo=$_SESSION["usuario_activo"];
        $fecha_actual = date("Y-m-d");
        $motivo_cance =$_POST['motivo_cance'];
        $id_soli_fk =$_POST['id_soli'];

        $motivo_cance=strtoupper($motivo_cance);

        $string_update_usoli="UPDATE tbl_unidad_solicitante SET estado='CANCELADO' WHERE id_usoli='$id_soli_fk'";
           $datos = mysqli_query($mysqli, $string_update_usoli);

       $query_traer_idemp="SELECT id_empleado_fk from tbl_unidad_solicitante where id_usoli='$id_soli_fk'";
           $consultar=$mysqli->query($query_traer_idemp);
           $arreglo = mysqli_fetch_assoc($consultar);
           $traer_id_emp=$arreglo['id_empleado_fk'];

       $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='DISPONIBLE' WHERE id_empleado='$traer_id_emp'";
          $datos2 = mysqli_query($mysqli, $string_update_emp);

      $query_traer_idserge="SELECT id_sgenerales, id_vehiculo_fk from tbl_servicios_generales where id_usoli_fk='$id_soli_fk'";
          $consultar2=$mysqli->query($query_traer_idserge);
          $arreglo2 = mysqli_fetch_assoc($consultar2);
          $traer_id_sgenerales=$arreglo2['id_sgenerales'];
          $traer_id_vehiculo_fk=$arreglo2['id_vehiculo_fk'];

      $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='CANCELADO' WHERE id_sgenerales='$traer_id_sgenerales'";
          $datos3 = mysqli_query($mysqli, $string_update_sgenerales);

          $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='DISPONIBLE' WHERE id_vehiculo='$traer_id_vehiculo_fk'";
              $datos4 = mysqli_query($mysqli, $string_update_vehiculo);

              $string_update_vehiculo="UPDATE tbl_aprobacion SET motivo_cancelacion='$motivo_cance', fecha_cancelacion='$fecha_actual', cancelado_por='$usuario_activo', estado='CANCELADO'
               WHERE id_usoli_fk='$id_soli_fk'";
                  $datos5 = mysqli_query($mysqli, $string_update_vehiculo);

        if ($datos && $datos2 && $datos3 && $datos4 && $datos5) {
           $a_r['msg'] = "si";
        }else {
           $a_r['msg'] = "no" ;
      }
        echo json_encode($a_r);
break;




//////////////////////////////////      CASE DE CANCELAR APROBACION          ///////////////////////////////
    case 'cancelar_aprobacion2':
        $usuario_activo=$_SESSION["usuario_activo"];
        $fecha_actual = date("Y-m-d");
        $motivo_cance =$_POST['motivo_cance'];
        $id_soli_fk =$_POST['id_soli'];

        $motivo_cance=strtoupper($motivo_cance);

        $string_update_usoli="UPDATE tbl_unidad_solicitante SET estado='SERVIGE' WHERE id_usoli='$id_soli_fk'";
           $datos = mysqli_query($mysqli, $string_update_usoli);

       $query_traer_idemp="SELECT id_empleado_fk from tbl_unidad_solicitante where id_usoli='$id_soli_fk'";
           $consultar=$mysqli->query($query_traer_idemp);
           $arreglo = mysqli_fetch_assoc($consultar);
           $traer_id_emp=$arreglo['id_empleado_fk'];


       $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='SERVIGE' WHERE id_empleado='$traer_id_emp'";
          $datos2 = mysqli_query($mysqli, $string_update_emp);

      $query_traer_idserge="SELECT id_sgenerales from tbl_servicios_generales where id_usoli_fk='$id_soli_fk'";
          $consultar2=$mysqli->query($query_traer_idserge);
          $arreglo2 = mysqli_fetch_assoc($consultar2);
          $traer_id_sgenerales=$arreglo2['id_sgenerales'];

          // echo $id_soli_fk;
          // echo $traer_id_emp;
          // echo $traer_id_sgenerales;


      $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='SERVIGE' WHERE id_sgenerales='$traer_id_sgenerales'";
          $datos3 = mysqli_query($mysqli, $string_update_sgenerales);

          // $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='ASIGN' WHERE id_vehiculo='$traer_id_vehiculo_fk'";
          //     $datos4 = mysqli_query($mysqli, $string_update_vehiculo);

              $string_update_vehiculo="UPDATE tbl_aprobacion SET motivo_cancelacion='$motivo_cance', fecha_cancelacion='$fecha_actual', cancelado_por='$usuario_activo', estado='CANCELADO'
               WHERE id_usoli_fk='$id_soli_fk'";
                  $datos5 = mysqli_query($mysqli, $string_update_vehiculo);

        if ($datos && $datos2 && $datos3 && $datos5) {
           $a_r['msg'] = "si";
        }else {
           $a_r['msg'] = "no" ;
      }
        echo json_encode($a_r);
break;




////////////////////////////////////////        DESGLOSE DE GASTOS              //////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////      CASE DE CANCELAR APROBACION       ///////////////////////////////
case 'buscar_correlativo':
$correlativo=$_POST['correlativo'];
      //  echo($correlativo);
$query_traer_vdesglose="select * from v_desglose WHERE correlativo='$correlativo' and estado='APR'";
$consultar=$mysqli->query($query_traer_vdesglose);
$arreglo = mysqli_fetch_assoc($consultar);
$traer_correlativo=$arreglo['correlativo'];

// echo($traer_cargo.' '.$traer_correlativo.'    '.$traer_idemp);

if ($traer_correlativo===$correlativo){ // SI EXISTE COMO GIRA
                       $traer_idapr=$arreglo['id_aprobacion'];
                       $traer_idusoli=$arreglo['id_usoli'];
                       $traer_idemp=$arreglo['id_empleado'];
                       $traer_idsgenerales=$arreglo['id_sgenerales'];
                       $traer_idvehiculo=$arreglo['id_vehiculo'];
                       $traer_nombre=$arreglo['nombre'];
                       $traer_cargo=$arreglo['cargo'];
                       $traer_cate=$arreglo['categoria'];
                       $traer_idcate=$arreglo['id_categoria'];
                       $traer_zona=$arreglo['nombre_zona'];
                       $traer_idzona=$arreglo['id_zona'];
                       $traer_correlativo=$arreglo['correlativo'];
                       $traer_lgira=$arreglo['lgira'];
                       $traer_pgira=$arreglo['pgira'];
                       $traer_fsalida=$arreglo['f_salida'];
                       $traer_fretorno=$arreglo['f_retorno'];
                       $traer_estado=$arreglo['estado'];
                       $traer_num_transaccion=$arreglo['num_transaccion'];
                       $traer_tipo_transaccion=$arreglo['tipo_transaccion'];
                       $traer_dias=$arreglo['dias_gira'];
                       $traer_viaticos_diarios=$arreglo['viaticos_diarios'];
                       $traer_total_viaticos=$arreglo['total_viaticos'];
                       $traer_anticipo=$arreglo['anticipo'];

                      //  ECHO($id_mun_fk);
                            $a_r['id_aprobacion'] = $traer_idapr;
                            $a_r['id_usoli'] = $traer_idusoli;
                            $a_r['id_empleado'] = $traer_idemp;
                            $a_r['id_sgenerales'] = $traer_idsgenerales;
                            $a_r['id_vehiculo'] = $traer_idvehiculo;
                            $a_r['nombre'] = $traer_nombre;
                            $a_r['cargo'] = $traer_cargo;
                            $a_r['cate'] = $traer_cate;
                            $a_r['zona'] = $traer_zona;
                            $a_r['lgira'] = $traer_lgira;
                            $a_r['pgira'] = $traer_pgira;
                            $a_r['f_salida'] = $traer_fsalida;
                            $a_r['f_retorno'] = $traer_fretorno;
                            $a_r['viaticos_diarios'] = $traer_viaticos_diarios;
                            $a_r['total_viaticos'] = $traer_total_viaticos;
                            $a_r['dias'] = $traer_dias;
                            $a_r['num_transaccion'] =$traer_num_transaccion;
                            $a_r['tipo_transaccion'] =$traer_tipo_transaccion;
                            $a_r['anticipo'] =$traer_anticipo;
                            $a_r['msg'] = "Procedera a llenar el desglose de gastos.";
                            $a_r['color_alerta'] = "alert-warning";
                            $a_r['existe'] = 'si';
                     }else{
                       $a_r['existe'] = 'no';

                     }
                     echo json_encode($a_r);
                  break;


////////////////////////////insertar_desglose/////////////////////////////

          case 'desglosar_solicitud':
          $id_aprobacion_fk=$_POST['id_apr_fk'];
          $id_empleado=$_POST['id_empleado'];
          $id_sgenerales=$_POST['id_sgenerales'];
          $id_usoli=$_POST['id_usoli'];
          $id_vehiculo=$_POST['id_vehiculo'];
          $correlativo=$_POST['correlativo'];
          $lugar=$_POST['lgira'];
          $viaticos_diarios=$_POST['v_diarios'];
          $dias=$_POST['dias'];
          $subtotal_viaticos=$_POST['totald'];
          $des_otrosg=$_POST['des_otrosg'];
          $lps_ogastos=$_POST['lps_ogastos'];
          $des_gcombus=$_POST['des_gcombus'];
          $lps_gcombus=$_POST['lps_gcombus'];
          $num_transaccion=$_POST['num_transaccion'];
          $subtotal=$_POST['subtotal'];
          $anticipo_recibido=$_POST['anticipo'];
          $saldo_favor=$_POST['saldos'];
          $lbl_saldo=$_POST['lbl_saldo'];
          $observaciones=$_POST['observaciones'];
          $usuario_activo=$_SESSION["usuario_activo"];
          $fecha_actual = date("Y-m-d");

          $string_insert="INSERT INTO tbl_desglose_gastos VALUES (NULL, '$id_aprobacion_fk','$correlativo',
          '$lugar','$viaticos_diarios', '$dias', '$subtotal_viaticos', '$des_gcombus','$lps_gcombus','$des_otrosg','$lps_ogastos',
          '$subtotal','$anticipo_recibido', '$saldo_favor','$lbl_saldo', '$observaciones', '$usuario_activo','$fecha_actual','DGL',NULL,NULL,NULL )";
          $datos = mysqli_query($mysqli, $string_insert);


              $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='DISPONIBLE' WHERE id_empleado='$id_empleado'";
                $datos1 = mysqli_query($mysqli, $string_update_emp);

              $string_update_usoli="UPDATE tbl_unidad_solicitante SET estado='DGL' WHERE id_usoli='$id_usoli'";
                $datos2 = mysqli_query($mysqli, $string_update_usoli);

                $string_update_vehiculo="UPDATE tbl_man_vehiculos SET estado='DISPONIBLE' WHERE id_vehiculo='$id_vehiculo'";
                  $datos3 = mysqli_query($mysqli, $string_update_vehiculo);

               $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='DGL' WHERE id_sgenerales='$id_sgenerales'";
                $datos4 = mysqli_query($mysqli, $string_update_sgenerales);

              $string_update_aprobacion="UPDATE tbl_aprobacion SET estado='DGL' WHERE id_aprobacion='$id_aprobacion_fk'";
                $datos5 = mysqli_query($mysqli, $string_update_aprobacion);

           if ($datos) {
              $a_r['msg'] = "si";
            }else {
              $a_r['msg'] = "no" ;
            }
          echo json_encode($a_r);
          break;




          //////////////////////////////////      CASE DE CANCELAR APROBACION          ///////////////////////////////
              case 'cancelar_desglose':
                  $usuario_activo=$_SESSION["usuario_activo"];
                  $fecha_actual = date("Y-m-d");
                  $motivo_cance =$_POST['motivo_cance'];
                  $id_soli_fk =$_POST['id_soli'];

                  $motivo_cance=strtoupper($motivo_cance);

                  $string_update_usoli="UPDATE tbl_unidad_solicitante SET estado='APR' WHERE id_usoli='$id_soli_fk'";
                     $datos = mysqli_query($mysqli, $string_update_usoli);

                 $query_traer_idemp="SELECT id_empleado_fk from tbl_unidad_solicitante where id_usoli='$id_soli_fk'";
                     $consultar=$mysqli->query($query_traer_idemp);
                     $arreglo = mysqli_fetch_assoc($consultar);
                     $traer_id_emp=$arreglo['id_empleado_fk'];


                 $string_update_emp="UPDATE tbl_man_empleados SET estado_gira='APR' WHERE id_empleado='$traer_id_emp'";
                    $datos2 = mysqli_query($mysqli, $string_update_emp);

                $query_traer_idserge="SELECT id_sgenerales from tbl_servicios_generales where id_usoli_fk='$id_soli_fk'";
                    $consultar2=$mysqli->query($query_traer_idserge);
                    $arreglo2 = mysqli_fetch_assoc($consultar2);
                    $traer_id_sgenerales=$arreglo2['id_sgenerales'];

                $query_traer_idapr="SELECT id_aprobacion from tbl_aprobacion where id_usoli_fk='$id_soli_fk'";
                    $consultar2=$mysqli->query($query_traer_idapr);
                    $arreglo2 = mysqli_fetch_assoc($consultar2);
                    $traer_id_apr=$arreglo2['id_aprobacion'];

                $string_update_sgenerales="UPDATE tbl_servicios_generales SET estado='APR' WHERE id_usoli_fk='$id_soli_fk'";
                    $datos3 = mysqli_query($mysqli, $string_update_sgenerales);

                $string_update_aprobacion="UPDATE tbl_aprobacion SET estado='APR' WHERE id_aprobacion='$traer_id_apr'";
                    $datos4 = mysqli_query($mysqli, $string_update_aprobacion);

                $string_update_desglose="UPDATE tbl_desglose_gastos SET motivo_cancelacion='$motivo_cance',
                        fecha_cancelacion='$fecha_actual', cancelado_por='$usuario_activo', estado='CANCELADO'
                         WHERE id_aprobacion_fk='$traer_id_apr'";
                            $datos5 = mysqli_query($mysqli, $string_update_desglose);

                  if ($datos && $datos2 && $datos3 && $datos5 && $datos4) {
                     $a_r['msg'] = "si";
                  }else {
                     $a_r['msg'] = "no" ;
                }
                  echo json_encode($a_r);
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

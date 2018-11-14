<?php
//session_start();
require_once("../conexion.php");

class administracion{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");

      // $this->mysqli = new mysqli("localhost", "root","","sincomin");
  }

      public function traer_vista_empleados($dependencia){
        $str="SELECT * from v_empleados
          WHERE id_dependencia='$dependencia' AND estado='ACTIVO'
        AND estado_gira='DISPONIBLE' ";
        $this->dato1 = mysqli_query($this->mysqli, $str);
        return $this->dato1;
      }


      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ///////////////////////////     FUNCIONES PARA MODAL_NUEVA_SOLICITUD          ///////////////////////////////////////////////////
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// QUERY PARA TRAER LOS DEPARTAMENTOS
      public function traer_deptos(){
        $departamento = "SELECT id_departamento, departamento FROM tbl_man_departamento";
        $this->dato1= mysqli_query($this->mysqli,$departamento);
        return $this->dato1;
      }

// QUERY PARA TRAER LOS ZONAS
      public function traer_zonas(){
        $sentencia = "SELECT id_zona, nombre_zona FROM tbl_man_zonas WHERE estado = 'ACTIVO'";
        $this->dato1 = mysqli_query($this->mysqli,$sentencia);

        return $this->dato1;
      }

      // QUERY PARA TRAER LOS ZONAS
            public function traer_correlativo(){
              $query_corre="SELECT LPAD((if((max(correlativo)+1) is NULL,1,max(correlativo)+1)),6,'0') as correlativo from tbl_unidad_solicitante;";
              $consultar=$this->mysqli->query($query_corre);
              $arreglo = mysqli_fetch_assoc($consultar);
              $this->dato1=$arreglo['correlativo'];

              return $this->dato1;
            }



            // QUERY PARA TRAER LOS PARAMETROS PARA LAS FECHAS
                  public function traer_fechas(){
                    $sentencia = "SELECT DATE_ADD(CURDATE(), INTERVAL (SELECT pl_dia_max FROM tbl_parametros WHERE id_parametro=1) DAY) AS fecha_max FROM DUAL";
                    $consultar=$this->mysqli->query($sentencia);
                    $arreglo = mysqli_fetch_assoc($consultar);
                    $this->dato1=$arreglo['fecha_max'];

                    return $this->dato1;
                  }



    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////     FUNCIONES PARA MODAL ASIGNACION DE VEHICULOS          ///////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // QUERY PARA TRAER DATOS DE LOS VEHICULOS
          public function traer_vehiculos(){
            $sentencia = "SELECT id_vehiculo, concat(tipo_vehiculo,'/', placa_vehiculo) as tipo_vehiculo FROM tbl_man_vehiculos where estado='DISPONIBLE'";
            $this->dato1 = mysqli_query($this->mysqli,$sentencia);

            return $this->dato1;
          }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////     TABLA PARA CANCELAR SOLICITUD           ///////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                public function traer_tabla_usoli(){
                 $usuario_activo=$_SESSION["usuario_activo"];
                  $fecha_actual = date("Y-m-d");
                   //echo($usuario_activo.$fecha_actual = date("Y-m-d"));
                  $traer_fecha_v="select fecha_vencimiento as f_v from tbl_man_conductor where fecha_vencimiento>'$fecha_actual'";
                  $consultar=mysqli_query($this->mysqli,$traer_fecha_v);
                  $arreglo = mysqli_fetch_assoc($consultar);
                  $solvente=$arreglo['f_v'];

                   $query_usuario="select id_empleado_fk from tbl_man_usuarios where usuario = '$usuario_activo'";
                   $consultar=mysqli_query($this->mysqli,$query_usuario);
                   $arreglo = mysqli_fetch_assoc($consultar);
                   $id_emp_fk=$arreglo['id_empleado_fk'];
                  //  echo ($id_emp_fk);

                  $query_depen= "SELECT nombre1, id_dependencia_FK FROM tbl_man_empleados WHERE id_empleado= '$id_emp_fk'";
                  $consultar=mysqli_query($this->mysqli, $query_depen);
                  $arreglo = mysqli_fetch_assoc($consultar);
                  $id_depen_fk=$arreglo['id_dependencia_FK'];
                  //$nombre =$arreglo['nombre1'];
                  //echo($id_depen_fk .  $nombre);

                  $query_cdepen= "SELECT id_dependencia, dependencia FROM tbl_man_dependencia WHERE id_dependencia = '$id_depen_fk'";
                  $consultar=mysqli_query($this->mysqli,$query_cdepen);
                  $arreglo = mysqli_fetch_assoc($consultar);
                  $cdepen_fk=$arreglo['id_dependencia'];
                  $dependencia=$arreglo['dependencia'];
                  //echo($cdepen_fk. $dependencia);


                  $this->str_trae_array="SELECT tbl_man_empleados.id_empleado as id_empleado, concat(tbl_man_empleados.nombre1, ' ', tbl_man_empleados.apellido1) as nombrec,
                tbl_man_dependencia.dependencia as dependencia,
                tbl_man_categoria_empleados.categoria as categoria,
                tbl_man_zonas.nombre_zona as zona,
                tbl_unidad_solicitante.id_usoli as id_usoli,
                tbl_unidad_solicitante.fecha_salida as f_salida,
                tbl_unidad_solicitante.fecha_retorno as fecha_retorno,
                tbl_unidad_solicitante.lugar_gira as lugar_gira,
                tbl_unidad_solicitante.proposito as proposito
                FROM tbl_unidad_solicitante
                inner JOIN tbl_man_empleados on tbl_unidad_solicitante.id_empleado_fk = tbl_man_empleados.id_empleado
                inner JOIN tbl_man_zonas on tbl_unidad_solicitante.id_zona_fk = tbl_man_zonas.id_zona
                inner JOIN tbl_man_dependencia on tbl_man_empleados.id_dependencia_FK = tbl_man_dependencia.id_dependencia
                INNER JOIN tbl_man_categoria_empleados ON tbl_man_empleados.id_categoria_fk= tbl_man_categoria_empleados.id_categoria
                WHERE tbl_unidad_solicitante.estado='UNISOL' and tbl_man_dependencia.dependencia='$dependencia';";
                $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                return $this->dato1;
                }




///////////////////////////     TABLA PARA asignar vehiculos           ///////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    public function traer_tabla_usolicitante(){
                        $this->str_trae_array="SELECT COUNT(tbl_unidad_solicitante.id_usoli) as cantidad,
                        tbl_unidad_solicitante.id_usoli as id_usoli,
                        tbl_unidad_solicitante.codigo_gira as codigo_gira,
                        tbl_unidad_solicitante.fecha_salida as f_salida,
                        tbl_unidad_solicitante.fecha_retorno as f_retorno,
                        tbl_unidad_solicitante.lugar_gira as lgira,
                        tbl_unidad_solicitante.proposito as proposito,
                        tbl_man_zonas.nombre_zona as zona
                        FROM tbl_unidad_solicitante
                        inner JOIN tbl_man_zonas on tbl_unidad_solicitante.id_zona_fk = tbl_man_zonas.id_zona
                        WHERE tbl_unidad_solicitante.estado='UNISOL' group by tbl_unidad_solicitante.codigo_gira";
                        $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                        //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                    return $this->dato1;
                  }


                  ///////////////////////////     TABLA PARA CANCELAR vehiculos           ///////////////////////////////////////////////////
                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                      public function traer_tabla_sgenerales(){
                            $this->str_trae_array="SELECT COUNT(tbl_servicios_generales.id_sgenerales) as cantidad,
                                tbl_servicios_generales.id_sgenerales as id_sgenerales,
                                tbl_servicios_generales.fecha_salida_vehiculo as f_salida_vehiculo,
                                tbl_servicios_generales.fecha_retorno_vehiculo as f_retorno_vehiculo,
                                tbl_servicios_generales.lugar_gira_vehiculo as lgira,
                                tbl_man_vehiculos.tipo_vehiculo as tvehiculo,
                                tbl_man_vehiculos.placa_vehiculo as placa_vehiculo,
                                tbl_man_vehiculos.id_vehiculo as id_vehiculo,
                                tbl_man_vehiculos.kilometraje as kilometraje,
                                tbl_unidad_solicitante.codigo_gira as codigo_gira
                                FROM tbl_servicios_generales
                                inner JOIN tbl_man_vehiculos on tbl_servicios_generales.id_vehiculo_fk = tbl_man_vehiculos.id_vehiculo
                                inner JOIN tbl_unidad_solicitante on tbl_servicios_generales.id_usoli_fk = tbl_unidad_solicitante.id_usoli
                                WHERE tbl_servicios_generales.estado='SERVIGE' group by tbl_unidad_solicitante.codigo_gira";
                                $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                                //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                            return $this->dato1;
                        }


                        public function traer_vista_apro_solicitud(){
                            $str="SELECT * FROM v_apro_solicitud where estado='SERVIGE'";
                          $this->dato1 = mysqli_query($this->mysqli, $str);
                          return $this->dato1;
                        }
// 12122017121220172
//------------------>>>>>>>>< VER DETALLE (ES DECIR, VER EMPLEADOS QUE IRAN A ESA GIRA)
                        public function empleados_gira($cgira){
                            $this->str_trae_array="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre,
                                            emp.cargo as cargo,
                                            depe.dependencia as dependencia,
                                            cate.categoria as categoria,
                                            usoli.lugar_gira as lgira,
                                            usoli.proposito as proposito
                            FROM tbl_man_empleados as emp
                            inner JOIN tbl_man_dependencia as depe on depe.id_dependencia = emp.id_dependencia_FK
                            inner JOIN tbl_man_categoria_empleados as cate on cate.id_categoria = emp.id_categoria_fk
                            inner JOIN tbl_unidad_solicitante as usoli on usoli.id_empleado_fk = emp.id_empleado
                            WHERE usoli.estado='UNISOL' and codigo_gira='$cgira'";
                            $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                            //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                        return $this->dato1;
                      }




                      public function traer_vista_can_solicitud(){
                        $query_limite_fecha= "SELECT max_dias_aprobacion FROM tbl_parametros WHERE id_parametro = 1";
                        $consultar=mysqli_query($this->mysqli,$query_limite_fecha);
                        $arreglo = mysqli_fetch_assoc($consultar);
                        $max_dias_aprobacion=$arreglo['max_dias_aprobacion'];

                        $str="SELECT * FROM v_can_solicitud where estado='APR' AND fecha_emision
                        BETWEEN DATE_SUB(CURDATE(),INTERVAL $max_dias_aprobacion DAY) AND CURDATE()";
                        $this->dato1 = mysqli_query($this->mysqli, $str);
                        return $this->dato1;
                      }


                      public function traer_vista_can_desglose(){
                        $query_limite_fecha= "SELECT max_dias_aprobacion FROM tbl_parametros WHERE id_parametro = 1";
                        $consultar=mysqli_query($this->mysqli,$query_limite_fecha);
                        $arreglo = mysqli_fetch_assoc($consultar);
                        $max_dias_aprobacion=$arreglo['max_dias_aprobacion'];


                        $str="SELECT * FROM v_can_solicitud where estado='DGL' AND fecha_emision
                        BETWEEN DATE_SUB(CURDATE(),INTERVAL $max_dias_aprobacion DAY) AND CURDATE()";
                        $this->dato1 = mysqli_query($this->mysqli, $str);
                        return $this->dato1;
                      }





}//CIERRE administracion

 ?>

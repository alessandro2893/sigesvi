<?php
  class administracion{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");
    }

    public function dias_activacion(){
      $str="SELECT DATE_ADD(CURDATE(), INTERVAL (SELECT admin_dias_activacion FROM tbl_parametros WHERE id_parametro=1) DAY) AS fecha_max FROM DUAL";
      $a_d = mysqli_query($this->mysqli, $str);
      $dato = mysqli_fetch_assoc($a_d);
      $fecha_max=$dato['fecha_max'];
      return $fecha_max;
    }

    public function get_modal_estado($us){
      $str="SELECT estado_usuario FROM tbl_man_usuarios WHERE usuario='$us'";
      $a_d = mysqli_query($this->mysqli, $str);
      $dato = mysqli_fetch_assoc($a_d);
      $estado_usuario=$dato['estado_usuario'];
      return $estado_usuario;
    }

    public function traer_tabla_usuarios(){
        $this->str_trae_array="SELECT rol, id_rol, id_usuario, fecha_vencimiento, usuario, estado_usuario, correo_electronico, intentos, fecha_vencimiento
                              FROM (tbl_man_usuarios as usuarios
                              JOIN tbl_man_roles as roles ON (id_rol_fk=id_rol))
                              order by usuarios.fecha_creacion DESC";
      $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
      //$this->dato2 = mysqli_fetch_assoc($this->dato1);
      return $this->dato1;
    }


#######################################################3

        ///////////////////////////roless/////////////////////////////
                  public function traer_tabla_roles(){
                  $this->str_trae_array="select rol,id_rol, estado_rol from tbl_man_roles";
                  $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                                          //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                  return $this->dato1;
                }

        ////////////////////////////////traer la tabla modal////////////////////////////////////
                public function traer_tabla_permisos($rol){
                $this->str_trae_array="SELECT id_r_objeto, rol, objeto_afectado, permiso_insertar, permiso_actualizar, permiso_consultar, estado_rol_obj
                                       FROM tbl_roles_objetos as robj
                                       INNER JOIN tbl_objetos as objetos on robj.id_objeto_fk= objetos.id_objeto
                                       INNER JOIN tbl_man_roles as roles on robj.id_rol_fk= roles.id_rol
                                       WHERE roles.rol = '$rol'";
                $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);

                //WHERE tbl_man_roles.id_usuario_fk = '1'
                                        //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                return $this->dato1;
                }

////////////////////////////////////////////////////////////////

          public function get_tabla_roles($id_rol){
              $str_get_array="SELECT id_objeto, objeto_afectado, estado_rol_obj, permiso_insertar, permiso_actualizar, permiso_consultar
                              FROM  (tbl_roles_objetos JOIN tbl_objetos on (id_objeto_fk = id_objeto))
                              WHERE id_rol_fk='$id_rol'";
              $dato1 = mysqli_query($this->mysqli,  $str_get_array);
              return $dato1;
            }



            ////////////////////////////  datos para select roles   //////////////////////////////////

                      public function get_select_roles($rol){

                          $query_traer_rol="SELECT rol, id_rol from tbl_man_roles WHERE rol='$rol'";
                          $dato1 = mysqli_query($this->mysqli,  $query_traer_rol);
                          $arreglo_rol = mysqli_fetch_assoc($dato1);
                          $traer_rol= $arreglo_rol ['rol'];
                          $traer_idrol= $arreglo_rol ['id_rol'];
                          // echo($traer_rol);S

                          // SELECT objetos.id_objeto as id_objeto, objetos.objeto_afectado as objeto_afectado
                          // from tbl_roles_objetos as robj
                          // INNER JOIN tbl_man_roles as roles on roles.id_rol=robj.id_rol_fk
                          // INNER JOIN tbl_objetos as objetos on objetos.id_objeto=robj.id_objeto_fk
                          // where robj.id_rol_fk<>'$traer_idrol'



                            if ($rol== $traer_rol) {
                            $str_get_array="SELECT id_objeto, objeto_afectado from tbl_objetos
                                WHERE id_objeto  NOT IN(select id_objeto_fk from tbl_roles_objetos where id_rol_fk ='$traer_idrol')";
                              $llevar = mysqli_query($this->mysqli,  $str_get_array);


                          } else{
                            $query_traer_objeto= "SELECT id_objeto, objeto_afectado FROM tbl_objetos";
                            $llevar = mysqli_query($this->mysqli,  $query_traer_objeto);

                          }
                          return $llevar;
                        }


////////////////////////////////////        TRAER LOS PERMISOS PARA MODAL
                        public function traer_patalla_rol_edit($id_objeto_fk){
                          $str_trae_array="SELECT permiso_insertar, permiso_actualizar, permiso_consultar FROM tbl_roles_objetos  WHERE id_objeto_fk='$id_objeto_fk'";
                          $dato1 = mysqli_query($this->mysqli,  $str_trae_array);
                          //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                          $fila = mysqli_fetch_assoc($dato1);
                          return $fila;
                        }
                        ////////////////////////////////traer la tabla bitacora////////////////////////////////////
                        public function traer_tabla_bitacora(){
                        $this->str_trae_array="SELECT id_bitacora, operacion, tbl_afectada, campo_afectado, valor_viejo, valor_nuevo, usuario, nombre_host, fecha_modificacion
                        FROM tbl_bitacora";
                      $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                      //$this->dato2 = mysqli_fetch_assoc($this->dato1);
                      return $this->dato1;
                    }

                ////////////////////////////////////////////////////////////////

  }//cierre de la clase administracion

 ?>

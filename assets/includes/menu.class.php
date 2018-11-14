<?php
  class menu{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");
    }
/////////////         para que llene el menu            ///////////////////////////////////////////////
    public function get_menu($usuario){
      $str_get_array="SELECT objeto_afectado FROM tbl_objetos as objetos
                      INNER JOIN tbl_roles_objetos as robj ON robj.id_objeto_fk=objetos.id_objeto
                      INNER JOIN tbl_man_roles as roles ON roles.id_rol= robj.id_rol_fk
                      INNER JOIN tbl_man_usuarios  as usuarios ON roles.id_rol =usuarios.id_rol_fk
                      WHERE usuarios.id_usuario='$usuario' AND objetos.estado_objeto='A' AND robj.estado_rol_obj='A';";
      $dato1 = mysqli_query($this->mysqli,  $str_get_array);
      $arreglo = array();
      while ($fila = mysqli_fetch_assoc($dato1)) {
        $arreglo[$fila['objeto_afectado']]="si";
      }
      return $arreglo;
    }


    public function get_menu_tab($usuario,$pantalla){
      $str_get_array="SELECT robj.permiso_insertar as permiso_insertar, robj.permiso_actualizar as permiso_actualizar, robj.permiso_consultar as permiso_consultar
                      FROM  tbl_roles_objetos as robj
                      INNER JOIN tbl_man_roles as roles on robj.id_rol_fk=roles.id_rol
                      INNER JOIN tbl_objetos as objetos on robj.id_objeto_fk=objetos.id_objeto
                      INNER JOIN tbl_man_usuarios as usuarios on roles.id_rol= usuarios.id_rol_fk
                      WHERE usuarios.id_usuario='$usuario' AND objetos.id_objeto='$pantalla'";
      $dato1 = mysqli_query($this->mysqli,  $str_get_array);
        $arreglo = array();
        $datos = mysqli_fetch_assoc($dato1);
        $arreglo['permiso_insertar']=$datos['permiso_insertar'];      // 1 - 0
        $arreglo['permiso_actualizar']=$datos['permiso_actualizar'];  // 1 - 0
        $arreglo['permiso_consultar']=$datos['permiso_consultar'];    // 1 - 0
        // print_r($str_get_array);
      return $arreglo;
    }

  }

 ?>

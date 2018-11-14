<?php
  class login{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");
    }
//OOOJOOO AQUII NO SE CAMBIO EL VALOR DE LOS DATOS
    public function ingresa_fallo($us){
      $str1="SELECT intentos AS num_p FROM tbl_parametros;";
      $str2="SELECT intentos FROM tbl_man_usuarios
            WHERE usuario='$us';";
      $a = mysqli_query($this->mysqli, $str1);
      $b = mysqli_query($this->mysqli, $str2);
      $datos1 = mysqli_fetch_assoc($a);
      $datos2 = mysqli_fetch_assoc($b);
      $intentos = $datos2['intentos']+1;// cada intento fallido va sumar 1
      $fallo="UPDATE tbl_man_usuarios SET intentos=$intentos WHERE usuario='$us';";
      mysqli_query($this->mysqli, $fallo);//siempre que entra a este metodo es que esta fallando
      $num_p = $datos1['num_p'];

      $quedan = ($num_p - $intentos);//quedan es numeros permitidos menos intentos
      $a_f = array();
      if ($num_p==$intentos) {//num_p= numeros permitidos
          $bloqueo="UPDATE tbl_man_usuarios SET estado_usuario='B', intentos=0 WHERE usuario='$us';";//actualiza el estado a B que es bloqueado ejecuta el query
          mysqli_query($this->mysqli, $bloqueo);
          $a_f['hacer'] = 'B';
          $a_f['msg'] = 'Usuario '.$us.', se encuentra bloqueado';
          //$quenda=0;

      }else {
        $a_f['msg'] = 'Contraseña Incorrecta, le quedan '.$quedan.' intentos';// si no contraseña incorrecta le quedan tantos usuarios
        $a_f['hacer'] = 'FALLO';
      }
      return $a_f;// esto es lo que retona un arreglo que lleva 2 datos que es hacer: elvaluo funcion que valida usuario. un msg
    }






                         //aqui podes poner cualquier nombre son los dats de entrada de la funcion
    public function valida_usuario($us, $pass) {//le vamos a mandar el usuario y el de la contrasena encriptada aqui estara el resultado
      // SI USUARIO EXISTE
      $str="SELECT COUNT(id_usuario) AS existe_us FROM tbl_man_usuarios WHERE usuario='$us'";
      $consulta = mysqli_query($this->mysqli, $str);
      @$e_u=mysqli_fetch_assoc(@$consulta);
      $existe_us=$e_u['existe_us'];
      if ($existe_us) { // SI EL USUARIO EXISTE
        // USUARIO EXISTENTE
        $str="SELECT id_usuario, IF(((DATEDIFF(NOW(),fecha_vencimiento))>0),(DATEDIFF(NOW(),fecha_vencimiento)),'CORRECTO') AS r FROM tbl_man_usuarios WHERE usuario='$us'";
        $consulta = mysqli_query($this->mysqli, $str);
        @$bloqueado_arr=mysqli_fetch_assoc(@$consulta);
        $bloqueado=$bloqueado_arr['r'];
        if ($bloqueado>0) { // SI EL USUARIO EXISTE Y ESTA BLOQUEADO
          // YA VENCIO SU USO DEL SISTEMA
            $arreglo['hacer']= 'UV'; // USUARIO VENCIDO
            $arreglo['id_us']=$bloqueado_arr['id_usuario'];
            $arreglo['dias']=$bloqueado;
        }else {
           // USUARIO NO ESTA BLOQUEADO
           $arreglo = array();
           $str="SELECT id_usuario AS id, estado_usuario, estado_login FROM tbl_man_usuarios -- declaras un alias utilizas arreglos asociativos en php--
                 WHERE usuario='$us' AND clave='$pass';"; // cuando usuario sea = usuario, contraseña sea= contraseña encriptada


                 $consulta = mysqli_query($this->mysqli, $str);
                 if (($consulta->num_rows>0)) {
                    /// ENTRA CUANDO USUARIO Y PASS SI EXISTE
                   # COICIDEN USUARIO Y CONTRASEÑA
                   # PERO AHORA VAMOS A VER QUE ESTADO ESTA EL USUARIO
                   $a_d = mysqli_query($this->mysqli, $str);
                   $ar = mysqli_fetch_assoc($a_d);
                   $estado_usuario=$ar['estado_usuario'];
                   switch ($estado_usuario) { //el estado contendra: A=activo,I=inactivo,B=bloqueado y que el usuario no exista
                     case 'A':
                        $estado_login=$ar['estado_login'];// el estado_login contendra: OK=quetodo esta bien,CV=contrasena vencida,PV=primera vez,RS=contrasna resetiada
                        $arreglo['hacer']= $estado_login;
                              if ($estado_login=='OK') {
                                     $str="SELECT if(((SELECT dias_habiles_pass AS dias
                                     FROM tbl_parametros
                                     WHERE id_parametro='1') > (DATEDIFF(NOW(),fecha_modificacion))),'OK',(DATEDIFF(NOW(),fecha_modificacion))-(SELECT dias_habiles_pass FROM tbl_parametros WHERE id_parametro='1')) AS r FROM tbl_man_usuarios WHERE usuario='$us'";
                                     $consulta = mysqli_query($this->mysqli, $str);
                                     @$a_d=mysqli_fetch_assoc(@$consulta);
                                     $dias=$a_d['r']; // DIAS QUE DEBE DURAR EL PASS
                                     if ($dias>0) {
                                       $arreglo['hacer']= 'CV'; // VENCIDA
                                       $arreglo['id_us']=$ar['id'];
                                       $arreglo['dias']=$dias;
                                     }else {
                                       $update_intentos="UPDATE tbl_man_usuarios SET intentos=0 WHERE usuario='$us';";
                                       $c = mysqli_query($this->mysqli, $update_intentos);
                                     }
                                   }elseif ($estado_login=='PV' || $estado_login=='RS') {
                                     # USUARIO POR PRIMERA VEZ O ADMINISTRADOR RESET CONTRASEÑA
                                     $arreglo['id_us']=$ar['id'];
                                     $arreglo['pv_rs']= $estado_login;
                                     $arreglo['hacer']= 'PV_RS';
                                   }
                       break;

                     case 'I':
                         $arreglo['hacer']= 'I';
                         $arreglo['msg']= 'Usuario '.$us.', se encuentra inactivo';
                       break;
                     case 'B':
                         $arreglo['hacer']= 'B';
                         $arreglo['msg']= 'Usuario '.$us.', se encuentra bloqueado';
                       break;
                   } # FIN SWITCH
                 }else { // FIN DE USUARIO EXISTE
                   // PASS NO EXISTE
                   $str2="SELECT id_usuario, estado_usuario FROM tbl_man_usuarios
                   WHERE usuario='$us'";
                   $arreglo_datos = mysqli_query($this->mysqli, $str2);
                   if (@$arreglo_datos->num_rows) { //@ PARA CALLAR LOS ERRORES NO MUESTRE DATOS A LOS USUARIOS
                     // EXISTE SOLAMENTE USUARIO
                     $a_d = mysqli_query($this->mysqli, $str2);
                     $ar = mysqli_fetch_assoc($a_d);
                     $estado_usuario=$ar['estado_usuario'];
                     switch ($estado_usuario) {
                       case 'I':
                           $arreglo['hacer']= 'I';
                           $arreglo['msg']= 'Usuario '.$us.', se encuentra inactivo';
                         break;
                       case 'B':
                           $arreglo['hacer']= 'B';
                           $arreglo['msg']= 'Usuario '.$us.', se encuentra bloqueado';
                         break;
                       default : // SI NO FUNCIONAN LOS DEMAS CORRA EL SIGUIENTE
                       ############ METODO QUE INGRESA FALLO
                       $intentos=$this->ingresa_fallo($us);
                       $arreglo['hacer'] = $intentos['hacer'];
                       $arreglo['msg'] = $intentos['msg'];
                         break;
                     } # FIN SWITCH
                   }else {
                     $arreglo['hacer']='USOCI';
                     //$arreglo['hacer']='USOCI';
                   }

                 }
        }// FIN SINO USUARIO NO ESTA BLOQUEADO

    }else {  // USUARIO NO EXISTE
      $arreglo['hacer']='USOCI';
    }
      return $arreglo;
    }





    public function decrypt($string, $key) {
       $result = '';
       $string = base64_decode($string);
       for($i=0; $i<strlen($string); $i++) {
          $char = substr($string, $i, 1);
          $keychar = substr($key, ($i % strlen($key))-1, 1);
          $char = chr(ord($char)-ord($keychar));
          $result.=$char;
       }
       return $result;
    }



//no see donde esta
    public function get_es_correcto($q){
      $arreglo = array('hacer' => 'login_normal');
      //$cadena_desencriptada = $this->decrypt($q,"pase_libre");
      //$cadena_desencriptada = encriptar::decrypt('zn3kfgBoxsdW2jFiSpMWHx6u/N9hGm2w4oygDPVuKZkDITiaZNLMq4mGK0ZMi1FBS9Zb6U5LROV5bjEdtABRTg==');

     //$cadena_d= substr("8c846819042514ad184c152759cc93a6933a7f69PV1-123", 40);
      $cadena_desencriptada = substr($q, 40);
      $hacer = substr($cadena_desencriptada, 0, 2);
      $arreglo['x'] = $hacer;
      if ($hacer==='PV' || $hacer==='RS' || $hacer==='RC' || $hacer==='CV') {
        $arreglo['hacer'] = 'recuperar';
      switch ($hacer) {
        case 'PV':
          $cadena_desencriptada = substr($cadena_desencriptada, 2);
          $us = strstr($cadena_desencriptada,"-",true);
          $pass = strstr($cadena_desencriptada,"-",false);
          $pass = substr($pass, 1);
          $sql = "SELECT usuario AS us FROM tbl_man_usuarios WHERE id_usuario = '$us'";
          $c = mysqli_query($this->mysqli, $sql);
          $array = mysqli_fetch_assoc($c);
          $nombre_usuario = $array['us'];
          $arreglo['us'] = $nombre_usuario;
          //$arreglo['hacer'] = 'PV';
          //$arreglo['sql'] = $sql;
          $arreglo['msg'] = 'Usuario por primera vez, establecer contraseña para: '.$nombre_usuario;
          break;

          case 'RC': // RECUPERACION POR CORREO

            $cadena_desencriptada = substr($cadena_desencriptada, 2);
            $us = strstr($cadena_desencriptada,"-",true);
            $fecha = strstr($cadena_desencriptada,"-",false);
            $fecha = substr($fecha, 1); // FECHA DE LA CADENA

            $fecha_actual = time('U');

            $fecha_mas_dia = $fecha+ 86400;
            $sql = "SELECT usuario AS us, codigo_correo FROM tbl_man_usuarios WHERE id_usuario = '$us'";
            $c = mysqli_query($this->mysqli, $sql);
            $array = mysqli_fetch_assoc($c);
            $nombre_usuario = $array['us'];
            $co_correo = $array['codigo_correo'];
            $arreglo['msg'] = 'Recuperacion mediante correo, establecer contraseña para: '.$nombre_usuario;
            //$arreglo['hacer'] = 'RC';
// que cono es esto!!!!!!!!!!!!!!!!!!!!!!!!
            if ($fecha!==$co_correo || $fecha_mas_dia<$fecha_actual) {
              $arreglo['error'] = 'si';
              $arreglo['msg_e'] = 'Error, enlace de correo vencido, intente de nuevo';

            }
            $arreglo['us'] = $nombre_usuario;
            //return $arreglo; belly.espinal17@gmail.com
            break;

            case 'RS':
            $cadena_desencriptada = substr($cadena_desencriptada, 2);
            $us = strstr($cadena_desencriptada,"-",true);
            $pass = strstr($cadena_desencriptada,"-",false);
            $pass = substr($pass, 1);
            $sql = "SELECT usuario AS us FROM tbl_man_usuarios WHERE id_usuario = '$us'";
            $c = mysqli_query($this->mysqli, $sql);
            $array = mysqli_fetch_assoc($c);
            $nombre_usuario = $array['us'];
            $arreglo['us'] = $nombre_usuario;
            //$arreglo['hacer'] = 'RS';
            $arreglo['msg'] = 'Administrador reseteo contraseña para: '.$nombre_usuario;
            break;

            case 'CV':
            $cadena_desencriptada = substr($cadena_desencriptada, 2);
            $us = strstr($cadena_desencriptada,"-",true);
            $dias = strstr($cadena_desencriptada,"-",false);
            $dias = substr($dias, 1);
          //  echo($cadena_desencriptada);
            $sql = "SELECT usuario AS us FROM tbl_man_usuarios WHERE id_usuario = '$us'";
            $c = mysqli_query($this->mysqli, $sql);
            $array = mysqli_fetch_assoc($c);
            $nombre_usuario = $array['us'];
            $arreglo['us'] = $nombre_usuario;
            //$arreglo['hacer'] = 'CV';
            $arreglo['msg'] = $nombre_usuario.' Su contraseña expiro hace '.$dias.' dias.';

            //$arreglo['msg'] = $cadena_desencriptada;
            break;
        }

      } # FIN IF
      return $arreglo;
    } # FIN METODO



  }

 ?>

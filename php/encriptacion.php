<?php
	//Fuente: http://www.v3rgu1.com/blog/720/2013/programacion/encriptar-y-desencriptar-en-php/
    class encriptar {
//clave que se usa para decoficar la encriptacion
    private static $Key = "pase_libre";

    public static function encrypt ($passwor1) {
        $passencript = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5(encriptar::$Key), $passwor1, MCRYPT_MODE_CBC, md5(md5(encriptar::$Key))));
        return $passencript;
    }

    public static function decrypt ($password1,$Key) {
        $passdesencript = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5(encriptar::$Key), base64_decode($password1), MCRYPT_MODE_CBC, md5(md5(encriptar::$Key))), "\0");
        return $passdesencript;
    }

    //FUNCION PARA QUITAR ESPACIOS EN UN STRING
    public static function quita_espacios ($con_espacios) {
        $con_espacios = trim($con_espacios); //ELIMINAMOS LOS ESPACIOS ANTES Y DESPUES DE LA CADENA
        $sin_espacios = ereg_replace(' +',' ',$con_espacios); // SUTITUIMOS LOS BLOQUES DE MAS DE UN ESPACIO POR UN ESPACIO SENCILLO
        return $sin_espacios; // RETORNAMOS LA VARIABLE SIN ESPACIOS
    }

    public function encrypt_login($string) {
       $result = '';
       for($i=0; $i<strlen($string); $i++) {
          $char = substr($string, $i, 1);
          $keychar = substr($key, ($i % strlen($key))-1, 1);
          $char = chr(ord($char)+ord($keychar));
          $result.=$char;
       }
       return base64_encode($result);
    }

	}


?>

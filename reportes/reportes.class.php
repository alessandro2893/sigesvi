<?php
  class reportes{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");
      // $this->mysqli = new mysqli("localhost", "root","","sincomin");

      // echo('$this->mysqli');
    }


//            FUNCION PARA EL REPORTE DE EMPLEADOS
      public function traer_tabla_empleados($cantidad){
        $this->str_trae_array="SELECT
         CONCAT(tbl_man_empleados.nombre1, ' ', tbl_man_empleados.nombre2, ' ', tbl_man_empleados.apellido1) as nombre,
		  tbl_man_empleados.reloj_marcador as reloj_marcador,
          tbl_man_empleados.tarjeta_identidad as tarjeta_identidad,
          tbl_man_dependencia.dependencia as dependencia,
          tbl_man_dependencia.id_dependencia as id_dependencia,
          tbl_man_empleados.cargo as cargo,
          tbl_man_categoria_empleados.categoria as categoria
          FROM tbl_man_empleados
          INNER JOIN tbl_man_dependencia on tbl_man_empleados.id_dependencia_fk = tbl_man_dependencia.id_dependencia
          INNER JOIN tbl_man_categoria_empleados ON tbl_man_empleados.id_categoria_fk= tbl_man_categoria_empleados.id_categoria
          order by id_empleado desc limit $cantidad";
      $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
      //$this->dato2 = mysqli_fetch_assoc($this->dato1);
      return $this->dato1;
    }

    public function traer_empleado_por_rango($desde, $hasta){
      $this->str_trae_array="SELECT CONCAT(tbl_man_empleados.nombre1, ' ', tbl_man_empleados.nombre2, ' ', tbl_man_empleados.apellido1) as nombre,
    tbl_man_empleados.reloj_marcador as reloj_marcador,
        tbl_man_empleados.tarjeta_identidad as tarjeta_identidad,
        tbl_man_dependencia.dependencia as dependencia,
        tbl_man_dependencia.id_dependencia as id_dependencia,
        tbl_man_empleados.cargo as cargo,
        tbl_man_empleados.telefono as telefono,
        tbl_direcciones_empleados.direccion_detalle as direccion,
        tbl_man_categoria_empleados.categoria as categoria,
        tbl_man_empleados.fecha_creacion as fecha_creacion
        FROM tbl_man_empleados
        INNER JOIN tbl_direcciones_empleados on tbl_direcciones_empleados.id_empleado_fk = tbl_man_empleados.id_empleado
        INNER JOIN tbl_man_dependencia on tbl_man_empleados.id_dependencia_fk = tbl_man_dependencia.id_dependencia
        INNER JOIN tbl_man_categoria_empleados ON tbl_man_empleados.id_categoria_fk= tbl_man_categoria_empleados.id_categoria
      where  tbl_man_empleados.fecha_creacion BETWEEN '$desde' AND '$hasta' ORDER BY tbl_man_empleados.reloj_marcador DESC";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }
      public function traer_tabla_empleados_activo($estado){
      $this->str_trae_array="SELECT
       CONCAT(tbl_man_empleados.nombre1, ' ', tbl_man_empleados.nombre2, ' ', tbl_man_empleados.apellido1) as nombre,
    tbl_man_empleados.reloj_marcador as reloj_marcador,
        tbl_man_empleados.tarjeta_identidad as tarjeta_identidad,
        tbl_man_dependencia.dependencia as dependencia,
        tbl_man_dependencia.id_dependencia as id_dependencia,
        tbl_man_empleados.cargo as cargo,
        tbl_man_empleados.telefono as telefono,
        tbl_direcciones_empleados.direccion_detalle as direccion,
        tbl_man_categoria_empleados.categoria as categoria,
        tbl_man_empleados.estado as estado,
        tbl_man_empleados.motivo_inactividad as motivo_inactividad
        FROM tbl_man_empleados
        INNER JOIN tbl_direcciones_empleados on tbl_direcciones_empleados.id_empleado_fk = tbl_man_empleados.id_empleado
        INNER JOIN tbl_man_dependencia on tbl_man_empleados.id_dependencia_fk = tbl_man_dependencia.id_dependencia
        INNER JOIN tbl_man_categoria_empleados ON tbl_man_empleados.id_categoria_fk= tbl_man_categoria_empleados.id_categoria
        WHERE tbl_man_empleados.estado = '$estado'
        order by id_empleado desc";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
  }




    public function traer_tabla_vehiculos($cantidad){
      $this->str_trae_array="SELECT id_vehiculo, n_vehiculo, tipo_vehiculo, placa_vehiculo, marca_vehiculo, modelo_vehiculo, color_vehiculo FROM tbl_man_vehiculos
        order by id_vehiculo desc limit $cantidad";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_vehiculos_por_rango($desde, $hasta){
      $this->str_trae_array="SELECT id_vehiculo, n_vehiculo, tipo_vehiculo, placa_vehiculo, marca_vehiculo, modelo_vehiculo, color_vehiculo FROM tbl_man_vehiculos
WHERE fecha_creacion BETWEEN '$desde' AND '$hasta'
order by n_vehiculo desc";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_tabla_vehiculos_kilometraje($cantidad){
      $this->str_trae_array="SELECT id_vehiculo, n_vehiculo, tipo_vehiculo, placa_vehiculo, kilometraje, marca_vehiculo, modelo_vehiculo, color_vehiculo FROM tbl_man_vehiculos
        order by kilometraje desc limit $cantidad";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_giras_por_anno($buscar_anio){
      $this->str_trae_array="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre, usoli.lugar_gira as lugar_gira, usoli.proposito as proposito, usoli.fecha_salida as fecha_salida, usoli.fecha_retorno as fecha_retorno, emp.cargo as cargo,
      depe.dependencia as dependencia
      from tbl_man_empleados as emp
      INNER JOIN tbl_unidad_solicitante as usoli on emp.id_empleado=usoli.id_empleado_fk
      INNER JOIN tbl_man_dependencia as depe on depe.id_dependencia=emp.id_dependencia_FK
      where   date_format(usoli.fecha_creacion, '%Y') = '$buscar_anio'";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_giras_por_rango($desde, $hasta){
      $this->str_trae_array="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre, usoli.lugar_gira as lugar_gira, usoli.proposito as proposito, usoli.fecha_salida as fecha_salida, usoli.fecha_retorno as fecha_retorno,
      usoli.fecha_creacion as fecha_creacion, emp.cargo as cargo, depe.dependencia as dependencia
      from tbl_man_empleados as emp
      INNER JOIN tbl_unidad_solicitante as usoli on emp.id_empleado=usoli.id_empleado_fk
      INNER JOIN tbl_man_dependencia as depe on depe.id_dependencia=emp.id_dependencia_FK
      where  usoli.fecha_creacion BETWEEN '$desde' AND '$hasta'";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_giras_apr_dependencia($dependencia){
      $this->str_trae_array="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre,
      emp.reloj_marcador AS reloj_marcador,
      emp.cargo AS cargo,
      depe.dependencia AS dependencia,
      cate.categoria AS categoria,
      usoli.estado AS estado,
      COUNT(emp.id_empleado in(SELECT id_empleado_fk FROM tbl_unidad_solicitante)) as veces
      from tbl_man_empleados as emp
      INNER JOIN tbl_man_dependencia as depe on depe.id_dependencia=emp.id_dependencia_FK
      INNER JOIN tbl_man_categoria_empleados as cate on cate.id_categoria=emp.id_categoria_fk
      INNER JOIN tbl_unidad_solicitante as usoli on emp.id_empleado=usoli.id_empleado_fk
      WHERE usoli.estado = 'APR' OR usoli.estado = 'DGL' AND depe.id_dependencia ='$dependencia'
      GROUP BY emp.reloj_marcador DESC
";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }

    public function traer_giras_can_dependencia($dependencia){
      $this->str_trae_array="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre,
      emp.reloj_marcador AS reloj_marcador,
      emp.cargo AS cargo,
      depe.dependencia AS dependencia,
      cate.categoria AS categoria,
      usoli.estado AS estado,
      COUNT(emp.id_empleado in(SELECT id_empleado_fk FROM tbl_unidad_solicitante)) as veces
      from tbl_man_empleados as emp
      INNER JOIN tbl_man_dependencia as depe on depe.id_dependencia=emp.id_dependencia_FK
      INNER JOIN tbl_man_categoria_empleados as cate on cate.id_categoria=emp.id_categoria_fk
      INNER JOIN tbl_unidad_solicitante as usoli on emp.id_empleado=usoli.id_empleado_fk
      WHERE usoli.estado = 'CANCELADO' AND depe.id_dependencia ='$dependencia'
      GROUP BY emp.reloj_marcador DESC
";
    $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
    //$this->dato2 = mysqli_fetch_assoc($this->dato1);
    return $this->dato1;
    }



  }//CIERRE administracion

 ?>

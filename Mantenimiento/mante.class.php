<?php
  class administracion{
    public $mysqli;
    function __construct(){
      $this->mysqli = new mysqli("localhost", "root","","sincomin");
      // echo('$this->mysqli');
    }

      public function traer_tabla_categoria(){
        $this->str_trae_array="SELECT id_categoria, grupo_ocupacional, nivel_organizativo, comprende, estado, categoria
                              FROM tbl_man_categoria_empleados";
      $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
      //$this->dato2 = mysqli_fetch_assoc($this->dato1);
      return $this->dato1;
    }

    public function traer_tabla_empleado(){
          $this->str_trae_array="SELECT tbl_man_empleados.id_empleado as id_empleado, concat(tbl_man_empleados.nombre1, ' ', tbl_man_empleados.nombre2, ' ', tbl_man_empleados.apellido1) as nombre,
		  tbl_man_empleados.reloj_marcador as reloj_marcador,
          tbl_man_empleados.tarjeta_identidad as tarjeta_identidad,
          tbl_man_empleados.salario as salario,
          tbl_man_dependencia.dependencia as dependencia,
          tbl_man_dependencia.id_dependencia as id_dependencia,
          tbl_man_empleados.cargo as cargo,
          tbl_man_empleados.estado as estado,
          tbl_man_empleados.estado_civil as estado_civil,
          tbl_man_empleados.telefono as telefono,
          tbl_direcciones_empleados.direccion_detalle as direccion,
          tbl_direcciones_empleados.id_empleado_fk as id_direccion,
          tbl_man_categoria_empleados.id_categoria as id_categoria,
          tbl_man_categoria_empleados.categoria as categoria
          FROM tbl_man_empleados
          INNER JOIN tbl_direcciones_empleados on tbl_direcciones_empleados.id_empleado_fk = tbl_man_empleados.id_empleado
          INNER JOIN tbl_man_dependencia on tbl_man_empleados.id_dependencia_fk = tbl_man_dependencia.id_dependencia
          INNER JOIN tbl_man_categoria_empleados ON tbl_man_empleados.id_categoria_fk= tbl_man_categoria_empleados.id_categoria order by tbl_man_empleados.fecha_creacion DESC;";
              $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
              //$this->dato2 = mysqli_fetch_assoc($this->dato1);
              return $this->dato1;
              }




              public function traer_tabla_zona(){
              $this->str_trae_array="SELECT id_zona,nombre_zona, estado FROM tbl_man_zonas";
            $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
            //$this->dato2 = mysqli_fetch_assoc($this->dato1);
            return $this->dato1;
          }

          public function traer_tabla_cate_zona(){
          $this->str_trae_array="SELECT  tbl_cz.id_categoria_zona as id_categoria_zona,
                                  tbl_z.nombre_zona as nombre_zona,
                                  tbl_ce.categoria as categoria,
                                  tbl_cz.periodo_corto as periodo_corto,
                                  tbl_cz.periodo_largo as periodo_largo,
                                  tbl_cz.estado as estado,
                                  tbl_cz.id_categoria_fk as id_categoria_fk,
                                  tbl_cz.id_zona_fk as id_zona_fk
                                 FROM tbl_categoria_zona  tbl_cz
                                 INNER JOIN tbl_man_categoria_empleados tbl_ce ON tbl_cz.id_categoria_fk=tbl_ce.id_categoria
                                 INNER JOIN tbl_man_zonas tbl_z ON tbl_cz.id_zona_fk=tbl_z.id_zona
                                  ORDER BY tbl_cz.id_categoria_zona";
           $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
          //$this->dato2 = mysqli_fetch_assoc($this->dato1);
           return $this->dato1;
           }



          public function traer_tabla_vehiculo(){
            $this->str_trae_array="SELECT id_vehiculo, n_vehiculo, tipo_vehiculo, capacidad_personas, placa_vehiculo, marca_vehiculo, modelo_vehiculo, color_vehiculo, estado FROM tbl_man_vehiculos";
          $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
          //$this->dato2 = mysqli_fetch_assoc($this->dato1);
          return $this->dato1;
        }


              public function traer_tabla_departamento(){
                $this->str_trae_array="SELECT id_departamento, departamento, estado
                                      FROM tbl_man_departamento";
              $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
              //$this->dato2 = mysqli_fetch_assoc($this->dato1);
              return $this->dato1;


            }


             public function traer_tabla_municipio(){
               $this->str_trae_array="SELECT tbl_man_municipios.municipio as municipio,
        tbl_man_municipios.id_municipio as id_municipio,
        tbl_man_municipios.estado_municipio as estado,
        tbl_man_departamento.id_departamento as id_departamento,
        tbl_man_departamento.departamento as depto,
        tbl_man_zonas.nombre_zona as nombre_zona,
        tbl_man_zonas.id_zona as id_zona
        from tbl_man_municipios
        INNER JOIN tbl_man_departamento on tbl_man_municipios.id_departamento_fk=tbl_man_departamento.id_departamento
        INNER JOIN tbl_man_zonas on tbl_man_municipios.id_zona_fk=tbl_man_zonas.id_zona;";
              $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
              //$this->dato2 = mysqli_fetch_assoc($this->dato1);
              return $this->dato1;
            }

            public function traer_tabla_conductor(){
              $this->str_trae_array="   SELECT tbl_man_empleados.id_empleado as id_empleado, concat(tbl_man_empleados.nombre1, ' ',tbl_man_empleados.apellido1) as nombre,
             tbl_man_empleados.tarjeta_identidad as identidad,
             tbl_man_empleados.cargo as cargo,
            tbl_man_conductor.id_conductor as id_conductor,
             tbl_man_conductor.tipo_licencia as tipo_licencia,
            tbl_man_conductor.fecha_vencimiento as fecha_vencimiento,
             tbl_man_conductor.estado as estado
             FROM tbl_man_conductor
            inner join tbl_man_empleados on tbl_man_conductor.id_empleado_fk=tbl_man_empleados.id_empleado order by id_empleado ";
            $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
            //$this->dato2 = mysqli_fetch_assoc($this->dato1);
            return $this->dato1;


            }
            /////////////////DEPENDENCIA//////////////////////////
            public function traer_tabla_dependencia(){
            $this->str_trae_array="select id_dependencia, dependencia, estado from tbl_man_dependencia";
            $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                          //$this->dato2 = mysqli_fetch_assoc($this->dato1);
            return $this->dato1;
            }


            /////////////////cuentas//////////////////////////
          public function traer_tabla_cuentas(){
          $this->str_trae_array="select id_cta, banco, tipo_cuenta, tipo_moneda, numero_cuenta, estado
          from tbl_man_cuentas_bancarias";
          $this->dato1 = mysqli_query($this->mysqli,  $this->str_trae_array);
                                  //$this->dato2 = mysqli_fetch_assoc($this->dato1);
          return $this->dato1;
          }



  }//CIERRE administracion

 ?>

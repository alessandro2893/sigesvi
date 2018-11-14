<?php
include('../assets/php/conexion.php');

$buscar_mes = $_POST['cambio'];
$buscar_mes = date('m-Y', strtotime($buscar_mes));

// echo($buscar_mes);
//EJECUTAMOS LA CONSULTA DE BUSQUEDA

$sentencia ="SELECT concat(emp.nombre1, ' ', emp.apellido1) as nombre, usoli.lugar_gira as lugar_gira, usoli.proposito as proposito, usoli.fecha_salida as fecha_salida, usoli.fecha_retorno as fecha_retorno, emp.cargo as cargo,
depe.dependencia as dependencia
from tbl_man_empleados as emp
INNER JOIN tbl_unidad_solicitante as usoli on emp.id_empleado=usoli.id_empleado_fk
INNER JOIN tbl_man_dependencia as depe on depe.id_dependencia=emp.id_dependencia_FK
where   date_format(usoli.fecha_creacion, '%m-%Y') = '$buscar_mes'";

$registro = mysqli_query($mysqli,$sentencia);

//CREAMOS NUESTRA VISTA Y LA DEVOLVEMOS AL AJAX

echo '<div class="row mt">
          <div class="col-lg-12 col-md-12 col-sm-12">
              <div class="showback">
              <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
        	<tr>
            	<th width="300">Nombre</th>
                <th width="200">Lugar Gira</th>
                <th width="150">proposito</th>
                <th width="150">Fecha Salida</th>
                <th width="150">Fecha Retorno</th>
                <th width="150">Cargo</th>
                <th width="150">dependencia</th>
            </tr>';
if ($registro->num_rows){

	while($registro2 = mysqli_fetch_assoc($registro)){
		echo '<tr>
				<td>'.$registro2['nombre'].'</td>
				<td>'.$registro2['lugar_gira'].'</td>
				<td>'.$registro2['proposito'].'</td>
				<td>'.$registro2['fecha_salida'].'</td>
        <td>'.($registro2['fecha_retorno']).'</td>
        <td>'.($registro2['cargo']).'</td>
				<td>'.($registro2['dependencia']).'</td>
				</tr>';
	}

}else{
	echo '<tr>
				<td colspan="7">No se encontraron resultados</td>
			</tr>';
}
echo '</table></div></div></div>';
?>

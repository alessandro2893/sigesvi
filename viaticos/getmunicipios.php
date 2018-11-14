<?php

require_once("../assets/php/conexion.php");


$id_departamento =$_POST['id_departamento'];
$id_zona =$_POST['id_zona'];

$query_municipios ="SELECT id_municipio, municipio FROM tbl_man_municipios  WHERE id_departamento_FK= '$id_departamento' and id_zona_fk= '$id_zona' ORDER BY municipio ASC ";
$resultado = $mysqli->query($query_municipios);

while($row = $resultado->fetch_assoc())
{
  $html.= "<option value='".$row['id_municipio']."'>".$row['municipio']."</option>";
}

echo $html;



 ?>

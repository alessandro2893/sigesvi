<?php
include('../conexion.php');
$id_soli_fk = $_GET['id_soli_fk'];
$correlativo= $_GET['correlativo'];

// QUERY PARA TRAER LOS DATOS DE LA TABLA UNIDAD SOLICITANTE
$query_usoli="SELECT * FROM tbl_unidad_solicitante where id_usoli='$id_soli_fk'";
$traer_todo=$mysqli->query($query_usoli);
$descomponer = mysqli_fetch_assoc($traer_todo);
$fecha_salida=$descomponer['fecha_salida'];
$fecha_retorno=$descomponer['fecha_retorno'];
$lgira=$descomponer['lugar_gira'];
$proposito=$descomponer['proposito'];
$codig_gira=$descomponer['codigo_gira'];
$id_empleado_fk=$descomponer['id_empleado_fk'];
$dias_gira=$descomponer['dias_gira'];
$vdiarios=$descomponer['viaticos_diarios'];
$tviaticos=$descomponer['total_viaticos'];
$id_zona_fk=$descomponer['id_zona_fk'];
// QUERY PARA TRAER CONDUCTOR DEL VEHICULO
$query_conductor="SELECT concat(nombre1,' ',apellido1) as nombre_conductor FROM tbl_man_empleados as tbl_emp
INNER JOIN tbl_man_conductor as tbl_conductores on tbl_conductores.id_empleado_fk=tbl_emp.id_empleado
INNER JOIN tbl_unidad_solicitante as tbl_usoli on tbl_usoli.id_empleado_fk=tbl_emp.id_empleado
where tbl_usoli.codigo_gira='$codig_gira' AND tbl_usoli.estado='APR';";
$traer_conductor=$mysqli->query($query_conductor);
$descomponer = mysqli_fetch_assoc($traer_conductor);
$nombre_conductor=$descomponer['nombre_conductor'];

//QUERY PARA TRAER LOS DATOS PERSONALES DEL EMPLEADO
$query_empleado="SELECT * FROM tbl_man_empleados where id_empleado='$id_empleado_fk'";
$traer_todo=$mysqli->query($query_empleado);
$descomponer = mysqli_fetch_assoc($traer_todo);
$nombre1=$descomponer['nombre1'];
$apellido1=$descomponer['apellido1'];
$cargo=$descomponer['cargo'];
$salario=$descomponer['salario'];
$tarjeta_identidad=$descomponer['tarjeta_identidad'];
$reloj_marcador=$descomponer['reloj_marcador'];
$id_dependencia_fk=$descomponer['id_dependencia_FK'];
$id_categoria_fk=$descomponer['id_categoria_fk'];
//QUERY PARA TRAER DEPENDENCIA
$query_dependencia="SELECT dependencia FROM tbl_man_dependencia where id_dependencia='$id_dependencia_fk'";
$traer_todo=$mysqli->query($query_dependencia);
$descomponer = mysqli_fetch_assoc($traer_todo);
$dependencia=$descomponer['dependencia'];
//QUERY PARA TRAER CATEGORIA
$query_categoria="SELECT categoria FROM tbl_man_categoria_empleados where id_categoria='$id_categoria_fk'";
$traer_todo=$mysqli->query($query_categoria);
$descomponer = mysqli_fetch_assoc($traer_todo);
$categoria=$descomponer['categoria'];
//QUERY PARA TRAER ZONA
$query_zona="SELECT nombre_zona FROM tbl_man_zonas where id_zona='$id_zona_fk'";
$traer_todo=$mysqli->query($query_zona);
$descomponer = mysqli_fetch_assoc($traer_todo);
$zona=$descomponer['nombre_zona'];


//QUERY PARA TRAER VEHICULO

$query_vehiculos="SELECT sgenerales.fecha_salida_vehiculo as fecha_salida_vehiculo,
 sgenerales.fecha_retorno_vehiculo as fecha_retorno_vehiculo,
vehi.tipo_vehiculo as tipo_vehiculo, vehi.kilometraje as kilometraje, vehi.placa_vehiculo as placa, aprobacion.num_transaccion as cheque,
aprobacion.anticipo as anticipo, aprobacion.tipo_transaccion as tipo_transaccion, aprobacion.f01_cheque as folio, aprobacion.fecha_emision as fecha_emision, aprobacion.usuario_elaboro as elaborado
FROM tbl_servicios_generales as sgenerales
inner JOIN tbl_man_vehiculos as vehi on sgenerales.id_vehiculo_fk = vehi.id_vehiculo
inner JOIN tbl_unidad_solicitante as usoli on  usoli.id_usoli = sgenerales.id_usoli_fk
inner JOIN tbl_aprobacion as aprobacion on  aprobacion.id_usoli_fk = usoli.id_usoli
where sgenerales.id_usoli_fk = '$id_soli_fk' AND aprobacion.estado='APR'";

$traer_todo=$mysqli->query($query_vehiculos);
$descomponer = mysqli_fetch_assoc($traer_todo);
$fecha_salida_vehiculo=$descomponer['fecha_salida_vehiculo'];
$fecha_retorno_vehiculo=$descomponer['fecha_retorno_vehiculo'];
$tipo_vehiculo=$descomponer['tipo_vehiculo'];
$placa_vehiculo=$descomponer['placa'];
$numero_cheque=$descomponer['cheque'];
$tipo_transaccion=$descomponer['tipo_transaccion'];
$folio_cheque=$descomponer['folio'];
$anticipo=$descomponer['anticipo'];
$fecha_emision=$descomponer['fecha_emision'];
$elaborado=$descomponer['elaborado'];
$kilometraje=$descomponer['kilometraje'];





  require_once('../tcpdf/tcpdf.php');
        	$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);
          $pdf->SetCreator(PDF_CREATOR);
          $pdf->SetAuthor('IA-UNAH-Programación e Implementación');
          $pdf->SetTitle($_GET['nombre_reporte']);
          $pdf->SetKeywords('Key1, Key2, Nombrekey');

          $pdf->setPrintHeader(false);
          $pdf->setPrintFooter(false);

          $pdf->SetMargins(20, 20, 20, false);
          $pdf->SetAutoPageBreak(true, 20);
          $pdf->SetImageScale(PDF_IMAGE_SCALE_RATIO);

          $pdf->SetLeftMargin(3);
          $pdf->AddPage();
          /*____________________________IMAGEN-LOGO... GUARGA LA IMG EN LA CARPETA image de TCPDF___________________*/
          $image_file=K_PATH_IMAGES."logoi.jpg";
          $pdf->Image($image_file, 10, 10, 35, '', 'JPG','', 'T', false, 200, '', false, false, 0, false, false);
					$pdf->SetFont('Helvetica', 'B', 18);
					$pdf->Cell(5, 8, '', 0);
					$pdf->Cell(100, 15, 'Instituto Hondureño de Geologia y Minas', 0);
					$pdf->Ln(12);
					$pdf->Cell(90, 8, '', 0);
          $pdf->Cell(100, 8, 'INHGEOMIN' , 0);
					$pdf->Ln(13);
					$pdf->SetFont('Helvetica', '', 15);
					$pdf->Cell(75, 8, '', 0);
					$pdf->Cell(70, 8, $_GET['nombre_reporte'], 0);
          $pdf->Cell(15, 8, '', 0);
          $pdf->SetTextColor(255,0,0);
          $pdf->SetFont('Courier', '', 14);
          $pdf->Cell(65, 8,'N° '. $correlativo, 0);
          $pdf->SetLeftMargin(20);

//cambia el color del texto de la siguiente linea
          $pdf->SetTextColor(0,0,0);
//el interlineado de la siguiente linea con la linea anterior
          $pdf->Ln(17);

          $pdf->SetFillColor(200);
          //cambia la fuente de la letra, primeras comillas para el tipo de letra, segundas comillas para verlo negrita
          //cursiva o subrayado y el numero indica el tamaño de la letra
           $pdf->SetFont('Helvetica','B',12);
          $pdf->Cell(170,6,('DATOS GENERALES DEL SOLICITANTE'),0,1,'C',true);


					$pdf->SetFont('Helvetica', '', 11);
					$pdf->Ln(3);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Nombre: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $nombre1, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Apellido: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $apellido1, 0);

          $pdf->Ln(6);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Tarjeta identidad:                                                 #Reloj marcador: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $tarjeta_identidad, 0);
          $pdf->Ln(0);
          $pdf->Cell(123, 8, '', 0);
          $pdf->Cell(0, 8, $reloj_marcador, 0);


          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Cargo que desempeña: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $cargo, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Sueldo mensual:                                                  Dependencia: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $salario, 0);
          $pdf->Ln(0);
          $pdf->Cell(123, 8, '', 0);
          $pdf->Cell(0, 8, $dependencia, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Categoria:                                                            Zona a la que viajó: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $categoria, 0);
          $pdf->Ln(0);
          $pdf->Cell(123, 8, '', 0);
          $pdf->Cell(0, 8, $zona, 0);



          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Lugar de la gira: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $lgira, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Fecha salida:                                                       Fecha retorno: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_salida, 0);
          $pdf->Ln(0);
          $pdf->Cell(123, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_retorno, 0);


          $pdf->Ln(17);
          $pdf->SetFillColor(190);
           $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('INTINERARIO Y PROPOSITO DE LA GIRA'),0,1,'C',true);

          $pdf->Ln(1);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(2, 8, '', 0);
          $pdf->Cell(0, 8,$proposito, 0);

          $pdf->Ln(17);
          $pdf->SetFillColor(190);
           $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('PARA USO EXCLUSIVO DE LA GERENCIA ADMINISTRATIVA'),0,1,'C',true);


          $pdf->Ln(2);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Vehiculo que se transportará:                                                          N° de placa: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Cell(0, 8, $tipo_vehiculo, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8, $placa_vehiculo, 0);

          $pdf->Ln(6);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Conductor:                                                                                        Kilometraje: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Cell(0, 8, $nombre_conductor, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8, $kilometraje, 0);

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Fecha salida:                                                                                Fecha retorno: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_salida_vehiculo, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_retorno_vehiculo, 0);

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Viaticos diarios:                         Dias de gira:                               Total viaticos:', 0);
          $pdf->Ln(0);
          $pdf->Cell(36, 8, '', 0);
          $pdf->Cell(0, 8, $vdiarios, 0);
          $pdf->Ln(0);
          $pdf->Cell(83, 8, '', 0);
          $pdf->Cell(0, 8, $dias_gira, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8, $tviaticos, 0);



          $pdf->Ln(12);
          $pdf->SetFillColor(190);
          $pdf->Cell(1, 8, '', 0);
          $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('DETALLE DE ANTICIPO'),0,1,'C',true);

          $pdf->Ln(3);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,$tipo_transaccion.' N°                                                                                F-01: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(40, 8, '', 0);
          $pdf->Cell(0, 8, $numero_cheque, 0);
          $pdf->Ln(0);
          $pdf->Cell(130, 8, '', 0);
          $pdf->Cell(0, 8, $folio_cheque, 0);

          $pdf->Ln(6);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Fecha del cheque:                                                         Elaboró/Aministración: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(40, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_emision, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8, $elaborado, 0);

          $pdf->Ln(6);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Anticipo recibido:                                                           Fecha de elaboración: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(40, 8, '', 0);
          $pdf->Cell(0, 8, $anticipo, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          $pdf->Cell(0, 8,date('d-m-Y'), 0);

          $pdf->Ln(25);
          $pdf->SetLeftMargin(30);

          $content = '<br><br><br><table border="0">
                    <tr>
                        <th  width="200"><hr ><br>Firma del Solicitante</th>
                        <th  width="120" ></th>
                        <th width="200" ><hr><br>Firma del Jefe Inmediato</th>
                    </tr><br><br><br><br>
                    <tr height="300">
                    <th width="160"></th>
                    <th width="230"><hr><br>Autorizado por Director Ejecutivo</th>
                    <th width="100"></th>
                    </tr></table>';


        $pdf->writeHTML($content, true, 0, true, 0);

        	// $pdf->writeHTML($content, true, 0, true, 0);
        	$pdf->lastPage();
        	$pdf->output('reporte_solicitud_aprobada.pdf','I');

  ?>

<?php
include('../conexion.php');
$id_soli_fk = $_GET['id_soli_fk'];
$correlativo= $_GET['correlativo'];

// phpinfo();
// QUERY PARA TRAER LOS DATOS DE LA TABLA UNIDAD SOLICITANTE
$query_usoli="SELECT * FROM tbl_unidad_solicitante where id_usoli='$id_soli_fk'";
$traer_todo=$mysqli->query($query_usoli);
$descomponer = mysqli_fetch_assoc($traer_todo);
$fecha_salida=$descomponer['fecha_salida'];
$fecha_retorno=$descomponer['fecha_retorno'];
$lgira=$descomponer['lugar_gira'];
$proposito=$descomponer['proposito'];
$id_empleado_fk=$descomponer['id_empleado_fk'];
$dias_gira=$descomponer['dias_gira'];
$vdiarios=$descomponer['viaticos_diarios'];
$tviaticos=$descomponer['total_viaticos'];
$id_zona_fk=$descomponer['id_zona_fk'];

//QUERY PARA TRAER LOS DATOS PERSONALES DEL EMPLEADO
$query_apr="SELECT id_aprobacion FROM tbl_aprobacion where id_usoli_fk='$id_soli_fk' AND estado='DGL'";
$traer_=$mysqli->query($query_apr);
$descomponer = mysqli_fetch_assoc($traer_);
$id_aprobacion_fk=$descomponer['id_aprobacion'];

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

//QUERY PARA TRAER desglose

$query_desglose="SELECT lugar, correlativo, viaticos_diarios, dias, sub_total, des_gcombustible, lps_gcombustible,
 des_saldos, saldos, observaciones, des_ogastos,  lps_ogastos, total_viaticos, anticipo_recibido, creado_por
from tbl_desglose_gastos
WHERE id_aprobacion_fk = '$id_aprobacion_fk' AND estado='DGL'";
$traer_todo=$mysqli->query($query_desglose);
$descomponer = mysqli_fetch_assoc($traer_todo);
$lugar=$descomponer['lugar'];
$viaticos_diarios=$descomponer['viaticos_diarios'];
$dias=$descomponer['dias'];
$sub_total=$descomponer['total_viaticos'];
$des_gcombustible=$descomponer['des_gcombustible'];
$lps_gcombustible=$descomponer['lps_gcombustible'];
$des_ogastos=$descomponer['des_ogastos'];
$lps_ogastos=$descomponer['lps_ogastos'];
$total_viaticos=$descomponer['total_viaticos'];
$anticipo_recibido=$descomponer['anticipo_recibido'];
$total_viaticos=$descomponer['sub_total'];
$des_saldos=$descomponer['des_saldos'];
$saldos=$descomponer['saldos'];
$observaciones=$descomponer['observaciones'];
$elaboro=$descomponer['creado_por'];
// $correlativo=$descomponer['correlativo'];
// echo $correlativo;

// migrar el codigo de los reportes de jose leydy y alessandro
//
// para el manteminimiento que julio hizo solo deben de ir a la tabla categoria_zona a cambiar el
// tipo de capo de la columna montoplargo y montopcorto (el tipo de campo esta decimal deben ponerlo float)







  require_once('../tcpdf/tcpdf.php');

        	$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);
          $pdf->SetCreator(PDF_CREATOR);
          $pdf->SetAuthor('SIGESVI');
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
					$pdf->SetFont('Helvetica', 'B', 16);
					$pdf->Cell(5, 8, '', 0);
					$pdf->Cell(100, 15, 'DIRECCION EJECUTIVA DE FOMENTO A LA MINERIA', 0);
					$pdf->Ln(12);
					$pdf->Cell(90, 8, '', 0);
          $pdf->Cell(100, 8, 'DEFOMIN' , 0);
					// $pdf->Ln(8);
					// $pdf->SetFont('Helvetica', '', 9);
					// $pdf->Cell(175, 8, '', 0);
					// $pdf->Cell(130, 8, 'Fecha: '.date('d-m-Y') , 0);
					$pdf->Ln(15);
					$pdf->SetFont('Helvetica', '', 15);
					$pdf->Cell(60, 8, '', 0);
					$pdf->Cell(70, 8, $_GET['nombre_reporte'], 0);
          $pdf->Cell(43, 8, '', 0);
          $pdf->SetTextColor(255,0,0);
          $pdf->SetFont('Courier', ' ', 14);
          $pdf->Cell(65, 8,'N° '. $correlativo, 0);

          $pdf->SetLeftMargin(20);

          $pdf->SetTextColor(0,0,0);

          $pdf->Ln(17);
          $pdf->SetFillColor(190);
           $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('DATOS GENERALES DE LA GIRA'),0,1,'C',true);


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
          $pdf->Cell(0, 8,'Tarjeta identidad:                                                             #Reloj marcador: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $tarjeta_identidad, 0);
          $pdf->Ln(0);
          $pdf->Cell(142, 8, '', 0);
          $pdf->Cell(0, 8, $reloj_marcador, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Lugar de la gira: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $lgira, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Fecha salida:                                                                   Fecha retorno: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_salida, 0);
          $pdf->Ln(0);
          $pdf->Cell(142, 8, '', 0);
          $pdf->Cell(0, 8, $fecha_retorno, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Cargo que desempeña: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $cargo, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Dependencia:                                                                  Sueldo mensual: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $dependencia, 0);
          $pdf->Ln(0);
          $pdf->Cell(142, 8, '', 0);
          $pdf->Cell(0, 8, $salario, 0);

          $pdf->Ln(6);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Categoria:                                                                        Zona a la que viajó: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $categoria, 0);
          $pdf->Ln(0);
          $pdf->Cell(142, 8, '', 0);
          $pdf->Cell(0, 8, $zona, 0);


          $pdf->Ln(6);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(5, 8, '', 0);
          $pdf->Cell(0, 8,'Elaboró/Aministración:                                                     Fecha de elaboración: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(47, 8, '', 0);
          $pdf->Cell(0, 8, $correlativo, 0);
          $pdf->Ln(0);
          $pdf->Cell(142, 8, '', 0);
          $pdf->Cell(0, 8, date('d-m-Y'), 0);



          $pdf->Ln(17);
          $pdf->SetFillColor(190);
           $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('DESCRIPCION DE LA GIRA'),0,1,'C',true);

          $pdf->Ln(1);
          $pdf->SetFont('Helvetica','',11);
          $pdf->Cell(2, 8, '', 0);
          $pdf->Cell(0, 8,$proposito, 0);

          $pdf->Ln(17);
          $pdf->SetFillColor(190);
           $pdf->SetFont('Helvetica','b',12);
          $pdf->Cell(170,6,('GASTOS POR VIATICOS'),0,1,'C',true);

          $pdf->SetFont('Helvetica','',11);
          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Lugar: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Cell(0, 8,$lugar, 0);

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Viaticos Diarios:                                    Dias:                                                 Lps:', 0);
          $pdf->Ln(0);
          $pdf->Cell(36, 8, '', 0);

          $pdf->Cell(0, 8,  $viaticos_diarios, 0);
          $pdf->Ln(0);
          $pdf->Cell(83, 8, '', 0);
          $pdf->Cell(0, 8, $dias, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          // $pdf->Cell(0, 8, $sub_total, 0);
          $pdf->Cell(0, 8, $sub_total, 0, false, 'R', 0, '', 0, false, 'T', 'M' );


          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Gastos de Combustible:                                                                                Lps: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(50, 8, '', 0);
          $pdf->Cell(0, 8, $des_gcombustible, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          // $pdf->Cell(0, 8, $lps_gcombustible, 0);
          $pdf->Cell(0, 8, $lps_gcombustible, 0, false, 'R', 0, '', 0, false, 'T', 'M' );

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Otros Gastos:                                                                                                Lps: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(50, 8, '', 0);
          $pdf->Cell(0, 8, $des_ogastos, 0);
          $pdf->Ln(0);
          $pdf->Cell(140, 8, '', 0);
          // $pdf->Cell(0, 8,$lps_ogastos, 0);
          $pdf->Cell(0, 8, $lps_ogastos, 0, false, 'R', 0, '', 0, false, 'T', 'M' );


          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Total:                                                                                                             Lps: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Ln(0);
          $pdf->Cell(139, 8, '', 0);
          // $pdf->Cell(0, 8, $total_viaticos, 0);
          $pdf->Cell(0, 8, $total_viaticos, 0, false, 'R', 0, '', 0, false, 'T', 'M' );


          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Menos Anticipo Recibido:                                                                             Lps: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Ln(0);
          $pdf->Cell(139, 8, '', 0);
          // $pdf->Cell(0, 8, $anticipo_recibido, 0);
          $pdf->Cell(0, 8, $anticipo_recibido, 0, false, 'R', 0, '', 0, false, 'T', 'M' );

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,$des_saldos.':                                                                                Lps: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(60, 8, '', 0);
          $pdf->Ln(0);
          $pdf->Cell(139, 8, '', 0);
          // $pdf->Cell(0, 8, $saldos, 0);
          $pdf->Cell(0, 8, $saldos, 0, false, 'R', 0, '', 0, false, 'T', 'M' );

          $pdf->Ln(6);
          $pdf->Cell(3, 8, '', 0);
          $pdf->Cell(0, 8,'Observaciones: ', 0);
          $pdf->Ln(0);
          $pdf->Cell(32, 8, '', 0);
          $pdf->Cell(0, 8,$observaciones, 0);

          $pdf->Ln(20);
          $pdf->SetLeftMargin(30);

          $content = '<br><br><br><table border="0">
                    <tr>
                        <th  width="200"><hr ><br>Firma del Viajero</th>
                        <th  width="120" ></th>
                        <th width="200" ><hr><br>Gerencia Administrativa</th>
                    </tr><br><br><br><br>
                    <tr height="300">
                    <th width="160"></th>
                    <th width="230"><hr><br>V.° B.° Director o Jefe V.° B.°</th>
                    <th width="100"></th>
                    </tr></table>';


        $pdf->writeHTML($content, true, 0, true, 0);

        	// $pdf->writeHTML($content, true, 0, true, 0);
        	$pdf->lastPage();
        	$pdf->output('reporte_solicitud_desglosada.pdf','I');

  ?>

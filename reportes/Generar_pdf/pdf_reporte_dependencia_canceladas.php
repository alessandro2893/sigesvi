<?php
require_once("../reportes.class.php");
$tabla = new reportes();
$giras_ca = $tabla->traer_giras_can_dependencia($_GET['dependencia']);

require_once("../../assets/php/conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
session_start();
$usuario_activo=$_SESSION["usuario_activo"];

require_once('../../tcpdf/tcpdf.php');
  if(isset($_GET['nombre_reporte'])){

  // Extend the TCPDF class to create custom Header and Footer
  class MYPDF extends TCPDF {
          // public function Header() {
          //
          //    $this->pdf->SetHeaderData('/assets/img/inhgeomin.png', 100, 'string to print as title on document header', 'string to print on document header');
          // }
          public function Footer() {
              // Position at 15 mm from bottom
              $this->SetY(-7);
              $this->SetX(7);
              // Set font
              $this->SetFont('helvetica', 'I', 8);
              // Page number

            $this->Cell(0, 0, 'Avenida La Fao, Bvl Centroamerica, Tegucigalpa                              Pagina '.$this->getAliasNumPage().' de '.$this->getAliasNbPages().'                                                                                          Telefono:22326044', 0, false, 'l', 0, '', 0, false, 'T', 'M');
          }

  }
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);




$content=<<<EOF
<!-- EXAMPLE OF CSS STYLE -->
<style>

    table.first {
        font-family: helvetica;
        padding: 0,0,0, 0px;
        width:100%;
    }

    tr.first{
      font-size: 9pt;
      color:black;

    }

    tr.second{
      font-size: 8pt;

    }


</style>
<br>
<br>
<br>
<table class="first" cellpadding="1" cellspacing="2">
 <tr class="first">
  <td width="5%" align="center"><b>No.</b></td>
  <td width="30%" align="center" ><b>Nombre</b></td>
  <td width="10%"align="center"><b>Reloj marcador</b></td>
  <td align="center"><b>Dependencia</b></td>
  <td align="center"><b>Cargo</b></td>
  <td width="8%" align="center"><b>Categoria</b></td>
  <td width="16%" align="center"><b>No. Solicitudes Canceladas</b></td>
 </tr>


EOF;

$i=0;
while($row = mysqli_fetch_assoc($giras_ca)){
    $i+1;$i++;
    $content.='
    <tr class="second">
      <td align="center">'.$i.'</td>
      <td >'.$row['nombre'].'</td>
      <td align="center">'.$row['reloj_marcador'].'</td>
      <td align="center">'.$row['dependencia'].'</td>
      <td align="center">'.$row['cargo'].'</td>
      <td align="center">'.$row['categoria'].'</td>
      <td align="center">'.$row['veces'].'</td>
    </tr>';
    };

    $content .='</table>';












        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('GRUPO EVALUACION DE SISTEMAS');
        $pdf->SetTitle($_GET['nombre_reporte']);
        $pdf->SetKeywords('Key1, Key2, Nombrekey');

        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
        // set some language-dependent strings (optional)
        $pdf->Rotate(-90);
        // $pdf->SetMargins(20, 20, 20, false);
        $pdf->SetAutoPageBreak(true, 20);
        $pdf->SetImageScale(PDF_IMAGE_SCALE_RATIO);

        $pdf->SetFont('times','BI', 9);
        $pdf->SetLeftMargin(5);
        $pdf->AddPage();
        $pdf->SetFont('Helvetica', '', 10);
        /*____________________________IMAGEN-LOGO... GUARGA LA IMG EN LA CARPETA image de TCPDF___________________*/
        $image_file=K_PATH_IMAGES."logoi.jpg";
        $pdf->Image($image_file, 5, 6, 25, '', 'JPG','', 'T', false, 200, '', false, false, 0, false, false);
        $pdf->SetFont('Helvetica', 'B', 15);
        $pdf->Cell(20, -10, '', 0);
        $pdf->Cell(100, 1, 'Instituto Hondureño de Geologia y Minas', 0);

        $pdf->Ln(6);
        $pdf->SetFont('Helvetica', '', 13);
        $pdf->Cell(59, 8, '', 0);
        $pdf->Cell(70, 8, $_GET['nombre_reporte'], 0);

        $pdf->Ln(6);
        $pdf->SetFont('Helvetica', '', 10);
        $pdf->Cell(70, 8, '', 0);

        $pdf->Cell(60, 8, 'Registro de solicitudes canceladas',  0);

        $pdf->Ln(20);
        $pdf->SetFont('Helvetica', '', 8);
        $pdf->Cell(10, 0,'Elaboro:'.$usuario_activo.'                                                                                                                            Fecha Elaboración: '. date("d-m-Y",time('HH:MM')), 0);


        //Close and output PDF document

        // $content="";

      	$pdf->writeHTML($content, true, 0, true, 0);
      	$pdf->lastPage();
      	$pdf->output('reporte_solicitudes_canceladas_por_dependencia.pdf','I');

}else{
  echo(1);
}
?>

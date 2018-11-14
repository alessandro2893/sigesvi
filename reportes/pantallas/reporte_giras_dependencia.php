<?php
include('../../assets/php/conexion.php');

$fecha_actual=date("Y-m-d");

$sentencia1 = "SELECT id_dependencia, dependencia FROM tbl_man_dependencia";
$query1 = mysqli_query($mysqli,$sentencia1);
?>

<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">

<!-- Meta Mobil
================================================== -->
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

  <div class="panel-body">
    <?php $h1 = "Reporte Solicitudes Por Dependencia"; echo '<h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-list-alt"></span> Reporte Solicitudes Por Dependencia</h4>';?>


    <input type="hidden" id="nombre_reporte" value="<?php echo $h1; ?>">

   <div class="panel panel-info">
        <div class="panel-heading">Filtros de busqueda</div>
        <div class="panel-body">

            <form class="form-inline" role="form" autocomplete="off">
                  <div class="col-md-3">
                      <select type="text" id="cbx_busqueda_dependencia" class="form-control " data-toggle="tooltip" data-placement="top" title="" data-original-title="Filtrar">
                        <option value="default">Seleccione busqueda</option>
                          <option value="giras_dep">Solicitudes aprobadas</option>
                          <option value="giras_can">Solicitudes canceladas</option>
                      </select>
                    </div>

                    <div class="form-group col-md-4" id="div-dependencia" style="display:none;">
                        Dependencia:  <select class="form-control" id="bs-dependencia" style="text-transform: uppercase; font-weight: bold;" >
                                         <option value="default">SELECCIONE DEPENDENCIA</option>
                                         <?php while ($fila= mysqli_fetch_array($query1)){ ?>
                                             <option value="<?=$fila['id_dependencia']?>"><?=$fila['dependencia']?></option>
                                         <?php }; ?>
                                      </select>
                    </div>
                    <div class="form-group col-md-2 " style="display:none" id="btn_buscar_dependencia">
                    <a class="fa fa-search btn btn-info ver_detalle"></a>
                  </div>

                <div class="form-group col-md-2 "  id="div-btn-generar" style="display:none">
                      <input value="Generar PDF" href="javascript:;" type="submit" style="float:right; margin-top:1 px;" class="btn btn-danger"
                      onclick="fn_generar_reporte_dependencia($('#nombre_reporte').val());return false;">
                </div>
            </form>
        </div>
    </div>
    <div class="registros" id="agrega-registros"></div>

  </div>



</body>
</html>
<script src="reportes/funciones_reportes.js">

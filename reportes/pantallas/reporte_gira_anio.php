<?php
$fecha_actual=date("Y-m-d");
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
    <?php $h1 = "Reporte Solicitudes"; echo '<h4 class="page-header"  style="text-transform: uppercase; font-weight: bold;" ><span class="glyphicon glyphicon-list-alt"></span> Reporte Solicitudes</h4>';?>

    <input type="hidden" id="nombre_reporte" value="<?php echo $h1; ?>">

   <div class="panel panel-info">
        <div class="panel-heading">Filtros de busqueda</div>
        <div class="panel-body">

            <form class="form-inline" role="form" autocomplete="off">
                  <div class="col-md-3">
                      <select type="text" id="cbx_busqueda" class="form-control " data-toggle="tooltip" data-placement="top" title="" data-original-title="Filtrar">
                        <option value="">Seleccione busqueda</option>
                        <option value="anio">Solicitudes por año</option>
                        <option value="rango">Rango de Fechas</option>
                      </select>
                    </div>

                    <div class="form-group col-md-6" id="div-fechas" style="display:none">
                        Desde:   <input type="date" class="form-control"  value="<?=$fecha_actual?>" max="<?=$fecha_actual?>" id="bs-desde" data-toggle="tooltip" data-placement="top" title="" data-original-title="Fecha desde dia/mes/año ejemplo: 28/09/1994">

                        Hasta:  <input type="date"  class="form-control" value="<?=$fecha_actual?>" max="<?=$fecha_actual?>" id="bs-hasta" data-toggle="tooltip" data-placement="top" title="" data-original-title="Fecha hasta dia/mes/año ejemplo: 28/09/1994">

                        <a class="fa fa-search btn btn-info ver_detalle" id="btn_buscar_solicitudes_fecha"></a>

                    </div>

                    <div class="form-group col-md-4" id="div-anio" style="display:none;">
                        Giras por año:   <input onkeypress="return validarNumeros(event)" maxlength="4"  style="font-weight: bold; " placeholder="ejemplo '2017'" type="text" class="form-control"  id="bs-anio" >



                    </div>


                <div class="form-group col-md-2 "  id="div-btn-generar" style="display:none">
                      <input value="Generar PDF" href="javascript:;" type="submit" style="float:right; margin-top:1 px;" class="btn btn-danger"
                      onclick="fn_generar_reporte_soli($('#nombre_reporte').val());return false;">
                </div>
            </form>

        </div>

    </div>
    <div class="registros" id="agrega-registros"></div>

  </div>



</body>
</html>
<script src="reportes/funciones_reportes.js">

//##################################    SOLO USUARIOS       ######################################################3/////////////

// ################## usuarios  ########################## //

$( "#li_usuario" ).click(function() {
     $('#a_usuario').removeClass('active');
     $('#li_mante_empleado').removeClass('active');
     $('#li_bitacora').removeClass('active');
     $('#li_mante_roles').removeClass('active');
     $('#li.active').removeClass('active');
     $("#li_usuario").addClass('active');
     $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('usuarios/usuarios_tabs.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});



// ################## mante_categoria  ########################## //
$( "#li_mante_empleado" ).click(function() {
  $('#a_empleado').removeClass('active');
  $('#li_usuario').removeClass('active');

    $('li.active').removeClass('active');
    $("#li_mante_empleado").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/empleado_tabs.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });

});

// ################## roles  ########################## //
$( "#li_mante_roles" ).click(function() {
    $('#a_roles').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_roles").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('usuarios/roles_tabs.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});


// ################## bitacora  ########################## //
$( "#li_bitacora" ).click(function() {
    $('#a_bitacora').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_bitacora").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('usuarios/bitacora.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## PARAMETROS  ########################## //
$( "#li_mante_parametro" ).click(function() {
  $('#a_mante_parametro').removeClass('active');
  $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_parametro").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_parametro.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });

});


//############################################      SOLO MANTENIMIENTOS         ##############################################//



// ################## mante_cuentas  ########################## //
$( "#li_mante_cuentas" ).click(function() {
  $('#a_cuentas').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_cuentas").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_cuentas.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });

});


// ################## mante_categoria  ########################## //
$( "#li_mante_categoria" ).click(function() {
  $('#a_categoria').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_categoria").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_categoria.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });

});




// ################## mante_zona  ########################## //
$( "#li_mante_zona" ).click(function() {
  $('#a_zona').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_zona").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_zona.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## mante_categoria zona  ########################## //
$( "#a_cate_zona" ).click(function() {
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_cate_zona").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/manteni_categoria_zona.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });

});

// ################## mante_vehiculo  ########################## //
$( "#li_mante_vehiculo" ).click(function() {
  $('#a_vehiculo').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_vehiculo").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_vehiculo.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});


// ################## mante_departamento  ########################## //
$( "#li_mante_departamento" ).click(function() {
  $('#a_departamento').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_departamento").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_departamento.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## mante_departamento  ########################## //
$( "#li_mante_municipio" ).click(function() {
  $('#a_municipio').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_mante_municipio").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/Manteni_municipio.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});


    // ################## mante_dependencia  ########################## //
    $( "#li_mante_dependencia" ).click(function() {
      $('#a_dependencia').removeClass('active');
        $('li.active').removeClass('active');
        $('li.active').removeClass('active');
        $("#li_mante_dependencia").addClass('active');
        $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
        $.get('Mantenimiento/Manteni_dependencia.php').done(function(htmlexterno){
          $("#contenedor_principal").html(htmlexterno);
         });

});







//#################################     SOLO VIATICOS     #############################################################//

// ################## UNIDAD SOLICITANTE  ########################## //
$( "#li_unidad_solicitante" ).click(function() {
  $('#a_unidad_solicitante').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_unidad_solicitante").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('viaticos/viaticos_tabs.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## UNIDAD SOLICITANTE  ########################## //
$( "#li_servicios_generales" ).click(function() {
  $('#a_servicios_generales').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_servicios_generales").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('viaticos/asig_vehiculo_tabs.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## UNIDAD SOLICITANTE  ########################## //
$( "#li_aprobacion_viatico" ).click(function() {
  $('#a_aprobacion_viatico').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_aprobacion_viatico").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('viaticos/aprobacion_tabs.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## DESGLOSE DE GASTOS  ########################## //
$( "#li_desglose_gastos" ).click(function() {
  $('#a_desglose_gastos').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_desglose_gastos").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('viaticos/desglosar_tabs.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});






//#################################     SOLO REPORTES     #############################################################//
$( "#li_generar_reportes" ).click(function() {
  $('#a_generar_reportes').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_generar_reportes").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/principal.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## REPORTE EMPEADOS  ########################## //
$( "#li_reportes_empleados" ).click(function() {
  $('#a_reportes_empleados').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_reportes_empleados").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/pantallas/reporte_empleados.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});


$( "#li_reporte_solicitudes" ).click(function() {
  $('#a_reporte_solicitudes').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_reporte_solicitudes").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/pantallas/reporte_gira_anio.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

///////////////////////////REPORTE EMPLEADO QUE MAS SALIO DE GIRA////////////////////
$( "#li_reporte_mgira" ).click(function() {
  $('#a_reporte_mgira').removeClass('active');
    $('li.active').removeClass('active');
    // $('li.active').removeClass('active');
    $("#li_reporte_mgira").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/reporte_gira_mas.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});



////////////////////////////reporte vehiculos///////////////////////////////////
$( "#li_reporte_vehiculos" ).click(function() {
  $('#a_reporte_vehiculos').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_reporte_vehiculos").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/pantallas/reporte_vehiculos.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ################## REPORTE giras por departamento ########################## //
$( "#li_reporte2" ).click(function() {
  $('#a_reporte2').removeClass('active');
    $('li.active').removeClass('active');
    $('li.active').removeClass('active');
    $("#li_reporte2").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('reportes/pantallas/reporte_giras_dependencia.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});




// ################## REPORTE giras por departamento ########################## //
$( "#span_creditos" ).click(function() {
  $('li.active').removeClass('active');
  $('li.active').removeClass('active');

    $("#span_creditos").addClass('active');
    $("#contenedor_principal").html('<img src="assets/img/loading.gif" style="margin-left: 40%; margin-top: 10%;">');
    $.get('Mantenimiento/creditos.php').done(function(htmlexterno){
    //$.get('viaticos/tabla_viaticos.php').done(function(htmlexterno){
      $("#contenedor_principal").html(htmlexterno);
     });
});

// ------------------------------------     FUNCION PARA parametros     --------------------------------------------
function fn_actualizar_parametros(dias_habiles_pass, dias_vencimiento_contraseña, intentos, pc_dia_min, pl_dia_max, clave_default, max_dias_aprobacion, minimo_clave, maximo_clave,){

  var parametros = {
          hacer:'actualizar_parametros',
          dias_habiles_pass:dias_habiles_pass,
          dias_vencimiento_contraseña:dias_vencimiento_contraseña,
          minimo_clave:minimo_clave,
          maximo_clave:maximo_clave,
          intentos:intentos,
          pc_dia_min:pc_dia_min,
          pl_dia_max:pl_dia_max,
          clave_default:clave_default,
          max_dias_aprobacion:max_dias_aprobacion
        };




    if (dias_habiles_pass==="" || dias_vencimiento_contraseña==="" || minimo_clave==="" || maximo_clave==="" || intentos==="" || pc_dia_min==="" || pl_dia_max==="" || clave_default==="" || max_dias_aprobacion==="") {
          $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
          setTimeout(function() {
            $('#resultado').html('');

           },2000);

        // } else if (minimo_clave>maximo_clave) {
        //                 $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">Minimo de caracteres no debe ser mayor a maximo de caraceres</div></center>');
        //                 setTimeout(function() {
        //                   $('#resultado').html('');
        //                 },4000);

           } else if (pc_dia_min>pl_dia_max) {
               $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">Dias minimos para gira no debe ser mayor a Dias maximos para gira</div></center>');
               setTimeout(function() {
                 $('#resultado').html('');

               },4000);


        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',

              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#resultado").html('<br><center><div class="alert alert-success">Los parametros han sido actualizados con exito Procesando... .</div></center>');
                        setTimeout(function() {
                          $("#resultado").html('');
                         },2000);
                      }

              }
          });
        }
}




$(".enviar_actualizar_categoria").click(function(){
//  alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado
    var nombre_clase_categoria = "#categoria"+id;
    var nombre_clase_grupo = "#grupo_ocupacional"+id;
    var nombre_clase_nivel = "#nivel_organizativo"+id;
    var nombre_clase_comprende = "#comprende"+id;
    var nombre_clase_estado = "#estado"+id;

    var categoria = $(nombre_clase_categoria).text();
    var grupo = $(nombre_clase_grupo).text();
    var nivel = $(nombre_clase_nivel).text();
    var comprende = $(nombre_clase_comprende).text();
    var estado = $(nombre_clase_estado).text();

  $("#cargar_modal_edit_categoria").load("Mantenimiento/modal_edit_categoria.php",{grupo:grupo, comprende:comprende, nivel:nivel, categoria:categoria, estado:estado, id:id});
});

function fn_edit_categoria(grupo, comprende, nivel, categoria, estado, id){
 // alert(1);
  var parametros = {
          hacer:'actualizar_categoria',
          grupo:grupo,
          comprende:comprende,
          nivel:nivel,
          categoria:categoria,
          estado:estado,
          id:id
        };

        if (grupo==="" || comprende==="" || nivel==="" || categoria==="") {
          $('#msg_cambio_categoria').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
          setTimeout(function() {
            $('#msg_cambio_categoria').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_categoria").html('<br><center><div class="alert alert-success">La categoría del empleado ha sido modificada. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_categoria.php');
                            $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           $('#cargar_modal_edit_categoria').modal('hide');
                            data=="";
                         },2000);
                      }

              }
          });
        }
}

              ////////////////////////////////////////////// GUARDAR REGISTRO   ///////////////////////////////////////////////////
$(".enviar_nueva_categoria").click(function(){
// alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_categoria").load("Mantenimiento/modal_nueva_categoria.php");
});


function fn_nueva_categoria(grupo, comprende, nivel, categoria, estado){
  //alert(1);
  var parametros = {
          hacer:'insertar_categoria',
          grupo:grupo,
          comprende:comprende,
          nivel:nivel,
          categoria:categoria,
          estado:estado

        };

        if (grupo==="" || comprende==="" || nivel==="" || categoria==="") {
          $('#msg_cambio_categoria').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_categoria').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_categoria").html('<br><center><div class="alert alert-success">La categoría del empleado ha sido insertada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_categoria.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_cambio_categoria").html('<br><center><div class="alert alert-danger">La categoría del empleado ya existe .</div></center>');
                        setTimeout(function() {
                          $("#msg_cambio_categoria").html('');
                          $("#cate").val('').focus();

//                           $("#contenedor_principal").load('Mantenimiento/manteni_categoria.php');
                          //  $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);

                      }

              }
          });
        }
}




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////        FIN PROCESOS DE CATEGORIA          //////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$(".enviar_actualizar_vehiculo").click(function(){
  //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado
    var nombre_clase_tipo_vehiculo = "#tipo_vehiculo"+id;
    var nombre_clase_n_vehiculo = "#n_vehiculo"+id;
    var nombre_clase_capacidad_personas = "#capacidad_personas"+id;
    var nombre_clase_placa_vehiculo = "#placa_vehiculo"+id;
    var nombre_clase_marca_vehiculo = "#marca_vehiculo"+id;
    var nombre_clase_modelo_vehiculo = "#modelo_vehiculo"+id;
    var nombre_clase_color_vehiculo = "#color_vehiculo"+id;
    var nombre_clase_estado = "#estado"+id;


    var tipo_vehiculo = $(nombre_clase_tipo_vehiculo).text();
    var n_vehiculo = $(nombre_clase_n_vehiculo).text();
    var capacidad_personas = $(nombre_clase_capacidad_personas).text();
    var placa_vehiculo = $(nombre_clase_placa_vehiculo).text();
    var marca_vehiculo = $(nombre_clase_marca_vehiculo).text();
    var modelo_vehiculo = $(nombre_clase_modelo_vehiculo).text();
    var color_vehiculo = $(nombre_clase_color_vehiculo).text();
    var estado = $(nombre_clase_estado).text();
//alert('grupo'+ grupo+' nivel '+ nivel+ 'comprende'+ comprende+ 'estado'+ estado + ' min '+ min_rango+ ' max '+ max_rango+ ' id ' + id);
  $("#cargar_modal_edit_vehiculo").load("Mantenimiento/modal_edit_vehiculo.php",{tipo_vehiculo:tipo_vehiculo, n_vehiculo:n_vehiculo, capacidad_personas:capacidad_personas, placa_vehiculo:placa_vehiculo, marca_vehiculo:marca_vehiculo, modelo_vehiculo:modelo_vehiculo, color_vehiculo:color_vehiculo, estado:estado,id:id});
//  $('#select_update_categoria').val(estado).prop('selected', true);

});


function fn_edit_vehiculo(tipo_vehiculo, n_vehiculo, capacidad_personas, placa_vehiculo, marca_vehiculo, modelo_vehiculo, color_vehiculo, estado, id){
 //alert(nombre_zona+ tipo_periodo+ monto_asignado+ dia_min+ dia_max+ estado+ id);
  var parametros = {
          hacer:'actualizar_vehiculo',
          tipo_vehiculo:tipo_vehiculo,
          n_vehiculo:n_vehiculo,
          capacidad_personas:capacidad_personas,
          placa_vehiculo:placa_vehiculo,
          marca_vehiculo:marca_vehiculo,
          modelo_vehiculo:modelo_vehiculo,
          color_vehiculo:color_vehiculo,
          estado:estado,
          id:id
        };
        if (tipo_vehiculo==="" || n_vehiculo==="" || capacidad_personas==="" || placa_vehiculo==="" || marca_vehiculo==="" || modelo_vehiculo==="" || color_vehiculo==="" ) {
          $('#msg_cambio_vehiculo').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_vehiculo').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_vehiculo").html('<br><center><div class="alert alert-success">El vehículo ha sido modificado. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_vehiculo.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }

              }
          });
        }
}



////////////////////////////////////////////// GUARDAR REGISTRO VEHICULO  ///////////////////////////////////////////////////
$(".enviar_nueva_vehiculo").click(function(){
 //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_vehiculo").load("Mantenimiento/modal_nueva_vehiculo.php");
});


function fn_nueva_vehiculo(tipo_vehiculo, n_vehiculo, capacidad_personas, placa_vehiculo, marca_vehiculo, modelo_vehiculo, color_vehiculo, kilometraje,estado){
  //alert(1);
  var parametros = {
          hacer:'insertar_vehiculo',
          tipo_vehiculo:tipo_vehiculo,
          n_vehiculo:n_vehiculo,
          capacidad_personas:capacidad_personas,
          placa_vehiculo:placa_vehiculo,
          marca_vehiculo:marca_vehiculo,
          modelo_vehiculo:modelo_vehiculo,
          color_vehiculo:color_vehiculo,
          kilometraje:kilometraje,
          estado:estado
        };
         // alert(n_vehiculo);

        if (tipo_vehiculo==="" || n_vehiculo==="" || capacidad_personas==="" || placa_vehiculo==="" || marca_vehiculo==="" || modelo_vehiculo==="" || color_vehiculo==="" || kilometraje==="") {
          $('#msg_cambio_vehiculo').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_vehiculo').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',

              success:  function (response) {
                // alert(parametros);
                      if (response.msg==="si") {
                        $("#msg_cambio_vehiculo").html('<br><center><div class="alert alert-success">El Vehículo ha sido insertado satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_vehiculo.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);

                      }else if (response.msg==="placa"){
                        $("#msg_cambio_vehiculo").html('<br><center><div class="alert alert-danger">La placa del Vehículo Ya Existe.</div></center>');
                        setTimeout(function() {
                          $('#msg_cambio_vehiculo').html('');
                          //  $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="nvehiculo"){
                        $("#msg_cambio_vehiculo").html('<br><center><div class="alert alert-danger">El númenor del Vehículo Ya Existe.</div></center>');
                        setTimeout(function() {
                          $('#msg_cambio_vehiculo').html('');
                          //  $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }

              }
          });
        }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////              FIN PROCESOS DE VEHICULOS           //////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$(".enviar_actualizar_departamento").click(function(){
    //alert('asas');

    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

    var nombre_clase_departamento= "#departamento"+id;
    var nombre_clase_estado= "#estado"+id;

    var departamento =$(nombre_clase_departamento).text();
    var estado =$(nombre_clase_estado).text();
    $("#cargar_modal_edit_departamento").load("Mantenimiento/modal_edit_departamento.php", {departamento:departamento, estado:estado, id:id});
});


//////////////////////////////////////////////////////////////////////////////////////////////////////////////

function fn_edit_departamento(depto1, select_update_departamento, id){
  //alert(depto1+select_update_departamento);
  var parametros = {
          hacer:'actualizar_estado_departamento',
          depto1:depto1,
          select_update_departamento:select_update_departamento,

          id:id
          };

          if (depto1=== "" || select_update_departamento==="") {
          $('#msg_cambia').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambia').html('');
           },2000);

        }else {
              $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              beforeSend: function () {
                      //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              },
              success:  function (response) {
  //                alert('despierta msg');
                      if (response.msg==="si") {
                        $("#msg_cambia").html('<br><center><div class="alert alert-success">El departamento ha sido modificado. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_departamento.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }

              }
          });

        }
}



/////////////////////////////////////////////NUEVO INGRESOOOOOO/////////////////////////////
///////////////////////////////////////////////////////////////////
////////////////////////////////////////////// GUARDAR DEPARTAMENTO  ///////////////////////////////////////////////////
$(".enviar_nueva_departamento").click(function(){
 //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_departamento").load("Mantenimiento/modal_nueva_departamento.php");
});







function fn_nueva_departamento(departamento_d, select_insert_estado){
  //alert(1);
  var parametros = {
          hacer:'insertar_departamento',
          departamento_d:departamento_d,
          select_insert_estado:select_insert_estado
        };

        if (departamento_d==="" || select_insert_estado==="") {
          $('#msg_encender_departamento').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_encender_departamento').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
//                alert(1);
                      if (response.msg==="si") {
                        $("#msg_encender_departamento").html('<br><center><div class="alert alert-success">El departamento ha sido insertada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_departamento.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_encender_departamento").html('<br><center><div class="alert alert-danger">El departamento ya existe .</div></center>');

                        setTimeout(function() {
                          $('#msg_encender_departamento').html('');

                         },2000);

                      }

              }
          });
        }
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////        FIN PROCESOS DE DEPARTAMENTO          //////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$(".enviar_actualizar_municipio").click(function(){

    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');


    var nombre_clase_municipio= "#municipio"+id;
    var nombre_clase_estado= "#estado"+id;
    var nombre_clase_depto= "#departamento"+id;

    var municipio =$(nombre_clase_municipio).text();
    var estado =$(nombre_clase_estado).text();
    var depto =$(nombre_clase_depto).text();
//    alert(nombre_clase_municipio,+ nombre_clase_estado);
    $("#cargar_modal_edit_municipio").load("Mantenimiento/modal_edit_municipio.php", {municipio:municipio, estado:estado, depto:depto, id:id});
});


function fn_edit_municipio(municip, select_update_municipio, zona, depto, id){
  //alert(depto);
  var parametros = {
          hacer:'actualizar_municipio',
          municip:municip,
          select_update_municipio:select_update_municipio,
          zona:zona,
          id:id,
          depto:depto
          };

          if (municip=== "" || select_update_municipio==="") {
          $('#msg_cambia').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambia').html('');
           },2000);

        }else {
              $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              beforeSend: function () {
                      //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              },
              success:  function (response) {
    //              alert('despierta msg');
                      if (response.msg==="si") {
                        $("#msg_cambia").html('<br><center><div class="alert alert-success">El municipio ha sido modificado. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_municipio.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }

              }
          });

        }
}


/////////////////////////////////////////////NUEVO INGRESOOOOOO/////////////////////////////
///////////////////////////////////////////////////////////////////
////////////////////////////////////////////// GUARDAR MUNICIPIO  ///////////////////////////////////////////////////
$(".enviar_nueva_municipio").click(function(){
 //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_municipio").load("Mantenimiento/modal_nueva_municipio.php");
});




function fn_nueva_municipio(departamento, municipio_mm, zona, select_update_muni){
  //alert(1);
  var parametros = {
          hacer:'insertar_municipio',
          id_departamento:departamento,
          municipio_mm:municipio_mm,
          id_zona:zona,
          select_update_muni:select_update_muni
        };

        if (municipio_mm==="" ) {
          $('#msg_encender_municipio').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_encender_municipio').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
         //       alert(1);
                      if (response.msg==="si") {
                        $("#msg_encender_municipio").html('<br><center><div class="alert alert-success">El municipio ha sido insertada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_municipio.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_encender_municipio").html('<br><center><div class="alert alert-danger">El municipio ya existe.</div></center>');
                        setTimeout(function() {
                          $('#msg_encender_municipio').html('');

                         },2000);
                      }

              }
          });
        }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////        FIN PROCESOS DE MUNICIPIO          //////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////        Conductor        //////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(".enviar_actualizar_conductor").click(function(){
//  alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado\

    var nombre_clase_tipo_licencia = "#tipo_licencia"+id;
    var nombre_clase_fecha_vencimiento = "#fecha_vencimiento"+id;
    var nombre_clase_estado = "#estado"+id;


    var tipo_lic = $(nombre_clase_tipo_licencia).text();
    var fecha_v = $(nombre_clase_fecha_vencimiento).text();
    var estado = $(nombre_clase_estado).text();

  $("#cargar_modal_edit_conductor").load("Mantenimiento/modal_edit_conductor.php",{ tipo_lic:tipo_lic, fecha_v:fecha_v, estado:estado, id:id});
//$("#select_update_categoria[value="+ estado +"]").attr("selected",true);
//  $('#select_update_categoria').val(estado).prop('selected', true);
//alert('grupo'+ grupo+' nivel '+ nivel+ 'comprende'+ comprende+ 'estado'+ estado + ' min '+ min_rango+ ' max '+ max_rango+ ' id ' + id);

});

function fn_edit_conductor(tipo_lic,fecha_v,estado, id){
// alert(1);
  var parametros = {
          hacer:'actualizar_conductor',
          tipo_lic:tipo_lic,
          fecha_v:fecha_v,
          estado:estado,
          id:id
        };
//alert(tipo_lic+fecha_c+estado+id);
        $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_conductor").html('<br><center><div class="alert alert-success"> Los datos del conductor han sido modificados. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_conductor.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                            data=="";
                         },2000);
                      }

              }
          });
}






//////////////////////////////////////////////////////////MANTENIMIENTO DE DEPENEDENCIA///////////////////////
//////////////////////////////actualizar dependencia///////////////////////////////

$(".enviar_actualizar_dependencia").click(function(){
  //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado
    var nombre_clase_dependencia = "#dependencia"+id;
    var nombre_clase_estado = "#estado"+id;


    var dependencia = $(nombre_clase_dependencia).text();
    var estado = $(nombre_clase_estado).text();

  $("#cargar_modal_edit_dependencia").load("Mantenimiento/modal_edit_dependencia.php",{dependencia:dependencia, estado:estado, id:id});
//$("#select_update_categoria[value="+ estado +"]").attr("selected",true);
//  $('#select_update_categoria').val(estado).prop('selected', true);
//alert('grupo'+ grupo+' nivel '+ nivel+ 'comprende'+ comprende+ 'estado'+ estado + ' min '+ min_rango+ ' max '+ max_rango+ ' id ' + id);

});




function fn_edit_dependencia( estado, id){
  var parametros = {
          hacer:'actualizar_dependencia',
          estado:estado,
          id:id
        };
        //alert(estado);


          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_dependencia").html('<br><center><div class="alert alert-success">La dependencia ha sido modificada. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_dependencia.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                            data=="";
                         },2000);
                      }

              }
          });

}
////////////////////////////////nueva dependencia/////////////////////////////

$(".enviar_nueva_dependencia").click(function(){
// alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;

  $("#cargar_modal_nueva_dependencia").load("Mantenimiento/modal_nueva_dependencia.php");
});


function fn_nueva_dependencia(dependencia, estado){
  //alert(1);
  var parametros = {
          hacer:'insertar_dependencia',
          dependencia:dependencia,
          estado:estado

        };

        if (dependencia==="" ) {
          $('#msg_cambio_dependencia').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_dependencia').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_dependencia").html('<br><center><div class="alert alert-success">La dependencia ha sido creada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_dependencia.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_cambio_dependencia").html('<br><center><div class="alert alert-danger">La dependencia ya existe.</div></center>');
                        setTimeout(function() {
                          $("#msg_cambio_dependencia").html('');
                        },2000);

                      }

              }
          });
        }
}


//////////////////////////////actualizar cuentas///////////////////////////////

$(".enviar_actualizar_cuentas").click(function(){
  //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado
    var nombre_clase_numero = "#numero_cuenta"+id;
    var nombre_clase_estado = "#estado"+id;

   var numero = $(nombre_clase_numero).text();
    var estado = $(nombre_clase_estado).text();

//alert(id);
  $("#cargar_modal_edit_cuentas").load("Mantenimiento/modal_edit_cuentas.php",{ estado:estado, numero:numero, id:id});
//$("#select_update_categoria[value="+ estado +"]").attr("selected",true);
//  $('#select_update_categoria').val(estado).prop('selected', true);
//alert('grupo'+ grupo+' nivel '+ nivel+ 'comprende'+ comprende+ 'estado'+ estado + ' min '+ min_rango+ ' max '+ max_rango+ ' id ' + id);

});




function fn_edit_cuentas( numero, estado, id){
  var parametros = {
          hacer:'actualizar_cuentas',
          numero:numero,
          estado:estado,
          id:id
        };
        //alert(estado);


          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_cuentas").html('<br><center><div class="alert alert-success">La cuenta ha sido modificada. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_cuentas.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                            data=="";
                         },2000);
                      }

              }
          });

}

////////////////////nueva cuenta//////////////////////
$(".enviar_nueva_cuenta").click(function(){
// alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_cuenta").load("Mantenimiento/modal_nueva_cuenta.php",{banco:"", tipo_cuenta:"", tipo_moneda:"", numero_cuenta:"", estado:"", id:""});
});


function fn_nueva_cuenta(banco, tipo_cuenta, tipo_moneda, numero_cuenta, estado){
  //alert(1);
  var parametros = {
          hacer:'insertar_cuentas',
          banco:banco,
          tipo_cuenta:tipo_cuenta,
          tipo_moneda:tipo_moneda,
          numero_cuenta:numero_cuenta,
          estado:estado

        };

        if (banco==="" || numero_cuenta==="" ) {
          $('#msg_cambio_cuentas').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_cuentas').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',

              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        $("#msg_cambio_cuentas").html('<br><center><div class="alert alert-success">La cuenta bancaria ha sido insertada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_cuentas.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_cambio_cuentas").html('<br><center><div class="alert alert-danger">La cuenta bancaria ya existe .</div></center>');
                        setTimeout(function() {
                          $('#msg_cambio_cuentas').html('');

                         },2000);


                       }else if (response.msg==="no"){
                         $("#msg_cambio_cuentas").html('<br><center><div class="alert alert-danger">No puede crear la misma cuenta en 2 tipos de moneda</div></center>');
                         setTimeout(function() {
                           $('#msg_cambio_cuentas').html('');

                          },2000);
                      }

              }
          });
        }
}





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
//////////////////////////////////      FUNCIONES EMPLEADOS                             ///////////////////////////////////////////7///
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////Borrar los campos al cambiar de tabs//
$('#li_ver_empleados').click(function(){
  $('#n_identidad').val('');
  $('#reloj').val('');
  $('#nom1').val('');
  $('#nom2').val('');
  $('#apellido1').val('');
  $('#apellido2').val('');
  $('#telefono').val('');
  $('#depen').val('');
  $('#cargo').val('');
  $('#categoria').val('');
  $('#select_tipo_licencia').val('');
  $('#f_vencimiento').val('');
  $('#salario').val('');
  $('#select_estado_civil').val('');
  $('#municipio').val('');
  $('#direccion').val('');
  $('#cta_banca').val('');
  $('#estado').val('');
  $('#select_motivobaja').val('');
});
////////FIN borrar campos al cambiar tabs///


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////       HALAR LOS DATOS DESDE EL DATA-TABLE POR MEDIO DEL BOTON ---EDITAR EMPLEADO---      //////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(".buscar_identidad").click(function() {
  var id = $(this).attr('value'); // ID USUARIO
  var identidad = $(this).attr('noid');
  // alert(identidad)
  $("#a_ver_empleados").removeClass('active');
   $("#a_ingresar_empleado").addClass('active');
  $('#li_ver_empleados').removeClass('active');
  $("#li_ingresar_empleado").addClass('active');
  $('#ver_registros').removeClass('in active');
  $("#ingreso_empleado").addClass('in active');
  $("#n_identidad").val(identidad).focus().keyup();

    var valores = {hacer: 'buscar_identidad',
                    identidad: identidad
                  };
          $.ajax({
                   data:  valores,
                   url:   'Mantenimiento/p_mantenimientos.php',
                   type:  'post',

          success:  function (respuesta) {
            $("#resultado").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+respuesta.nombre1+' '+respuesta.apellido1+'</strong></center></div>');
            setTimeout(function() {
              $('#resultado').html('');

            },2200);
            // beforeSend: function () {
            //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
            // },
            if (respuesta.existe=='si') {
              //alert(1);

                  $('#fk_personal').val(respuesta.id_empleado);
                  $('#nom1').val(respuesta.nombre1);
                  $("#nom2").val(respuesta.nombre2);
                  $('#apellido1').val(respuesta.apellido1);
                  $("#apellido2").val(respuesta.apellido2);
                  $("#reloj").val(respuesta.r_m);
                  $("#telefono").val(respuesta.telefono);
                  $('#depen').val(respuesta.id_dependencia).prop('selected', true);
                  $("#cargo").val(respuesta.cargo);
                  $('#categoria').val(respuesta.id_categoria).prop('selected', true);
                  $("#salario").val(respuesta.salario);
                  $('#municipio').val(respuesta.id_mun_fk).prop('selected', true);
                  $("#direccion").val(respuesta.direccion);
                  $('#select_estado_civil').val(respuesta.estado_civil).prop('selected', true);
                $("#cta_banca").val(respuesta.cta_bancaria);

                  if (respuesta.cargo=='CONDUCTOR') {
                    $("#div_fecha").show();
                    $("#div_tipo").show();
                    $('#select_tipo_licencia').val(respuesta.tipo_licencia).prop('selected', true);
                    $("#f_vencimiento").val(respuesta.f_vencimiento);
                  }else {
                    $("#div_fecha").hide();
                    $("#div_tipo").hide();
                    $('#select_tipo_licencia').val('');
                    $("#f_vencimiento").val('');
                  }
                  //alert('es conductor');
            }


          }//cierre del success
        });//cierre del ajax
});



$('#n_identidad').keyup(function(event) {
 // alert ("entro a la validacion de indentidad");
  var identidad= $('#n_identidad').val();

          if (identidad.length == 15) {
            var valores = {hacer: 'buscar_identidad',
                            identidad: identidad
                          };
                  $.ajax({
                            data:  valores,
                           url:   'Mantenimiento/p_mantenimientos.php',
                            type:  'post',


                  success:  function (respuesta) {

                    if (respuesta.existe=='si') {
                      $("#resultado").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+respuesta.nombre1+' '+respuesta.apellido1+'</strong></center></div>');
                      setTimeout(function() {
                        $('#resultado').html('');
                      },2200);
                      $("#id_empleado_fk").val(respuesta.id_empleado);
                      $("#nom1").val(respuesta.nombre1);
                      $("#nom2").val(respuesta.nombre2);
                      $("#apellido1").val(respuesta.apellido1);
                      $("#apellido2").val(respuesta.apellido2);
                      $("#reloj").val(respuesta.r_m);
                      $("#telefono").val(respuesta.telefono);
                      $('#depen').val(respuesta.id_dependencia).prop('selected', true);
                      $("#cargo").val(respuesta.cargo);
                      $('#categoria').val(respuesta.id_categoria).prop('selected', true);
                      $("#salario").val(respuesta.salario);
                      $('#municipio').val(respuesta.id_mun_fk).prop('selected', true);
                      $("#direccion").val(respuesta.direccion);
                      $('#select_estado_civil').val(respuesta.estado_civil).prop('selected', true);
                      $("#estado").val(respuesta.estado).prop('selected', true);
                      if (respuesta.estado=="ACTIVO") {
                        $("#div_motivo").hide();
                        $("#select_motivobaja").val();
// alert(2345);
                      }else {
                        // alert(89765);

                        $("#select_motivobaja").val(respuesta.motivo_baja).prop('selected', true);
                        $("#div_motivo").show();

                      }
                      $("#cta_banca").val(respuesta.cta_bancaria);


                       $("#nom1").attr("disabled", false);
                      $("#nom2").attr("disabled", false);
                      $("#apellido1").attr("disabled", false);
                      $("#apellido2").attr("disabled", false);
                      $("#reloj").attr("disabled", false);
                      $("#telefono").attr("disabled", false);
                      $('#depen').attr("disabled", false);
                      $("#cargo").attr("disabled", false);
                      $('#categoria').attr("disabled", false);
                      $("#salario").attr("disabled", false);
                      $('#municipio').attr("disabled", false);
                      $("#direccion").attr("disabled", false);
                      $('#select_estado_civil').attr("disabled", false);
                      $("#estado").attr("disabled", false);
                      $("#cta_banca").attr("disabled", false);
                      $("#select_motivobaja").attr("disabled", false);

                      if (respuesta.cargo=='CONDUCTOR') {
                        $("#div_fecha").show();
                        $("#div_tipo").show();
                        $('#select_tipo_licencia').val(respuesta.tipo_licencia).prop('selected', true);
                        $("#f_vencimiento").val(respuesta.f_vencimiento);
                        $('#select_tipo_licencia').attr("disabled", false);
                        $("#f_vencimiento").attr("disabled", false);
                      }else {
                        $("#div_fecha").hide();
                        $("#div_tipo").hide();
                        $('#select_tipo_licencia').val('');
                        $("#f_vencimiento").val('');
                      }//CIERRE DEL ID CONDUCTOR

                  }else{
                    $("#resultado").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+'</strong></center></div>');
                    setTimeout(function() {
                      $('#resultado').html('');
                    },3200);
                      $("#nom1").attr("disabled", false);
                    $("#nom2").attr("disabled", false);
                    $("#apellido1").attr("disabled", false);
                    $("#apellido2").attr("disabled", false);
                    $("#reloj").attr("disabled", false);
                    $("#telefono").attr("disabled", false);
                    $('#depen').attr("disabled", false);
                    $("#cargo").attr("disabled", false);
                    $('#categoria').attr("disabled", false);
                    $("#salario").attr("disabled", false);
                    $('#municipio').attr("disabled", false);
                    $("#direccion").attr("disabled", false);
                    $('#select_estado_civil').attr("disabled", false);
                    $("#estado").attr("disabled", false);
                    $("#cta_banca").attr("disabled", false);
                    $("#select_motivobaja").attr("disabled", false);

                    if (respuesta.cargo=='CONDUCTOR') {
                     $("#div_fecha").show();
                     $("#div_tipo").show();
                     $('#select_tipo_licencia').attr("disabled", false);
                     $("#f_vencimiento").attr("disabled", false);
                    }else {
                     $("#div_fecha").hide();
                     $("#div_tipo").hide();
                     $('#select_tipo_licencia').val('');
                     $("#f_vencimiento").val('');
                   }
                 }//cierre if existe

                  }//cierre del success
                });//cierre del ajax
            }else if (identidad.length < 15) {
                $("#id_empleado_fk").val('');
                $("#nom1").val('');
                $("#nom2").val('');
                $("#apellido1").val('');
                $("#apellido2").val('');
                $("#reloj").val('');
                $("#telefono").val('');
                $('#depen').val('default');
                $("#cargo").val('');
                $('#categoria').val('default');
                $("#salario").val('');
                $('#municipio').val('default');
                $("#direccion").val('');
                $('#select_estado_civil').val('default');
                $('#select_tipo_licencia').val('default');
                $("#f_vencimiento").val('');
                $("#estado").val('');
                $("#cta_banca").val('');

                $("#div_fecha").hide();
                $("#div_tipo").hide();
                $('#select_tipo_licencia').val('');
                $("#f_vencimiento").val('');

                $("#nom1").attr("disabled", true);
               $("#nom2").attr("disabled", true);
               $("#apellido1").attr("disabled", true);
               $("#apellido2").attr("disabled", true);
               $("#reloj").attr("disabled", true);
               $("#telefono").attr("disabled", true);
               $('#depen').attr("disabled", true);
               $("#cargo").attr("disabled", true);
               $('#categoria').attr("disabled", true);
               $("#salario").attr("disabled", true);
               $('#municipio').attr("disabled", true);
               $("#direccion").attr("disabled", true);
               $('#select_estado_civil').attr("disabled", true);
               $("#estado").attr("disabled", true);
               $("#cta_banca").attr("disabled", true);
               $("#select_motivobaja").attr("disabled", true);
               $("#div_motivo").hide();

          }

});


function fn_empleados(identidad, nombre1, nombre2, apellido1, apellido2, reloj, telefono, dependencia, cargo, categoria, salario, municipio, direccion, estado_civil, estado, t_lic, f_vencimiento, cta_bancaria, motivobaja){
  var cargo=cargo.toUpperCase();
  var parametros = {
          hacer:'insup_empleado',
          identidad:identidad,
          nombre1:nombre1,
          nombre2:nombre2,
          apellido1:apellido1,
          apellido2:apellido2,
          reloj:reloj,
          telefono:telefono,
          dependencia:dependencia,
          cargo:cargo,
          categoria:categoria,
          salario:salario,
          municipio:municipio,
          direccion:direccion,
          estado_civil:estado_civil,
          estado:estado,
          t_lic:t_lic,
          f_vencimiento:f_vencimiento,
          motivobaja:motivobaja,
          cta_bancaria:cta_bancaria

        };
      /* alert(identidad + nombre1 + nombre2 + apellido1 + apellido2 + reloj + telefono + dependencia + cargo + categoria + salario + municipio + direccion + estado_civil + estado + cta_bancaria);
*/
// alert(cargo);
if (motivobaja=="" && estado=="INACTIVO") {
  $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">Debe ingresar un motivo de baja</div></center>');
  setTimeout(function() {
    $('#resultado').html('');

   },2000);

 } if ( cargo=="CONDUCTOR" &&(f_vencimiento==""  || t_lic=="default") ) {
   // alert(2341235);

   // if  () {
     // alert(2345);

     $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">Debe completar fecha de vencimiento y tipo de licencia</div></center>');
     setTimeout(function() {
       $('#resultado').html('');

      },2000);
   // }


}else {
// alert(123456);
            if (identidad==="" || nombre1==="" || nombre2==="" || apellido1==="" || apellido2==="" || reloj==="" || telefono==="" ||  dependencia==="" || cargo==="" || categoria==="" || salario==="" || municipio==="" || direccion==="" || estado_civil==="" || estado==="default" || cta_bancaria==="") {
          $('#resultado').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#resultado').html('');

           },2000);


              }else{
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',

              beforeSend: function () {
                  $("#btn_crear_emp").attr('disabled', true);

              },
              success:  function (response) {
                //alert(1);
                      if (response.msg==="si") {
                        if (response.vencida==="si") {
                          // alert(2345678);
                          $("#vencida").html('<center><div class="alert alert-warning">La licencia ingresada esta vencida, favor verificar.</div></center>');
                          $("#resultado").html('<center><div class="alert alert-success">La transaccion ha sido realizada satisfactoriamente. Procesando... .</div></center>');
                          setTimeout(function() {
                              $("#contenedor_principal").load('Mantenimiento/empleado_tabs.php');
                           },2000);

                          }else if (response.reloj_existe==="si") {
                            $("#reloj_existe").html('<center><div class="alert alert-warning">El reloj marcador ya existe.</div></center>');
                            setTimeout(function() {
                                $("#contenedor_principal").load('Mantenimiento/empleado_tabs.php');
                             },2000);


                            }else {
                              $("#resultado").html('<br><center><div class="alert alert-success">La transaccion ha sido realizada satisfactoriamente. Procesando... .</div></center>');
                              setTimeout(function() {
                                  $("#contenedor_principal").load('Mantenimiento/empleado_tabs.php');
                               },2000);
                            }

                      }else if (response.msg=="no guardo") {
                        $("#resultado").html('<br><center><div class="alert alert-danger">No funciona la vista.</div></center>');

                      }

              }
          });
        }


      }//CIERRE DEL IF DE MOTIVO DE BAJA

}//CIERE DE LA FUNCION



$("#cargo").keyup(function(){
  var cargo= $("#cargo").val();
  // alert(cargo);
if (cargo=="conductor" || cargo=="CONDUCTOR") {
  $("#div_fecha").show();
  $("#div_tipo").show();

}else {
  $("#div_fecha").hide();
  $("#div_tipo").hide();



}  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla


});


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////actualizar zonas  ///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(".enviar_actualizar_zona").click(function(){
  //alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

  //se tran los datos de las columnas de las tablas, segun el id seleccionado
    var nombre_clase_nombre_zona = "#nombre_zona"+id;
    var nombre_clase_estado = "#estadoz"+id;

    var nombre_zona = $(nombre_clase_nombre_zona).text();
    var estado = $(nombre_clase_estado).text();

if (estado=="ESPERANDO ASIGNACION DE CATEGORIA") {
  var es="disabled= 'true'";
  // alert(es);

}else {
var es="";
// alert(es);

};

 //alert(nombre_zona+'nombre_zona'+ 'estado'+ estado + ' id ' + id);
  $("#cargar_modal_edit_zona").load("Mantenimiento/modal_edit_zona.php",{nombre_zona:nombre_zona,es:es, estado:estado,id:id});
//  $('#select_update_categoria').val(estado).prop('selected', true);

});


function fn_edit_zona(nombre_zona, estado, id){
 //alert(nombre_zona+ tipo_periodo+ monto_asignado+ dia_min+ dia_max+ estado+ id);
  var parametros = {
          hacer:'actualizar_zona',
          nombre_zona:nombre_zona,
          estado:estado,
          id:id

  };
    if (nombre_zona=== "") {
          $('#msg_cambio_zona').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_zona').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                 //alert('despierta msg');
                      if (response.msg==="si") {
                        $("#msg_cambio_zona").html('<br><center><div class="alert alert-success">La zona ha sido modificada. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_zona.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                       }else if (response.msg==="existe"){
                         $("#msg_cambio_zona").html('<br><center><div class="alert alert-danger">Los datos de esta zona ya existen .</div></center>');
                         setTimeout(function() {
                             $("#msg_cambio_zona").html('');
                         },2000);

                      }

              }
          });
        }
}





////////////////////////////////////////////// GUARDAR REGISTRO DE ZONA  ///////////////////////////////////////////////////
$(".enviar_nueva_zona").click(function(){
// alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_zona").load("Mantenimiento/modal_nueva_zona.php");
});


function fn_nueva_zona(nombre_zona, estado){
  //alert(nombre_zona,estado);
  var parametros = {
          hacer:'insertar_zona',
          nombre_zona:nombre_zona,
          estado:estado
        };

        if (nombre_zona== "") {
          $('#msg_cambio_zona').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
          setTimeout(function() {
            $('#msg_cambio_zona').html('')
           },2000);

        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',

                success:  function (response) {
                //  alert('despierta msg');
                      if (response.msg==="si") {
                        $("#msg_cambio_zona").html('<br><center><div class="alert alert-success">La zona ha sido creada satisfactoriamente. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/Manteni_zona.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }else if (response.msg==="existe"){
                        $("#msg_cambio_zona").html('<br><center><div class="alert alert-danger">Los datos de esta zona ya existen .</div></center>');
                        setTimeout(function() {
                            $("#msg_cambio_zona").html('');
                        },2000);

                      }

              }
          });
        }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////           FIN PROCESOS DE ZONAS DE INSPECCION                ///////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////ACTUALIZAR CATEGORIA zonas  ///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(".enviar_actualizar_cate_zona").click(function(){
// alert('entro al punto enviar actualizar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var idzona = $(this).attr('idzona');
    var idcate = $(this).attr('idcate');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');

    var nombre_clase_nombre_zona = "#nombre_zona"+id;
    var nombre_clase_categoria = "#categoria"+id;
    var nombre_clase_pcorto = "#periodo_c"+id;
    var nombre_clase_plargo = "#periodo_l"+id;
    var nombre_clase_estado = "#estado"+id;

    var nombre_zona = $(nombre_clase_nombre_zona).text();
    var categoria = $(nombre_clase_categoria).text();
    var periodo_corto = $(nombre_clase_pcorto).text();
    var periodo_largo = $(nombre_clase_plargo).text();
    var estado = $(nombre_clase_estado).text();

 // alert(' ID_ZONA ' +idzona + ' id ' + id + ' id CATE ' + idcate);
  $("#cargar_modal_edit_cate_zona").load("Mantenimiento/modal_edit_categoria_zona.php",{nombre_zona:nombre_zona,categoria:categoria, periodo_corto:periodo_corto, periodo_largo:periodo_largo, estado:estado,idzona:idzona, idcate:idcate,id:id});
//  $('#select_update_categoria').val(estado).prop('selected', true);

});


function fn_edit_cate_zona(id_cate_z, id_zona_fk, id_categoria_fk, pcorto, plargo, estado_cate_z){
  var parametros = {
          hacer:'actualizar_cate_zona',
          id_cate_z:id_cate_z,
          id_zona_fk:id_zona_fk,
          id_categoria_fk:id_categoria_fk,
          pcorto:pcorto,
          plargo:plargo,
          estado_cate_z:estado_cate_z
      };
// alert(id_cate_z+" id zona "+id_zona_fk);
    if (pcorto=== "" || plargo=== "" || estado_cate_z=== "") {
          $('#msg_cambio_cate_zona').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
          setTimeout(function() {
            $('#msg_cambio_cate_zona').html('');

           },2000);
        }else {
          $.ajax({
              data:  parametros,
              url:   'Mantenimiento/p_mantenimientos.php',
              type:  'post',
              // beforeSend: function () {
              //         //$("#resultado_busqueda").html('<HR COLOR="black" WIDTH="100%"><center><div class="alert alert-info fade in">BUSCANDO POR FAVOR ESPERE...</div></center><HR COLOR="black" WIDTH="100%">');
              // },
              success:  function (response) {
                 //alert('despierta msg');
                      if (response.msg==="si") {
                        $("#msg_cambio_cate_zona").html('<br><center><div class="alert alert-success">La categoría de la zona ha sido modificada. Procesando... .</div></center>');
                        setTimeout(function() {
                           $("#contenedor_principal").load('Mantenimiento/manteni_categoria_zona.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           //$("#modal-edit_estado .close").click()
                           //$('#modal-edit_estado').modal('hide');
                         },2000);
                      }

              }
          });
        }
}



////////////////////////////////////////////// GUARDAR NUEVA CATEGORIA ZONA  ///////////////////////////////////////////////////
$(".enviar_nueva_cate_zona").click(function(){
  //  alert('entro al punto enviar insertar');
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
    $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    $(nombre_clase).addClass('success');
  $("#cargar_modal_nueva_cate_zona").load("Mantenimiento/modal_nueva_categoria_zona.php");
});


function fn_nueva_cate_zona(select_zona, select_categoria, p_corto, p_largo, estado_cate_zona){
 // alert(1);
  var parametros = {
        hacer:'insertar_cate_zona',
         select_zona:select_zona,
         select_categoria:select_categoria,
         p_corto:p_corto,
         p_largo: p_largo,
         estado_cate_zona:estado_cate_zona

        };
        if (p_corto==="" || p_largo==="") {
                $('#msg_cambio_cate_zona').html('<br><center><div class="alert alert-block alert-danger fade in">Complete todos los campos</div></center>');
                setTimeout(function() {
                  $('#msg_cambio_cate_zona').html('')
                 },2000);

              }else {
                $.ajax({
                    data:  parametros,
                    url:   'Mantenimiento/p_mantenimientos.php',
                    type:  'post',

                      success:  function (response) {
                      //  alert('despierta msg');
                            if (response.msg==="si") {
                              $("#msg_cambio_cate_zona").html('<br><center><div class="alert alert-success">La categoría de la zona ha sido creada satisfactoriamente. Procesando... .</div></center>');
                              setTimeout(function() {
                                 $("#contenedor_principal").load('Mantenimiento/manteni_categoria_zona.php');
                                 $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                                 //$("#modal-edit_estado .close").click()
                                 //$('#modal-edit_estado').modal('hide');
                               },2000);
                            }else if (response.msg==="existe"){
                              $("#msg_cambio_cate_zona").html('<br><center><div class="alert alert-danger">Los datos de esta categoría de zona ya existe .</div></center>');
                              setTimeout(function() {
                                  $("#msg_cambio_cate_zona").html('');
                              },2000);

                            }

                    }
                });
              }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////           FIN PROCESOS DE CATEGORIA ZONA                ///////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

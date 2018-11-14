//////////////////////       PRIMER PROCESO DE VIATICOS (UNIDAD SOLICITANTE)      //////////////////////////////////7
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// function fauto(){
// 		var inp1 = parseFloat($("#inp1").val());
// 		alert(inp1);
// 		var inp2 = parseFloat($("#inp2").val());
// 		var resultado = inp1+inp2;
// 		resultado = parseFloat(resultado).toFixed(2);
// 		$("#resultado").val(resultado);
// 	}

//-------->>>>>>>>>>>>  CALCULAR LOS DIAS SIN FUNCION EN SQL, Y CALCULAR EL MONTO
$("#f_salida").change(function(){
  // alert(1);
var f_salida= $("#f_salida").val();
var f_retorno= $("#f_retorno").val();

 if (f_retorno<f_salida) {
   $("#diaE").val('0');
   $("#total_viaticos").val('0');
   $("#viaticos_diarios").val('0');
}else {



var f_salda= moment(f_salida);
var f_retorno= moment(f_retorno);
var dias= f_retorno.diff(f_salida, 'days');
   $("#diaE").val(dias);

   var parametros={
     hacer:'traer_monto',
     id_emp_fk:$("#id_soli").val(),
     id_zona_fk:$("#select_zona").val(),
     id_categoria_fk:$("#id_cate").val(),
     dias:$("#diaE").val()+'.'+$("#diaD").val()
   };
  //  alert(parametros.dias);
     $.ajax({
     data:  parametros,
     url:   'viaticos/p_viaticos.php',
     type:  'post',

     success:  function (response) {
             if (response.msg==="si") {
               //alert('DESPIERTA MSG');


               $("#total_viaticos").val(parseFloat(response.total_viaticos).toFixed(2));
               $("#viaticos_diarios").val(parseFloat(response.viaticos_diarios).toFixed(2));


             }//CIERRE DEL ELSE

      }//CIERRE DEL SUCCESS
    });//CIERRE DEL AJAX
  }

});


$("#f_retorno").change(function(){
  // alert('fecha retorno');
var f_salida= $("#f_salida").val();
var f_retorno= $("#f_retorno").val();

if (f_retorno<f_salida) {
$("#diaE").val('0');
$("#total_viaticos").val('0');
$("#viaticos_diarios").val('0');
}else {

var f_salida= moment(f_salida);
var f_retorno= moment(f_retorno);
var dias= f_retorno.diff(f_salida, 'days');
   $("#diaE").val(dias);

   var parametros={
     hacer:'traer_monto',
     id_emp_fk:$("#id_soli").val(),
     id_zona_fk:$("#select_zona").val(),
     id_categoria_fk:$("#id_cate").val(),
     dias:$("#diaE").val()+'.'+$("#diaD").val()

   };
  //  alert(parametros.dias);
     $.ajax({
     data:  parametros,
     url:   'viaticos/p_viaticos.php',
     type:  'post',

     success:  function (response) {
             if (response.msg==="si") {
              //  alert('DESPIERTA MSG f retorno');
              //  $("#total_viaticos").val(response.total_viaticos);
              //  $("#viaticos_diarios").val(response.viaticos_diarios);
               $("#total_viaticos").val(parseFloat(response.total_viaticos).toFixed(2));
               $("#viaticos_diarios").val(parseFloat(response.viaticos_diarios).toFixed(2));

             }//CIERRE DEL ELSE

      }//CIERRE DEL SUCCESS
    });//CIERRE DEL AJAX
  }

});


$("#diaD").keyup(function(){
var parametros={
  hacer:'traer_monto',
  id_emp_fk:$("#id_soli").val(),
  id_zona_fk:$("#select_zona").val(),
  id_categoria_fk:$("#id_cate").val(),
  dias:$("#diaE").val()+'.'+$("#diaD").val()


};//CIERRE DE VARIABLE PARAMETROS
// alert(parametros.dias);
  $.ajax({
  data:  parametros,
  url:   'viaticos/p_viaticos.php',
  type:  'post',

  success:  function (response) {
          if (response.msg==="si") {
            // alert('DESPIERTA MSG dias');
            // $("#total_viaticos").val(response.total_viaticos);
            // $("#viaticos_diarios").val(response.viaticos_diarios);
            $("#total_viaticos").val(parseFloat(response.total_viaticos).toFixed(2));
            $("#viaticos_diarios").val(parseFloat(response.viaticos_diarios).toFixed(2));

          }//CIERRE DEL ELSE

   }//CIERRE DEL SUCCESS
 });//CIERRE DEL AJAX
});//CIERRE DE LA FUNCION

$("#select_zona").change(function(){
var parametros={
  hacer:'traer_monto',
  id_emp_fk:$("#id_soli").val(),
  id_zona_fk:$("#select_zona").val(),
  id_categoria_fk:$("#id_cate").val(),
  dias:$("#diaE").val()+'.'+$("#diaD").val()


};//CIERRE DE LA VARIABLE PARAMETROS
// alert(parametros.dias);
  $.ajax({
  data:  parametros,
  url:   'viaticos/p_viaticos.php',
  type:  'post',

  success:  function (response) {
          if (response.msg==="si") {
            //alert('DESPIERTA MSG');
            // $("#total_viaticos").val(response.total_viaticos);
            // $("#viaticos_diarios").val(response.viaticos_diarios);
            $("#total_viaticos").val(parseFloat(response.total_viaticos).toFixed(2));
            $("#viaticos_diarios").val(parseFloat(response.viaticos_diarios).toFixed(2));

          }//CIERRE DEL ELSE

   }//CIERRE DEL SUCCESS
 });//CIERRE DEL AJAX
});//CIERRE DE LA FUNCION


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////     FUNCIONES PARA LA PANTALLA DE GENERAR SOLICITUD   ///////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ------->>>ENVIAR LOS DATOS DE LA TABLA A LA MODAL DEL EMPLEADO AL CUAL SE LE GENERARA LA NUEVA SOLICUTUD
$(".enviar_n_solicitud").click(function(){
 // alert('entro al punto enviar actualizar');
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var id_cate = $(this).attr('categoria');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');


var nombre_clase_nombre = "#nombre"+id;
var nombre_clase_dependencia = "#dependencia"+id;
var nombre_clase_categoria = "#categoria"+id;

var nombre = $(nombre_clase_nombre).text();
var dependencia = $(nombre_clase_dependencia).text();
var categoria = $(nombre_clase_categoria).text();

// $.post("viaticos/modal_nueva_solicitud.php",{nombre:nombre, dependencia:dependencia,id_cate:id_cate,id:id}).done(function(htmlexterno){
//   $("#cargar_modal_usolicitante").html(htmlexterno);
//  });

$("#cargar_modal_usolicitante").load("viaticos/modal_nueva_solicitud.php",{nombre:nombre, dependencia:dependencia,id_cate:id_cate,id:id});
});//CIERRE DE LA FUNCION


// ---->>> FUNCION PARA GUARDAR LOS DATOS DE LA NUEVA SOLICUTUD
function fn_nueva_solicitud(id_cate, f_salida,  correlativo, f_retorno,  id_departamento, id_municipio, pgira, diaE , diaD,  viaticos_diarios, total_viaticos, zona, id_emp_fk){
    // alert(1);
    var parametros = {
    hacer:'insertar_solicitud',
    id_cate:id_cate,
    f_salida:f_salida,
    correlativo:correlativo,
    f_retorno:f_retorno,
    id_municipio:id_municipio,
    id_departamento:id_departamento,
    pgira:pgira,
    dia:diaE+'.'+diaD,
    viaticos_diarios:viaticos_diarios,
    total_viaticos:total_viaticos,
    zona:zona,
    id_emp_fk:id_emp_fk
  };//CIERRE DE VARIABLE PARAMETROS

// alert(id_departamento);
    if (f_salida==="" || f_retorno==="" || viaticos_diarios==="" || id_departamento==="" || pgira==="" ) {
        $('#msg_nusolicitud').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
        setTimeout(function() {
        $('#msg_nusolicitud').html('');

        },2000);

      }else if (diaE==="0" &&  diaD==="0"  || diaD==="") {
        $('#msg_nusolicitud').html('<br><center><div class="alert alert-block alert-danger fade in">Los campos de dias gira no deben ser cero, vacios o negativos</div></center>');
        setTimeout(function() {
        $('#msg_nusolicitud').html('');

        },2000);

      }else if (f_retorno<f_salida) {
        $("#msg_nusolicitud").html('<center><div class="alert alert-danger">La fecha retorno NO debe de ser menor a la fecha de salida</div></center>');
        setTimeout(function() {
          $('#msg_nusolicitud').html('');
        },2500);

      } else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_enviar_solicitud").attr('disabled', true);

        },


        success:  function (response) {
          // alert('entro al if guardar');
                if (response.msg==="sii") {
                  //alert('DESPIERTA MSG');
                  $("#msg_nusolicitud").html('<br><center><div class="alert alert-success">La solicitud ha sido generada exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/viaticos_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                   },2000);
                }else if (response.msg==="existe"){
                  //alert('DESPIERTA MSG');
                  $("#msg_nusolicitud").html('<center><div class="alert alert-danger">El empleado ya tiene una solicitud existente</div></center>');
                }//CIERRE DEL ELSE

        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION





// ---->>> FUNCION PARA PASAR LOS DATOS DE LA TABLA A LA MODAL DE LA SOLICITUD A CANCELAR SOLICITUD
$(".enviar_cancelar_solicitud").click(function(){
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var id_emple = $(this).attr('idempleado');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_nombre = "#nombrec"+id;
var nombre = $(nombre_clase_nombre).text();
  //alert(id_emple);
$("#cargar_modal_can_usolicitante").load("viaticos/modal_cancelar_solicitud.php",{id:id,id_emple:id_emple, nombre:nombre});
});//CIERRE DE LA FUNCION



// ------>>>>  FUNCION PARA CANCELAR LA SOLICITUD SELECCIONADA
function fn_cancelar_solicitud(motivo_cancelacion,id_emp,id_usoli){
  //alert('entro');
    var parametros = {
    hacer:'cancelar_solicitud',
    motivo_cancelacion:motivo_cancelacion,
    id_emp:id_emp,
    id_usoli:id_usoli
  };// CIERRE DE LA VARIABLE PARAMETROS
  //  alert(id_emp);
    //alert(id_emp+ motivo_cancelacion);


    if (motivo_cancelacion==="") {
        $('#msg_nsolicitud').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO DE CANCELACION</div></center>');
        setTimeout(function() {
        $('#msg_nsolicitud').html('');

        },2000);
        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_solicitud").attr('disabled', true);

        },

        success:  function (response) {
                if (response.msg==="si") {
//                  alert('DESPIERTA MSG');
                  $("#msg_nsolicitud").html('<br><center><div class="alert alert-success">La solicitud ha sido cancelada exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/viaticos_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////       FUNCIONES DE LA PANTALLA ASIGNACION DE VEHICULO(SEGUNDO PROCESO)          ////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// ----->>>> FUNCION QUE RECOJE LOS EMPLEADOS QUE ESTAN AMARRADOS A UN GIRA
$(".ver_detalle").click(function(){
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var cgira = $(this).attr('cgira');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_lgira = "#lgira"+id;

var lgira = $(nombre_clase_lgira).text();

// alert(cgira);
$("#cargar_modal_ver_detalle").load("viaticos/modal_ver_detalle.php",{cgira:cgira,id:id, lgira:lgira});
});//CIERRE DE LA FUNCION



// ----->>>> FUNCION QUE PASA LOS DATOS DE LA TABLA A LA MODAL PARA PODER ASIGNAR VEHICULO
$(".asignar_vehiculo").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var cgira = $(this).attr('codigogira');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');


var nombre_clase_cantidad = "#cantidad"+id;
var nombre_clase_zona = "#zona"+id;
var nombre_clase_f_salida = "#f_salida"+id;
var nombre_clase_f_retorno = "#f_retorno"+id;
var nombre_clase_lugar_gira = "#lgira"+id;

var cantidad = $(nombre_clase_cantidad).text();
var zona = $(nombre_clase_zona).text();
var f_salida = $(nombre_clase_f_salida).text();
var f_retorno = $(nombre_clase_f_retorno).text();
var lgira = $(nombre_clase_lugar_gira).text();

// alert(lgira);
$("#cargar_modal_asig_vehiculo").load("viaticos/modal_asig_vehiculo.php",{f_retorno:f_retorno, f_salida:f_salida,cgira:cgira,cantidad:cantidad,zona:zona,id:id, lgira:lgira});
});



// ----->>>> FUNCION PARA GUARDAR LOS DATOS DE LA ASIGNACION DE VEHICULO
function fn_asignar_vehiculo(cgira,cantidad,f_salida,f_retorno,lgira,kilometraje,id_vehiculo,id_usoli){
    var parametros = {
    hacer:'asignar_vehiculo',
    cgira:cgira,
    cantidad:cantidad,
    f_salida:f_salida,
    f_retorno:f_retorno,
    kilometraje:kilometraje,
    lgira:lgira,
    id_vehiculo:id_vehiculo,
    id_usoli:id_usoli
    };
    //  alert(cgira+' '+cantidad+' ' +f_salida+f_retorno+' '+lgira+' ' +id_vehiculo+' ' +id_usoli);
//alert(cantidad);
    if (f_salida==="" || f_retorno==="" || lgira==="" || kilometraje==="") {
        $('#msg_asignar').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
        setTimeout(function() {
        $('#msg_asignar').html('');

        },2000);
        }else if (f_retorno<f_salida) {
          $("#msg_asignar").html('<center><div class="alert alert-danger">La fecha retorno NO debe de ser menor a la fecha de salida</div></center>');
          setTimeout(function() {
            $('#msg_asignar').html('');
          },2500);

        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_asig_vehiculo").attr('disabled', true);

        },



        success:  function (response) {
                if (response.msg==="si") {
//                  alert('DESPIERTA MSG');
                  $("#msg_asignar").html('<br><center><div class="alert alert-success">Vehiculo asignado exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/asig_vehiculo_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }else if (response.msg=="excedio") {
                  //                  alert('DESPIERTA MSG');
                                    $("#msg_asignar").html('<br><center><div class="alert alert-warning">Vehiculo llego a su limite asigne otro... .</div></center>');
                                    setTimeout(function() {
                                       $("#contenedor_principal").load('viaticos/asig_vehiculo_tabs.php');
                                       $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                                       //$("#modal-edit_estado .close").click()
                                       //$('#modal-edit_estado').modal('hide');
                                     },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION


// ---->>> FUNCION PARA CARGAR LA MODAL CON LOS DATOS DE LA TABLA CANCELACION DE VEHICULO
$(".enviar_cancelar_gira").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var cgira = $(this).attr('cgira');
var Nplaca = $(this).attr('Nplaca');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');



// alert(Nplaca);
// alert(cgira+tvehiculo+placa+lgira+cantidad+f_salida+f_retorno);
$("#cargar_modal_can_gira").load("viaticos/modal_cancelar_gira.php",{id:id,cgira:cgira, Nplaca:Nplaca});
// alert(cgira);
});


// ----->>>> FUNCION PARA CANCELAR LA GIRA COMPLETA
function fn_cancelar_gira(detalle,placa,cgira,id_servige){
    var parametros = {
    hacer:'cancelar_gira',
    detalle:detalle,
    placa:placa,
    cgira:cgira,
    id_servige:id_servige
    };
// alert(placa);
// alert('plca ' + placa + 'cgira'+cgira );
    if (detalle==="") {
        $('#msg_can_gira').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO DE CANCELACION</div></center>');
            setTimeout(function() {
            $('#msg_can_gira').html('');
            },2000);
    }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_gira").attr('disabled', true);

        },
        success:  function (response) {
                if (response.msg==="si") {
                // alert('DESPIERTA MSG');
                  $("#msg_can_gira").html('<br><center><div class="alert alert-success">La asignacion de vehiculo ha sido cancelada exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/asig_vehiculo_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }else {
                  $("#msg_can_gira").html('<br><center><div class="alert alert-danger">Ocurrio un error.</div></center>');
                  setTimeout(function() {
                    $("#msg_can_gira").html('');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION



//////////////////////////////////          CANCELAR ASIGNACION DE VEHICULO      //////////////////////////////////////////
$(".enviar_cancelar_sgenerales").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var cgira = $(this).attr('cgira');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_tvehiculo = "#tipo_vehiculo"+id;
var nombre_clase_placa = "#placa"+id;
// alert(cgira);
var tvehiculo = $(nombre_clase_tvehiculo).text();
var placa = $(nombre_clase_placa).text();
// alert(cgira+tvehiculo+placa+lgira+cantidad+f_salida+f_retorno);
$("#cargar_modal_can_asignacion").load("viaticos/modal_cancelar_avehiculo.php",{id:id,cgira:cgira,tvehiculo:tvehiculo,placa:placa});
});




// ----->>> FUNCION PARA ELIMINAR EL VEHICULO DE LA GIRA
function fn_cancelar_asignacion(placa,detalle,cgira,id_servige){
    var parametros = {
    hacer:'cancelar_asignacion',
    detalle:detalle,
    cgira:cgira,
    placa:placa,
    id_servige:id_servige
    };


// alert(detalle);
    if (detalle==="") {
        $('#msg_can_vehiculo').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO DE CANCELACION</div></center>');
        setTimeout(function() {
        $('#msg_can_vehiculo').html('');

        },2000);
        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_asignacion").attr('disabled', true);

        },
        success:  function (response) {
                if (response.msg==="si") {
                // alert('DESPIERTA MSG');
                  $("#msg_can_vehiculo").html('<br><center><div class="alert alert-success">La asignacion de vehiculo ha sido cancelada exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/asig_vehiculo_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }else {
                  $("#msg_can_vehiculo").html('<br><center><div class="alert alert-danger">Ocurrio un error.</div></center>');
                  setTimeout(function() {
                    $("#msg_can_vehiculo").html('');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION



//
//////////////////////////////////         ELIMINAR UN EMPLEADO DE LA SOLICITUD      //////////////////////////////////////////
$(".enviar_cancelar_empleado").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var cgira = $(this).attr('cgira');
var placa = $(this).attr('placa');
var cantidad = $(this).attr('cantidad');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_lgira = "#lgira"+id;
// var nombre_clase_cantidad = "#cantidad"+id;
// var nombre_clase_placa = "#placa"+id;

var lgira = $(nombre_clase_lgira).text();
// var cantidad = $(nombre_clase_cantidad).text();
// var placa = $(nombre_clase_placa).text();
// alert(placa+cantidad);
$("#cargar_modal_can_empleado").load("viaticos/modal_cancelar_empleado.php",{ placa:placa, cantidad:cantidad, cgira:cgira, lgira:lgira});
});


function fn_cancelar_empleado(id_empleado,detalle, cgira, cant, placa){

    var parametros = {
    hacer:'cancelar_empleado',
    id_empleado:id_empleado,
    detalle:detalle,
    cgira:cgira,
    cant:cant,
    placa:placa
    // id_sgene:id_sgene
    };
//    alert(id_empleado+detalle+cgira+'        '+id_sgene);


    if (detalle==="" || id_empleado==="") {
        $('#msg_can_empleado').html('<br><center><div class="alert alert-block alert-danger fade in">Debe seleccionar un empleado y justificar el motivo de cancelacion.</div></center>');
        setTimeout(function() {
        $('#msg_can_empleado').html('');

      },3000);
        }else {
          // alert(id_empleado+detalle);

        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_empleado").attr('disabled', true);

        },
        success:  function (response) {
                if (response.msg==="si") {
                  // alert('DESPIERTA MSG');
                  $("#msg_can_empleado").html('<br><center><div class="alert alert-success">El empleado ha sido eliminado de la gira exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/asig_vehiculo_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION





//////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////      SOLO APROBACION           /////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////

$(".enviar_nueva_aprobacion").click(function(){
// alert('entro al punto enviar actualizar');
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var monto = $(this).attr('monto');
var cta_bancaria = $(this).attr('cbancaria');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_nombre = "#nombre"+id;
var nombre_clase_dgira = "#dias_gira"+id;
var nombre_clase_correlativo = "#correlativo"+id;

var nombre = $(nombre_clase_nombre).text();
var dgira = $(nombre_clase_dgira).text();
var correlativo = $(nombre_clase_correlativo).text();
 //alert(monto + id + cta_bancaria + nombre + );
$("#cargar_modal_aprobacion").load("viaticos/modal_nueva_aprobacion.php",
{dgira:dgira, correlativo:correlativo, monto:monto,nombre:nombre, cta_bancaria:cta_bancaria, id:id});
});



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////            FUNCION PARA APROBAR SOLICITUD                //////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function fn_nueva_aprobacion(id_cta, tipo_transaccion, folio, n_transaccion, observacion,correlativo,anticipo,monto,id_soli_fk){
    var parametros = {
    hacer:'aprobacion_solicitud',
    id_cta:id_cta,
    tipo_transaccion:tipo_transaccion,
    folio:folio,
    n_transaccion:n_transaccion,
    anticipo:anticipo,
    monto:monto,
    observacion:observacion,
    id_soli_fk:id_soli_fk
    };


//--->>> VARIABLES PARA GENERAR REPORTE
    var correlativo=correlativo;
 //alert("anticipo "+anticipo+ " n_trans "+n_transaccion);


    if (n_transaccion==="" || anticipo==="") {
        $('#msg_aprobar').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
        setTimeout(function() {
        $('#msg_aprobar').html('');

      },2000);

    }else if (tipo_transaccion=="CHEQUE" && folio=="" ) {
      // alert(23456);
      $('#msg_aprobar').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE EL FOLIO</div></center>');
      setTimeout(function() {
      $('#msg_aprobar').html('');

    },2000);
    }else {

        swal({
            title: "¿LOS DATOS INGRESADOS SON CORRECTOS?",
            type: "warning",
            showCancelButton: true,
             confirmButtonColor: "#55C836",
             cancelButtonColor: "#FF0F00",
             confirmButtonText: "SI",
             cancelButtonText: "NO",
             closeOnConfirm: true,
             closeOnCancel: true
          },
          function(isConfirm){
            if (isConfirm) {
              //alert('entro al isConfirm');
              $.ajax({
              data:  parametros,
              url:   'viaticos/p_viaticos.php',
              type:  'post',

              beforeSend: function () {
                  $("#btn_nueva_apro").attr('disabled', true);

              },

              success:  function (response) {
                      if (response.msg==="si") {
                        // alert('DESPIERTA MSG');
                        $("#msg_aprobar").html('<br><center><div class="alert alert-success">La solicitud de viaticos ha sido aprobada exitosamente. generando reporte... .</div></center>');
                        setTimeout(function() {
                          //-------------------------->>>>>>>>>>>>    FUNCION PARA MOSTRAR pdf
                           $("#contenedor_principal").load('viaticos/aprobacion_tabs.php');
                           $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                           window.open('reportes/pdf_solicitud_aprobada.php?id_soli_fk='+parametros.id_soli_fk+'&nombre_reporte=SOLICITUD DE VIATICOS &correlativo='+correlativo);
                         },2000);
                      }
              }//CIERRE DEL SUCCESS
            });//CIERRE DEL AJAX

            }
          });//cierre del swal y el funcion
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION


$(".generar_reporte").click(function(){
  // alert('asas');
  $('tr.success').removeClass('success');
  var id_soli = $(this).attr('value');
  var correlativo = $(this).attr('correlativo');
  window.open('reportes/pdf_solicitud_aprobada.php?id_soli_fk='+id_soli+'&nombre_reporte=SOLICITUD DE VIATICOS &correlativo='+correlativo);
});



//
//////////////////////////////////         ELIMINAR UN EMPLEADO DE LA SOLICITUD      //////////////////////////////////////////
$(".cancelar_aprobacion").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
//alert('entro');
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_nombre = "#nombre"+id;

var nombre = $(nombre_clase_nombre).text();

//alert( id );
$("#cargar_modal_can_aprobacion").load("viaticos/modal_cancelar_aprobacion.php",{id_soli_fk:id, nombre:nombre});
});

/////////////////////////////////////////////////////////////////////////////////////////

function fn_cancelar_aprobacion (motivo_cance, id_soli){
    var parametros = {
    hacer:'cancelar_aprobacion',
    motivo_cance:motivo_cance,
    id_soli:id_soli
    };
    // alert(motivo_cance  +id_soli);
//    alert(id+motivo_cancelacion);


    if (motivo_cance==="") {
      // alert(2345);
        $('#msg_can_gira').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO CANCELACION DE LA GIRA</div></center>');
        setTimeout(function() {
        $('#msg_can_gira').html('');

        },2000);
        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_apro").attr('disabled', true);

        },

        success:  function (response) {
                if (response.msg==="si") {
                  // alert('DESPIERTA MSG');
                  $("#msg_can_gira").html('<br><center><div class="alert alert-success">El empleado ha sido eliminado de la gira exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/aprobacion_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION



/////////////////////////CANCELAR ANULACION/////////////////////////

$(".anular_aprobacion").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_nombre = "#nombre"+id;

var nombre = $(nombre_clase_nombre).text();
// alert(id  + nombre);

// alert( id );
$("#cargar_modal_anu_aprobacion").load("viaticos/modal_anular_aprobacion.php",{id_usoli_fk:id, nombre:nombre});
});

////////////////////FUNCION ANULAR APROBACION///////////////////////////

function fn_cancelar_aprobacion2 (motivo_cance, id_soli){
  // alert(2345);
    var parametros = {
    hacer:'cancelar_aprobacion2',
    motivo_cance:motivo_cance,
    id_soli:id_soli
    };
    //  alert(motivo_cance  +id_soli);
//    alert(id+motivo_cancelacion);


    if (motivo_cance==="") {
      // alert(2345);
        $('#msg_can_gira').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO CANCELACION DE LA GIRA</div></center>');
        setTimeout(function() {
        $('#msg_can_gira').html('');

        },2000);
        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_apro2").attr('disabled', true);

        },
        success:  function (response) {
                if (response.msg==="si") {
                  // alert('DESPIERTA MSG');
                  $("#msg_can_gira").html('<br><center><div class="alert alert-success">La aprobación de la solicitud ha sido cancelada exitosamente. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/aprobacion_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                     //$("#modal-edit_estado .close").click()
                     //$('#modal-edit_estado').modal('hide');
                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION















/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7/////
//////////////////////////////////      FUNCIONES PARA DESGLOSE DE GASTOS       //////////////////////////////////77///
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////7/////
$("#correlativo").keyup(function(){
// alert('entro');
     var parametros={
       correlativo:correlativo= $(this).val(),
       hacer:"buscar_correlativo" //ya lo usamos
     };
      // alert(correlativo);

       $.ajax({
           data:  parametros,
           url:   'viaticos/p_viaticos.php',
           type:  'post',
               success:  function (respuesta) {
                   if (respuesta.existe=='si') {
                          $("#id_apr_fk").val(respuesta.id_aprobacion);
                          $("#id_vehiculo").val(respuesta.id_vehiculo);
                          $("#id_empleado").val(respuesta.id_empleado);
                          $("#id_sgenerales").val(respuesta.id_sgenerales);
                          $("#id_usoli").val(respuesta.id_usoli);
                          $("#desglose_gastos").show();
                          $("#nombre").val(respuesta.nombre);
                          $("#cargo").val(respuesta.cargo);
                          $("#cate").val(respuesta.cate);
                          $("#zona").val(respuesta.zona);
                          $("#lgira").val(respuesta.lgira);
                          $("#f_salida").val(respuesta.f_salida);
                          $("#f_retorno").val(respuesta.f_retorno);
                          $("#dias").val(respuesta.dias);
                          $("#viaticos_diarios").val(respuesta.viaticos_diarios);
                          $("#total_viaticos").val(respuesta.total_viaticos);
                          $("#proposito").val(respuesta.pgira);
                          $("#n_transaccion").val(respuesta.num_transaccion);
                          $("#anticipo").val(parseFloat(respuesta.anticipo).toFixed(2));

                          $("#tipo_transaccion").val(respuesta.tipo_transaccion);
                          $("#desglosar").show();
                  }else{
                    $("#desglose_gastos").hide();
                    $("#nombre").val("");
                    $("#cargo").val("");
                    $("#cate").val("");
                    $("#zona").val("");
                    $("#lgira").val("");
                    $("#f_salida").val("");
                    $("#f_retorno").val("");
                    $("#proposito").val("");
                    $("#n_transaccion").val('');
                    $("#desglosar").hide();
                  }
              }//cierre del success
        });
});

//////////////////////////////////////////////////////////////////////////////////////////////////////
////////77                 REALIZAR CALCULOS ARITMETICOS DESDE CADA TEXT                //////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


$("#lps_otrogastos").on('keyup',function(){
  var lps_otrogastos = $("#lps_otrogastos").val();
  var lps_gcombusti = $("#lps_gcombusti").val();
  var tviaticos=$("#lps_totald").val();
  var anticipo=$("#input_antrecibido").val();

  if (lps_gcombusti=="") {
    lps_gcombusti=0;
  }
  if (lps_otrogastos=="") {
      otrogastos=0;
  }
      var total_gastos=parseFloat(lps_gcombusti)+parseFloat(lps_otrogastos)+parseFloat(tviaticos);
      var saldos=parseFloat(anticipo)-parseFloat(total_gastos);

      // $("#input_saldos").val(saldos);
      // $("#input_subtotal").val(total_gastos);

     $("#input_saldos").val(parseFloat(saldos).toFixed(2));
     $("#input_subtotal").val(parseFloat(total_gastos).toFixed(2));


      if (saldos<0) {
        $("#input_saldos").val(parseFloat(saldos*-1).toFixed(2));
        // $("#input_saldos").val(saldos*-1);
        $("#lbl_saldo").text("Saldo Favor Empleado");
      }else if (saldos>0){
        $("#input_saldos").val(parseFloat(saldos).toFixed(2));
        // $("#input_saldos").val(saldos);
        $("#lbl_saldo").text("Saldo Favor DEFOMIN");
      }
});







$("#lps_gcombusti").on('keyup',function(){
  var lps_otrogastos = $("#lps_otrogastos").val();
  var lps_gcombusti = $("#lps_gcombusti").val();
  var tviaticos=$("#lps_totald").val();
  var anticipo=$("#input_antrecibido").val();


  if (lps_gcombusti=="") {
    lps_gcombusti=0;
  }else  if (lps_otrogastos=="") {
    // alert(1);
      otrogastos=0;
  }
  var total_gastos=parseFloat(lps_gcombusti)+parseFloat(lps_otrogastos)+parseFloat(tviaticos);
  var saldos=parseFloat(anticipo)-parseFloat(total_gastos);


   $("#input_subtotal").val(total_gastos);
   $("#input_saldos").val(saldos);

   if (saldos<0) {
     $("#input_saldos").val(saldos*-1);
     $("#lbl_saldo").text("Saldo Favor Empleado");
   }else if (saldos>0){
     $("#input_saldos").val(saldos);
     $("#lbl_saldo").text("Saldo Favor DEFOMIN");
   }
});



$("#input_antrecibido").on('keyup',function(){
  var anticipo = $("#input_antrecibido").val();
  var subtotal = $("#input_subtotal").val();
  var saldos=parseFloat(subtotal)-parseFloat(anticipo);
 // math.round()
    // alert(total_gastos);
    if (saldos<0) {
      $("#input_saldos").val(saldos*-1);
      $("#lbl_saldo").text("Saldo Favor DEFOMIN");
    }else if (saldos>0){
      $("#input_saldos").val(saldos);
      $("#lbl_saldo").text("Saldo Favor Empleado");
    }
});
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////      FIN CALCULOS ARITMETICOS        //////////////////////////////////////7
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////        FUNCIONES PARA LOS TABS           //////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$("#desglosar").on('click',function(){
  $("#a_desglosar_solicitud").show();
  $("#a_buscar_solicitud").removeClass('active');
  $("#a_desglosar_solicitud").addClass('active');
  $('#li_buscar_solicitud').removeClass('active');
  $("#li_desglosar_solicitud").addClass('active');
  $('#buscar_solicitud').removeClass('in active');
  $("#desglosar_solicitud").addClass('in active');

});

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////            CANCELAR DESGLOSE DE GASTOS                     ////////////////////////////////7//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$("#btn_can_desglose").on('click',function(){
// alert(1);
swal({
  title: "¿SEGURO QUE DESEA CANCELAR EL PROCESO ACTUAL?",
  text: "La información a cancelar no se podrá recuperar!",
  type: "warning",
  showCancelButton: true,
   confirmButtonColor: "#55C836",
   cancelButtonColor: "#FF0F00",
   confirmButtonText: "SI",
   cancelButtonText: "NO",
   closeOnConfirm: false,
   closeOnCancel: true
},
function(isConfirm){
  if (isConfirm) {
    swal("CANCELADO", "Ha cancelado la liquidacion de gastos", "success");
    $("#a_desglosar_solicitud").hide();
    $("#a_buscar_solicitud").addClass('active');
    $("#a_desglosar_solicitud").removeClass('active');
    $('#li_buscar_solicitud').addClass('active');
    $("#li_desglosar_solicitud").removeClass('active');
    $('#buscar_solicitud').addClass('in active');
    $("#desglosar_solicitud").removeClass('in active');

    }
  });

});



//////////////////////////        FIN FUNCIONES PARA LOS TABS             /////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////          FUNCION PARA DESGLOSAR UNA SOLICITUD                //////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function fn_desglosar (id_apr_fk, id_empleado, id_sgenerales, id_usoli, id_vehiculo, correlativo, lgira, v_diarios, dias,
 totald, des_otrosg, lps_ogastos, des_gcombus, lps_gcombus, subtotal, num_transaccion, anticipo, saldos,observaciones, tipotrans, lbl_saldo){
    var parametros = {
    hacer:'desglosar_solicitud',
    id_apr_fk:id_apr_fk,
    id_empleado:id_empleado,
    id_sgenerales:id_sgenerales,
    id_usoli:id_usoli,
    id_vehiculo:id_vehiculo,
    correlativo:correlativo,
    lgira:lgira,
    v_diarios:v_diarios,
    dias:dias,
    totald:totald,
    des_otrosg:des_otrosg,
    lps_ogastos:lps_ogastos,
    des_gcombus:des_gcombus,
    lps_gcombus:lps_gcombus,
    num_transaccion:num_transaccion,
    subtotal:subtotal,
    anticipo:anticipo,
    saldos:saldos,
    observaciones:observaciones,
    tipotrans:tipotrans,
    lbl_saldo:lbl_saldo
    };
    //  alert(correlativo);

    if (lgira==="" || v_diarios==="" || dias==="" || totald==="" || num_transaccion==="" ||  anticipo==="" || subtotal==="" || saldos==="") {
          $('#msg_desglosar').html('<br><center><div class="alert alert-block alert-danger fade in">COMPLETE TODOS LOS CAMPOS</div></center>');
          setTimeout(function() {
          $('#msg_desglosar').html('');
          },2000);
        }else {

          swal({
            title: "¿LOS DATOS INGRESADOS SON CORRECTOS?",
            text: "La información a guardar no se podrá modificar!",
            type: "warning",
            showCancelButton: true,
             confirmButtonColor: "#55C836",
             cancelButtonColor: "#FF0F00",
             confirmButtonText: "SI",
             cancelButtonText: "NO",
             closeOnConfirm: true,
             closeOnCancel: true
          },
          function(isConfirm){
            if (isConfirm) {
                $.ajax({
                data:  parametros,
                url:   'viaticos/p_viaticos.php',
                type:  'post',
                success:  function (response) {
                        if (response.msg==="si") {
                          // alert('DESPIERTA MSG');
                          $("#msg_desglosar").html('<br><center><div class="alert alert-success">La solicitud de viaticos ha sido desglosada exitosamente. generando reporte... .</div></center>');
                          setTimeout(function(){
                             $("#contenedor_principal").load('viaticos/desglosar_tabs.php');
                             $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
                             window.open('reportes/pdf_solicitud_desglosada.php?id_soli_fk='+parametros.id_usoli+'&nombre_reporte=LIQUIDACION DE GASTOS DE VIAJE &correlativo='+correlativo);

                           },2000);
                        }
                }//CIERRE DEL SUCCESS
              });//CIERRE DEL AJAX
            }
          });


    }//CIERRE DE CAMPOS VACIOS

}//CIERRE DE LA FUNCION


$(".generar_reporte_DGL").click(function(){
  $('tr.success').removeClass('success');
  var id_soli = $(this).attr('value');
  var correlativo = $(this).attr('correlativo');
  // alert(id_soli);
  window.open('reportes/pdf_solicitud_desglosada.php?id_soli_fk='+id_soli+'&nombre_reporte=LIQUIDACION DE GASTOS DE VIAJE &correlativo='+correlativo);

});


/////////////////////////CANCELAR ANULACION/////////////////////////

$(".anular_desglose").click(function(){
//las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
$('tr.success').removeClass('success');
var id = $(this).attr('value');
var nombre_clase = "tr#tr_"+id;
$(nombre_clase).addClass('success');

var nombre_clase_nombre = "#nombre"+id;
var nombre = $(nombre_clase_nombre).text();
// alert(id  + nombre);

// alert( id );
$("#cargar_modal_anu_desglose").load("viaticos/modal_anular_desglose.php",{id_usoli_fk:id, nombre:nombre});
});



function fn_cancelar_desglose (motivo_cance, id_soli){
  // alert(2345);
    var parametros = {
    hacer:'cancelar_desglose',
    motivo_cance:motivo_cance,
    id_soli:id_soli
    };


    if (motivo_cance==="") {
      // alert(2345);
        $('#msg_can_gira').html('<br><center><div class="alert alert-block alert-danger fade in">JUSTIFIQUE MOTIVO CANCELACION DE LA GIRA</div></center>');
        setTimeout(function() {
        $('#msg_can_gira').html('');

        },2000);
        }else {
        $.ajax({
        data:  parametros,
        url:   'viaticos/p_viaticos.php',
        type:  'post',

        beforeSend: function () {
            $("#btn_can_desglose").attr('disabled', true);

        },
        success:  function (response) {
                if (response.msg==="si") {
                  // alert('DESPIERTA MSG');
                  $("#msg_can_gira").html('<br><center><div class="alert alert-success">La liquidación de gastos ha sido cancelada con exito. Procesando... .</div></center>');
                  setTimeout(function() {
                     $("#contenedor_principal").load('viaticos/desglosar_tabs.php');
                     $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");

                   },2000);
                }
        }//CIERRE DEL SUCCESS
      });//CIERRE DEL AJAX
    }//CIERRE DE CAMPOS VACIOS
}//CIERRE DE LA FUNCION

//////////////////////////////////////////////////////////////////////////////////////////////////////////7
/////////////7      FUNCIONES PARA LA PANTALLA PRINCIPAL                    ////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

//------------->>  COMBOBOX PRINCIPAL
$('#tipo_reporte').change(function(){
  var extraer=$('#tipo_reporte').val();
  if (extraer=="RDE") {
    $('#div_empleados').show();
    $('#div_depto').hide();

  }else if(extraer=="RDD") {
    $('#div_depto').show();
    $('#div_empleados').hide();


  }else {
    $('#div_empleados').hide();
    $('#div_depto').hide();

  }
});


//------------->>  COMBOBOX EMPLEADOS
$('#cbx_empleados').change(function(){
  var extraer=$('#cbx_empleados').val();
  if (extraer=="r_giras_emp") {
    $('#div_desde').show();
    $('#div_hasta').show();

  }else if(extraer=="r_ucontra") {
    $('#div_desde').hide();
    $('#div_hasta').hide();
  }
});





























//////////////////////////////////////////////////////////////////////////////////////////////////////////7
/////////////7      FUNCIONES PARA REPORTE DE EMPLEADOS                    ////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////


$('#btn_buscar_fechas_empleados').click(function(){

  var extraer=$('#cbx_busqueda_empleados').val();

   if (extraer=="rango") {
   var desde=$('#bs-desde').val();
   var hasta=$('#bs-hasta').val();
   $('#div-cantidad').hide();
   $('#div-btn-generar').hide();
   $('#bs-cantidad').val('');
   $('#div-fechas').show();
   $('#agrega-registros').html('');

     if (desde=="" || hasta =="") {
       $('#div-btn-generar').hide();
       $('#agrega-registros').html('');
     //  alert(398765);

     }else {
         var parametros={
             desde:desde,
             hasta:hasta
           };

             $.ajax({
             type:'POST',
             url:'reportes/busquedas/buscar_empleados_rango.php',
             data:parametros,
             success: function(datos){
               // alert(datos);
               $('#div-btn-generar').show();
               $('#agrega-registros').html(datos);


             }
             });



           }///CIERRE ELSE DENTRO DEL ELSE IF
         }
 });





$('#cbx_busqueda_empleados').change(function(){
  // alert(234567);
  var extraer=$('#cbx_busqueda_empleados').val();


  if (extraer=="ult_reg") {
    $('#div-fechas').hide();
    $('#div-cantidad').show();
    $('#agrega-registros').html('');
    $('#div-btn-generar').hide();
    // $('#bs-desde').val('');


    $('#bs-cantidad').keyup(function(){

      var cantidad=$('#bs-cantidad').val();

      if (cantidad==0) {
        $('#div-btn-generar').hide();
        $('#agrega-registros').html('');
        // alert(398765);

      }else {

        var parametros={
            cantidad:cantidad
          };

            $.ajax({
            type:'POST',
            url:'reportes/busquedas/buscar_empleados_estado.php',

              data:parametros,
              success: function(datos){
                // alert(datos);
                $('#div-btn-generar').show();
                $('#agrega-registros').html(datos);


            }//CIERRE DEL SUCCESS

          });//CIERRE DEL AJAX
          }///CIERRE DEL ELSE
        });//CIERRE DEL KEYUP


 }else if (extraer=="rango") {

    $('#div-cantidad').hide();
    $('#div-btn-generar').hide();
    $('#bs-cantidad').val('');
    $('#div-fechas').show();
    $('#agrega-registros').html('');


  }else if(extraer=="activo"){
    $('#div-btn-generar').hide();
    $('#agrega-registros').html('');
    $('#div-cantidad').hide();
    $('#div-fechas').hide();
    $('#bs-cantidad').val('');
    // $('#bs-desde').val('');
    // $('#bs-hasta').val('');

      var estado=$('#cbx_busqueda_empleados').val();
  // alert(estado);
      var parametros={
          estado:estado
        };

          $.ajax({
          type:'POST',
          url:'reportes/busquedas/buscar_empleado_activo.php',
          data:parametros,
          success: function(datos){
            // alert(datos);
            $('#div-btn-generar').show();
            $('#agrega-registros').html(datos);


          }///CIERRE ULTIMO SUCCESS
        });///CIERRE ULTIMO AJAX
    // });//CIERRE FUNCION CHANGE HASTA
  }else if(extraer=="inactivo"){
    $('#div-btn-generar').hide();
    $('#agrega-registros').html('');
    $('#div-cantidad').hide();
    $('#div-fechas').hide();
    $('#bs-cantidad').val('');
    // $('#bs-desde').val('');
    // $('#bs-hasta').val('');

      var estado=$('#cbx_busqueda_empleados').val();
  // alert(estado);
      var parametros={
          estado:estado
        };

          $.ajax({
          type:'POST',
          url:'reportes/busquedas/buscar_empleado_inactivo.php',
          data:parametros,
          success: function(datos){
            // alert(datos);
            $('#div-btn-generar').show();
            $('#agrega-registros').html(datos);


          }///CIERRE ULTIMO SUCCESS
        });
  }//CIERRE DEL IF EXTRAER
}); //CIERRE DE LA FUNCION

////FIN BUSQUEDA POR EMPLEADOS/////////

//////BUSQUEDA REPORTE POR FECHAS//////////////////////////////////////////
$('#btn_buscar_solicitudes_fecha').click(function(){

  var extraer=$('#cbx_busqueda').val();

   if (extraer=="rango") {
   var desde=$('#bs-desde').val();
   var hasta=$('#bs-hasta').val();
   $('#div-anio').hide();
   $('#div-btn-generar').hide();
   $('#bs-anio').val('');
   $('#div-fechas').show();
   $('#agrega-registros').html('');

     if (desde=="" || hasta =="") {
       $('#div-btn-generar').hide();
       $('#agrega-registros').html('');
     //  alert(398765);

     }else {
         var parametros={
             desde:desde,
             hasta:hasta
           };

             $.ajax({
             type:'POST',
             url:'reportes/busquedas/buscar_rango_fechas.php',
             data:parametros,
             success: function(datos){
               // alert(datos);
               $('#div-btn-generar').show();
               $('#agrega-registros').html(datos);


             }
             });



           }///CIERRE ELSE DENTRO DEL ELSE IF
         }
 });


$('#cbx_busqueda').change(function(){
  // alert(234567);
  var extraer=$('#cbx_busqueda').val();


  if (extraer=="anio") {
    $('#div-fechas').hide();
    $('#div-anio').show();
    $('#agrega-registros').html('');
    $('#div-btn-generar').hide();
    // $('#bs-desde').val('');


    $('#bs-anio').keyup(function(){

      var anio=$('#bs-anio').val();

      if (anio.length < 4) {
        $('#div-btn-generar').hide();
        $('#agrega-registros').html('');
        // alert(398765);

      }else {

        var parametros={
            anio:anio
          };

            $.ajax({
            type:'POST',
            url:'reportes/busquedas/buscar_por_anio.php',

              data:parametros,
              success: function(datos){
                // alert(datos);
                $('#div-btn-generar').show();
                $('#agrega-registros').html(datos);


            }//CIERRE DEL SUCCESS

          });//CIERRE DEL AJAX
          }///CIERRE DEL ELSE
        });//CIERRE DEL KEYUP


 }else if (extraer=="rango") {

    $('#div-anio').hide();
    $('#div-btn-generar').hide();
    $('#bs-anio').val('');
    $('#div-fechas').show();
    $('#agrega-registros').html('');


  }
}); //CIERRE DE LA FUNCION

////FIN BUSQUEDA POR FECHAS/////////


////////////////FUNCION PARA GENERAR REPORTE DE SOLICITUDES POR AÑO////
function fn_generar_reporte_soli(){
  var nombre_reporte = $('#nombre_reporte').val();
  var extraer=$('#cbx_busqueda').val();
  // alert(nombre_reporte);

  if (extraer=="anio") {
    var anio=$('#bs-anio').val();
    window.open('reportes/Generar_pdf/pdf_reporte_por_anio.php?nombre_reporte='+nombre_reporte+'&anio='+anio);

  }else if(extraer=="rango"){
    // alert(1232);
    var desde=$('#bs-desde').val();
    var hasta=$('#bs-hasta').val();
    window.open('reportes/Generar_pdf/pdf_reporte_giras_rango.php?nombre_reporte='+nombre_reporte+'&desde='+desde+'&hasta='+hasta);

  }
}

//////FIN GENERAR REPORTE SOLICITUD POR AÑO//////

//////BUSQUEDA REPORTE POR DEPENDENCIA////
$('#cbx_busqueda_dependencia').change(function(){
  // alert(234567);
  var extraer=$('#cbx_busqueda_dependencia').val();
  if (extraer=="default") {
    $('#div-dependencia').hide();
    $('#agrega-registros').html('');
    $('#div-btn-generar').hide();
    $('#btn_buscar_dependencia').hide();

 }else{
   $('#div-dependencia').show();
   $('#bs-dependencia').val('default');
   $('#agrega-registros').html('');
   $('#div-btn-generar').hide();

 }
}); //CIERRE DE LA FUNCION

$('#bs-dependencia').change(function(){
  $('#agrega-registros').html('');
  $('#div-btn-generar').hide();

  var dependencia=$('#bs-dependencia').val();
  if (dependencia=="default") {
    $('#btn_buscar_dependencia').hide();

 }else{
   $('#btn_buscar_dependencia').show();
 }
}); //CIERRE DE LA FUNCION


$('#btn_buscar_dependencia').click(function(){
  var filtro=$('#cbx_busqueda_dependencia').val();
  var depen=$('#bs-dependencia').val();

if(filtro=="" || depen==""){
  $('#div-btn-generar').hide();
  $('#agrega-registros').html('');

}else{
  if(filtro=="giras_dep"){


  var parametros={
      filtro:filtro,
      depen:depen
        };

      $.ajax({
      type:'POST',
      url:'reportes/busquedas/buscar_dependencia.php',

        data:parametros,
        success: function(datos){
          // alert(datos);
          $('#div-btn-generar').show();
          $('#agrega-registros').html(datos);


      }//CIERRE DEL SUCCESS

    });//CIERRE DEL AJAX
  } else if(filtro=="giras_can"){
    var parametros={
        filtro:filtro,
        depen:depen
          };

        $.ajax({
        type:'POST',
        url:'reportes/busquedas/buscar_dependencia_can.php',

          data:parametros,
          success: function(datos){
            // alert(datos);
            $('#div-btn-generar').show();
            $('#agrega-registros').html(datos);


        }//CIERRE DEL SUCCESS

      });//CIERRE DEL AJAX
    }
  }


}); //CIERRE DE LA FUNCION



////FIN BUSQUEDA POR DEPENDENCIA/////////




















function fn_generar_reporte(){
  var nombre_reporte = $('#nombre_reporte').val();
  var extraer=$('#cbx_busqueda_empleados').val();

  if (extraer=="ult_reg") {
    var cantidad=$('#bs-cantidad').val();
    window.open('reportes/Generar_pdf/pdf_reporte_empleados.php?nombre_reporte='+nombre_reporte+'&cantidad='+cantidad);

  }else if(extraer=="rango"){
    // alert(1232);
    var desde=$('#bs-desde').val();
    var hasta=$('#bs-hasta').val();
    window.open('reportes/Generar_pdf/pdf_reporte_empleados_rango.php?nombre_reporte='+nombre_reporte+'&desde='+desde+'&hasta='+hasta);

  }else if(extraer=="activo"){
    var estado=$('#cbx_busqueda_empleados').val();
    window.open('reportes/Generar_pdf/pdf_reporte_empleado_activo.php?nombre_reporte='+nombre_reporte+'&estado='+estado);

  }else if(extraer=="inactivo"){
    var estado=$('#cbx_busqueda_empleados').val();
    window.open('reportes/Generar_pdf/pdf_reporte_empleados_inactivos.php?nombre_reporte='+nombre_reporte+'&estado='+estado);

  }



// alert(nombre_reporte);
}


function fn_generar_reporte_dependencia(){
  var nombre_reporte = $('#nombre_reporte').val();
  var extraer=$('#cbx_busqueda_dependencia').val();

  if (extraer=="giras_dep") {
    var dependencia=$('#bs-dependencia').val();
    window.open('reportes/Generar_pdf/pdf_reporte_dependencia_aprobadas.php?nombre_reporte='+nombre_reporte+'&dependencia='+dependencia);

  }else if(extraer=="giras_can"){
    // alert(1232);
    var dependencia=$('#bs-dependencia').val();
    window.open('reportes/Generar_pdf/pdf_reporte_dependencia_canceladas.php?nombre_reporte='+nombre_reporte+'&dependencia='+dependencia);

  }



// alert(nombre_reporte);
}




//////////////////////////////////////////////////////////////////////////////////////////////////////////7
/////////////7      FUNCIONES PARA REPORTE DE VEHICULOS                 ////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
$('#btn_buscar_fechas_vehiculo').click(function(){

  var extraer=$('#cbx_busqueda_vehiculo').val();

   if (extraer=="rango") {
   var desde=$('#bs-desde').val();
   var hasta=$('#bs-hasta').val();
   $('#div-cantidad').hide();
   $('#div-kilometraje').hide();
   $('#div-btn-generar').hide();
   $('#bs-cantidad').val('');
   $('#bs-kilometraje').val('');
   $('#div-fechas').show();
   $('#agrega-registros').html('');

     if (desde=="" || hasta =="") {
       $('#div-btn-generar').hide();
       $('#agrega-registros').html('');
     //  alert(398765);

     }else {
         var parametros={
             desde:desde,
             hasta:hasta
           };

             $.ajax({
             type:'POST',
             url:'reportes/busquedas/buscar_vehiculo_rango.php',
             data:parametros,
             success: function(datos){
               // alert(datos);
               $('#div-btn-generar').show();
               $('#agrega-registros').html(datos);


             }
             });



           }///CIERRE ELSE DENTRO DEL ELSE IF
         }
 });


$('#cbx_busqueda_vehiculo').change(function(){
  // alert(234567);
  var extraer=$('#cbx_busqueda_vehiculo').val();


  if (extraer=="ult_reg") {
    $('#div-fechas').hide();
    $('#div-cantidad').show();
    $('#agrega-registros').html('');
    $('#div-btn-generar').hide();
    $('#div-kilometraje').hide();
    $('#bs-kilometraje').val('');
// $('#bs-desde').val('');


    $('#bs-cantidad').keyup(function(){

      var cantidad=$('#bs-cantidad').val();

      if (cantidad==0) {
        $('#div-btn-generar').hide();
        $('#agrega-registros').html('');
        // alert(398765);

      }else {

        var parametros={
            cantidad:cantidad
          };

            $.ajax({
            type:'POST',
            url:'reportes/busquedas/buscar_ultimos_vehiculos.php',

              data:parametros,
              success: function(datos){
                // alert(datos);
                $('#div-btn-generar').show();
                $('#agrega-registros').html(datos);


            }//CIERRE DEL SUCCESS

          });//CIERRE DEL AJAX
          }///CIERRE DEL ELSE
        });//CIERRE DEL KEYUP


 }else if (extraer=="rango") {

    $('#div-cantidad').hide();
    $('#div-btn-generar').hide();
    $('#bs-cantidad').val('');
    $('#div-fechas').show();
    $('#agrega-registros').html('');
    $('#div-kilometraje').hide();
    $('#bs-kilometraje').val('');


  }else if(extraer=="veh_utulizado"){
    $('#div-fechas').hide();
    $('#div-cantidad').hide();
    $('#agrega-registros').html('');
    $('#div-btn-generar').hide();
    $('#div-kilometraje').show();
    $('#bs-cantidad').val('');
    // $('#bs-desde').val('');


    $('#bs-kilometraje').keyup(function(){

      var kilometraje=$('#bs-kilometraje').val();
// alert(kilometraje);
      if (kilometraje==0) {
        $('#div-btn-generar').hide();
        $('#agrega-registros').html('');
        // alert(398765);

      }else {

        var parametros={
            kilometraje:kilometraje
          };

            $.ajax({
            type:'POST',
            url:'reportes/busquedas/buscar_kilometraje.php',

              data:parametros,
              success: function(datos){
                // alert(datos);
                $('#div-btn-generar').show();
                $('#agrega-registros').html(datos);


            }//CIERRE DEL SUCCESS

          });//CIERRE DEL AJAX
          }///CIERRE DEL ELSE
        });//CIERRE DEL KEYUP
  }//CIERRE DEL IF EXTRAER
}); //CIERRE DE LA FUNCION

////FIN BUSQUEDA POR EMPLEADOS/////////




function fn_generar_reporte_vehiculo(){
  var nombre_reporte = $('#nombre_reporte').val(); //no se toca//
  var extraer=$('#cbx_busqueda_vehiculo').val();

  if (extraer=="ult_reg") {  //no se toca//
    var cantidad=$('#bs-cantidad').val();
    window.open('reportes/Generar_pdf/pdf_reporte_vehiculos.php?nombre_reporte='+nombre_reporte+'&cantidad='+cantidad);

  }else if(extraer=="veh_utulizado"){
    // alert(1232);
    var kilometraje=$('#bs-kilometraje').val();
    window.open('reportes/Generar_pdf/pdf_reporte_vehiculos_kilometraje.php?nombre_reporte='+nombre_reporte+'&kilometraje='+kilometraje);

  }else if(extraer=="rango"){
    // alert(1232);
    var desde=$('#bs-desde').val();
    var hasta=$('#bs-hasta').val();
    window.open('reportes/Generar_pdf/pdf_reporte_vehiculos_rango.php?nombre_reporte='+nombre_reporte+'&desde='+desde+'&hasta='+hasta);

  }



// alert(nombre_reporte);
}



























////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////             FUNCIONES PARA REPORTES DE GIRAS POR MES Y POR AÑO        ////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-------------->>>>>       funciones para mostrar u ocultar el boton y la tabla
$('#rs_por_mes').change(function(){
  var cambio=$('#rs_por_mes').val();
  if (cambio!="") {
    $('#boton').show();

    var parametros={
        hacer:'buscar_por_mes',
        cambio:cambio
      };

		$.ajax({
		type:'POST',
		url:'reportes/buscar_por_mes.php',
		data:parametros,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}

  });
  }else {
    $('#boton').hide();
    $('#agrega-registros').html('');

  }
});

$('#rs_por_año').keyup(function(){
  var cambio_anio=$('#rs_por_año').val();
  // alert(cambio_anio);
  if (cambio_anio!="" && cambio_anio.length>3) {
    $('#boton').show();
    var parametros={
        cambio_anio:cambio_anio
      };

		$.ajax({
		type:'POST',
		url:'reportes/buscar_por_anno.php',
		data:parametros,
    		success: function(datos){
    			$('#agrega-registros').html(datos);
        }
    });
  }else {
    $('#boton').hide();
    $('#agrega-registros').html('');

  }
});


//-------------------------->>>>>>>>>>>>    FUNCION PARA MOSTRAR pdf
function fn_reporte_solicitudes(){
  var cambio_anio=$('#rs_por_año').val();
  var cambio_mes=$('#rs_por_mes').val();
  if (cambio_anio!="") {
	window.open('reportes/pdf_solicitudes_anio.php?cambio_anio='+cambio_anio+'&nombre_reporte=Solicitudes de Viaticos por Año');
}else if (cambio_mes!="") {
    window.open('reportes/pdf_solicitudes_mes.php?cambio_mes='+cambio_mes+'&nombre_reporte=Solicitudes de Viaticos por Mes');
  }
}



////////////////////////#####################Reporte Giras MAs#############///////////////////

// $('#cbx_busqueda_dependencia').keyup(function(){
//   var buscar_dependencia=$('#cbx_busqueda_dependencia').val();
//    //alert(buscar_dependencia);
//   if (buscar_dependencia!="" && buscar_dependencia.length>3) {
//     //$('#tabla_central').hidden();
//
//     var parametros={
//         buscar_dependencia:buscar_dependencia
//       };
//
// 		$.ajax({
// 		type:'POST',
// 		url:'reportes/buscar_dependencia.php',
// 		data:parametros,
//     		success: function(datos){
//     			$('#agrega-registros').html(datos);
//         }
//     });
//   }
// });




//-------------------------->>>>>>>>>>>>    FUNCION PARA MOSTRAR pdf
// function fn_reporte_gira_mas(){
//   var dependencia=$('#rs_dependencia').val();
//   if (dependencia!="") {
// 	window.open('reportes/pdf_reporte_gira_mas_por_depen.php?dependencia='+dependencia+'&nombre_reporte=Reporte de Empleados que mas salio de Gira por Dependencia');
// }else{
//   window.open('reportes/pdf_reporte_emp_gira_mas.php?dependencia='+dependencia+'&nombre_reporte=Reporte de Empleados que Salen mas de Gira');
//              //reportes/pdf_reporte_emp_gira_mas.php?dependencia=&nombre_reporte=Reporte%20de%20Empleados%20que%20Salen%20mas%20de%20Gira
//   }
// }




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////             FUNCIONES PARA REPORTES DE VEHICULO        ////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// function fn_reporte_vehiculos(){
// var nombre_reporte = $('#nombre_reporte').val();
// // alert(nombre_reporte);
//     window.open('reportes/pdf_reporte_vehiculos.php?nombre_reporte='+nombre_reporte);
// }





////////////////////////////////////////////////////////////////////////////////////////////////////77777777
/////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////// Reporte Giras Pr departamento////////////////////////////////////////////////

// $('#dependencia').change(function(){
//   var dependencia=$('#dependencia').val();
//   var estado=$('#estado').val();
//   var desde=$('#desde').val();
//   var hasta=$('#hasta').val();
//   // alert(dependencia+hasta);
//
//   var parametros={
//       dependencia:dependencia,
//       estado:estado,
//       desde:desde,
//       hasta:hasta
//     };
//
//
// // alert(dependencia);
//
//   $.ajax({
//   type:'POST',
//   url:'reportes/buscar_gira_depto.php',
//   data:parametros,
//       success: function(datos){
//         $('#agrega-registros').html(datos);
//       }
//   });
// });
//
//
// $('#estado').change(function(){
//   var dependencia=$('#dependencia').val();
//   var estado=$('#estado').val();
//   var desde=$('#desde').val();
//   var hasta=$('#hasta').val();
//   // alert(dependencia+hasta);
//
//   var parametros={
//       dependencia:dependencia,
//       estado:estado,
//       desde:desde,
//       hasta:hasta
//     };
//
//
// // alert(dependencia);
//
//   $.ajax({
//   type:'POST',
//   url:'reportes/buscar_gira_depto.php',
//   data:parametros,
//       success: function(datos){
//         $('#agrega-registros').html(datos);
//       }
//   });
// });
//
// $('#desde').change(function(){
//   var dependencia=$('#dependencia').val();
//   var estado=$('#estado').val();
//   var desde=$('#desde').val();
//   var hasta=$('#hasta').val();
//   // alert(dependencia+hasta);
//
//   var parametros={
//       dependencia:dependencia,
//       estado:estado,
//       desde:desde,
//       hasta:hasta
//     };
//
//
// // alert(dependencia);
//
//   $.ajax({
//   type:'POST',
//   url:'reportes/buscar_gira_depto.php',
//   data:parametros,
//       success: function(datos){
//         $('#agrega-registros').html(datos);
//       }
//   });
// });
//
//
// $('#hasta').change(function(){
//   var dependencia=$('#dependencia').val();
//   var estado=$('#estado').val();
//   var desde=$('#desde').val();
//   var hasta=$('#hasta').val();
//   // alert(dependencia+hasta);
//
//   var parametros={
//       dependencia:dependencia,
//       estado:estado,
//       desde:desde,
//       hasta:hasta
//     };
//
//
// // alert(dependencia);
//
//   $.ajax({
//   type:'POST',
//   url:'reportes/buscar_gira_depto.php',
//   data:parametros,
//       success: function(datos){
//         $('#agrega-registros').html(datos);
//       }
//   });
// });


//-------------------------->>>>>>>>>>>>    FUNCION PARA MOSTRAR pdf
// function fn_generar_reporte_depto(){
// var nombre_reporte = $('#nombre_reporte').val();
// // alert(nombre_reporte);
//     window.open('reportes/p_reportes.php?nombre_reporte='+nombre_reporte);
// }
//



// function fn_generar_reporte_depto(){
//   var dependencia=$('#dependencia').val();
//   var estado=$('#estado').val();
//   var desde=$('#desde').val();
//   var hasta=$('#hasta').val();
//   if (dependencia!="" , estado!="" , desde!="" , hasta!="") {
// 	window.open('reportes/pdf_reporte_giras_depto.php?dependencia='+dependencia+'&nombre_reporte=Reporte de Giras Por Departamento'+'&desde='+desde+'&estado='+estado+'&hasta='+hasta);
// }else {
// }
// }

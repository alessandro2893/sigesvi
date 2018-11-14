function fn_edita_usuario(tipo_us,usuario_estado){
  var parametros = {hacer : 'actualizar_us',
  correo : $('#edit_correo_usuario').val(),
  nombre_usuario : $('#input_edit_usuario').val().toUpperCase(),
  f_vencimiento: $('#f_vencimiento_edit').val(),
  usuario_estado: usuario_estado,
  tipo_us: tipo_us
  };
  // alert(tipo_us);
//alert(parametros.correo+parametros.nombre_usuario+parametros.f_vencimiento+parametros.usuario_estado+parametros.tipo_us);
if ( (parametros.correo!="") ||  (parametros.nombre_usumsg_cambio_estadoario!="") || (parametros.f_vencimiento!="")) {
  $.ajax({
  data:  parametros,
  url:   'usuarios/p_usuario.php',
  type:  'post',
  //  beforeSend: function () {
  //          $("#resultado").html('</br><b><center>PROCESANDO PETICION, POR FAVOR ESPERE...</center></b></br><center><img alt="" src="http://localhost/sistema_anapo/images/input-spinner.gif"></center></br>');
  //  },
  success:  function (response) {
          $("#msg_cambio_estado").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
          if (response.ingreso=='si') {
            setTimeout(function() {
            $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");
            $('#m_olvido').removeClass('style','display: nome;');
              $('.modal').removeClass('show');
                 $.get('usuarios/usuarios_tabs.php').done(function(htmlexterno){
                     $("#contenedor_principal").html(htmlexterno);
                   });
               // $("#contenedor_principal").load('assets/php/emp_usuarios_roles/usuarios_tabs.php',{m_u:'si'});
            },1200)
          }
      }
  });
}else {
  $("#msg_cambio_estado").html('<div class="alert alert-danger alert-dismissible" role="alert"><center><strong>Error en correo o tipo de usuario</strong></center></div>');
}

}


function fn_inserta_usuario(tipo_us){
  var parametros = {hacer : 'crear_usuario',
  id_personal : $('#fk_personal').val(),
  correo : $('#input_correo_usuario').val(),
  pass_temporal : $('#pass_usuario').val(),
  nombre_usuario : $('#input_n_usuario').val().toUpperCase(),
  f_vencimiento: $('#f_vencimiento').val(),
  tipo_us: tipo_us
  };
  // alert('rol '+tipo_us+ ' id_personal '+parametros.id_personal+ ' correo '+ parametros.correo+ ' contraseña '
  // +parametros.pass_temporal+ ' nombre_usuario '+ parametros.nombre_usuario+ ' f_vencimiento '+parametros.f_vencimiento);
  if ( (tipo_us=='default') || (parametros.id_personal=="") || (parametros.correo=="") || (parametros.pass_temporal=="") || (parametros.nombre_usuario=="") || (parametros.f_vencimiento=="")) {
        $("#resultado_usuario").html('<div class="alert alert-danger alert-dismissible" role="alert"><center><strong>Complete todo los campos</strong></center></div>');
        setTimeout(function() {
            $("#resultado_usuario").html('');
        },2000)
  }else {
    $.ajax({
    data:  parametros,
    url:   'usuarios/p_usuario.php',
    type:  'post',
    //  beforeSend: function () {
    //          $("#resultado").html('</br><b><center>PROCESANDO PETICION, POR FAVOR ESPERE...</center></b></br><center><img alt="" src="http://localhost/sistema_anapo/images/input-spinner.gif"></center></br>');
    //  },
    success:  function (response) {
      $("#resultado_usuario").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
            if (response.ingreso=='si') {
              setTimeout(function() {
                   $.get('usuarios/usuarios_tabs.php').done(function(htmlexterno){
                       $("#contenedor_principal").html(htmlexterno);
                     });
                 // $("#contenedor_principal").load('assets/php/emp_usuarios_roles/usuarios_tabs.php',{m_u:'si'});
              },1200)
            }
        }
    });
  }

}








 $('#input_n_usuario').keyup(function(event) {
  // alert (1);
  var user_name= $('#input_n_usuario').val();
          if (user_name.length > 4) {
            var valores = {hacer: 'buscar_usuario',
                            user_name: user_name,
                          accion: 'insertar'};//stop y pasa al archivo php
                  $.ajax({
                            data:  valores,
                            url:   'usuarios/p_usuario.php',
                            type:  'post',
                  success:  function (respuesta) {
                    $("#resultado_usuario").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+'</strong></center></div>');
                    if (respuesta.ingreso=='si') {
                      setTimeout(function() {
                        $("#resultado_usuario").html('');
                      },1200)

                      $('#input_correo_usuario').attr("disabled", false);
                      $('#roles').attr("disabled", false);
                      $('#f_vencimiento').attr("disabled", false);
                      $('#pass_usuario').attr("disabled", false);
                      $('#crear_usuario').attr("disabled", false);
                      $('#f_vencimiento').attr("disabled", false);
                      $('#pass_usuario').attr("disabled", false);
                    }else {
                      $('#input_correo_usuario').attr("disabled", true);
                      $('#input_correo_usuario').val("");
                      $('#f_vencimiento').attr("disabled", true);
                      $('#f_vencimiento').val("");
                      $('#pass_usuario').attr("disabled", true);
                      $('#pass_usuario').val("");

                      $('#roles').val("ASIGNE ROL");
                      $('#roles').attr("disabled", true);
                      $('#crear_usuario').attr("disabled", true);

                    }
                  }
                });
          }else if (user_name.length < 4)
           {
            $('#input_correo_usuario').attr("disabled", true);
            $('#input_correo_usuario').val("");
            $('#roles').attr("disabled", true);
            $('#roles').val("ASIGNE ROL");
            $('#f_vencimiento').attr("disabled", true);
            $('#f_vencimiento').val("");
            $('#pass_usuario').attr("disabled", true);

            $('#btn_crear_us').attr("disabled", true);
          }
});


$('#input_id_usuario').keyup(function(event) {
  //alert (1);
  var identidad= $('#input_id_usuario').val();
          if (identidad.length == 15) {
            var valores = {hacer: 'buscar_identidad',
                            identidad: identidad,
                          accion: 'insertar'};
                  $.ajax({
                            data:  valores,
                            url:   'usuarios/p_usuario.php',
                            type:  'post',
                  success:  function (respuesta) {
                    $("#resultado_usuario").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+'</strong></center></div>');
                    setTimeout(function() {
                      $("#resultado_usuario").html('');
                    },2500)
                    if (respuesta.ingreso=='si') {
                      $("#fk_personal").val(respuesta.id_empleado);
                      $('#input_n_usuario').attr("disabled", false);

                    }else {

                      $('#input_n_usuario').attr("disabled", true);
                      $('#input_n_usuario').val("");
                      $('#input_correo_usuario').attr("disabled", true);
                      $('#input_correo_usuario').val("");
                      $('#roles').attr("disabled", true);
                      $('#roles').val("ASIGNE ROL");
                      $('#f_vencimiento').attr("disabled", true);
                      $('#f_vencimiento').val("");
                      $('#pass_usuario').attr("disabled", true);
                      $('#btn_crear_us').attr("disabled", true);
                    }
                  }
                });
          }else {
            //alert('Borrar');
            $('#input_n_usuario').attr("disabled", true);
            $('#input_n_usuario').val("");
            $('#input_correo_usuario').attr("disabled", true);
            $('#input_correo_usuario').val("");
            $('#roles').attr("disabled", true);
            $('#btn_crear_us').attr("disabled", true);
            $('#roles').val("ASIGNE ROL");
            $('#f_vencimiento').attr("disabled", true);
            $('#f_vencimiento').val("");
            $('#pass_usuario').attr("disabled", true);


          }
});


$(".enviar_actualizar").click(function(){
  //alert('asas');
  $('tr.success').removeClass('success');
  var correo = $(this).attr('correo');
  var usuario = $(this).attr('nombre');
  var estado = $(this).attr('estado');
  var f_vencimiento = $(this).attr('fvencimiento');
  var tipo_us = $(this).attr('tipous');
  // alert(tipo_us);
  // LEVANTAR MODAL
  //$("#cargar_modal_edit").load("usuarios/modal_edit_estado.php",{usuario:usuario,estado:estado});

  $.post("usuarios/modal_edit_estado.php",{usuario:usuario,estado:estado,correo:correo,f_vencimiento:f_vencimiento,tipo_us:tipo_us}).done(function(htmlexterno){
      $("#cargar_modal_edit").html(htmlexterno);
      $('#roles').val(tipo_us);
    });
    $('#select_estado_us').val('B').prop('selected', true);
});




////////////////////////////7         RESETEAR CONTRASEÑA DE USUARIO          ////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(".reset_usuario").click(function(){
  //alert('asas');
  // $('tr.success').removeClass('success');
   var id = $(this).attr('value');
   var usuario = $(this).attr('uar');
   var parametros= {
   usuario:usuario};
  // var  nombre_usuario = $('#cholo').val();
  // var usuario = $(nombre_usuario).text();

   //alert(parametros.usuario);


   swal({
       title: "¿SEGURO QUE DESEA RESETEAR LA CONTRASEÑA?",
       text: "Se va resetear la contraseña del usuario!",
       type: "warning",
       showCancelButton: true,
        confirmButtonColor: "#55C836",
        cancelButtonColor: "#FF0F00",
        confirmButtonText: "SI",
        cancelButtonText: "NO",
        closeOnConfirm: false,
        closeOnCancel: false
     },
     function(isConfirm){
       if (isConfirm) {
         //alert('entro al isConfirm');
         swal("CONTRASEÑA RESETEADA EXITOSAMENTE", "Presione Ok para continuar", "success");
         $.ajax({
         data:  parametros,
         url:   'usuarios/reset_usuario.php',
         type:  'post',

       });//CIERRE DEL AJAX

       } else {
         swal("Aviso", "Presione 'OK' para cerrar ventana", "info");
       }
     });

});


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////            FUNCIONES ROLES                   /  ////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////ver roles //////////////////////
$(".ver_roles").click(function(){
  //las siguientes 4 lineas de codigo son para activar o desactivar el success de cada fila de la tabla
     $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    var nombre_tipo_rol = "#tipo_rol"+id;
    var tipo_rol = $(nombre_tipo_rol).text();

    // alert( tipo_rol);
   $("#cargar_modal_ver_roles").load("usuarios/modal_ver_roles.php",{id:id, tipo_rol:tipo_rol});
});



///////            BUSCAR ROL Y HALAR SUS ACCESOS A PANTALLAS CON SUS RESPECTIVOS PERMISOS      ///////////////////////////7
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$('#input_rol').keyup(function(){
  $("#rol_existe").html('');


  var rol= $('#input_rol').val();
  //  alert(rol);

if (rol.length>3) {
  var valores = {hacer: 'buscar_rol',
                  rol:rol
                };
        $.ajax({
                 data:  valores,
                 url:   'usuarios/p_usuario.php',
                 type:  'post',

              success:  function (respuesta) {

                    if (respuesta.existe=='si') {
                      $("#rol_existe").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+'</strong></center></div>');

                      $("#div_tablaR").show();
                      $("#form_ingresar_rol").show();
                      $("#div_botton_grol").hide();
                      $("#guardar_rol").attr('disabled', true);

// alert(respuesta.id_rol);
                      $.post('usuarios/roles_buscar.php',{rol:respuesta.rol, id_rol:respuesta.id_rol}).done(function(htmlexterno){
                        $("#form_ingresar_rol").html(htmlexterno);
                       });

                       $.post('usuarios/tabla_roles.php',{rol:respuesta.rol, id_rol:respuesta.id_rol}).done(function(htmlexterno){
                         $("#tabla_roles").html(htmlexterno);
                        });
                      setTimeout(function() {
                            $("#rol_existe").html('');
                        },2100 );





                    }else if (respuesta.existe=='no') {
                      $("#div_tablaR").hide();
                      $("#form_ingresar_rol").hide();

                      // alert(respuesta.id_rol);
                      $("#div_botton_grol").show();
                      $("#guardar_rol").attr('disabled', false);

                      // $("#rol_existe").html('<div class="alert '+respuesta.color_alerta+' alert-dismissible" role="alert"><center><strong>'+respuesta.msg+'</strong></center></div>');
                      //   setTimeout(function() {
                      //     $('#rol_existe').html('');
                      //   },2000);
                    }
                }//cierre del success
          });//cierre del ajax
      }//cierre del if mayor que 6
      else if (rol.length<4) {
        // alert(65);

        $("#div_tablaR").hide();
        $("#div_botton_gobjeto").hide();
        $("#div_botton_grol").hide();
        $("#guardar_rol").attr('disabled', false);
      }
});



/////////////////               GUARDAR SOLO LOS ROLES         ////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7


function fn_ingrese_rol(input_rol){
  var parametros = {hacer : 'guardar_rol',
  rol:input_rol
  };

   if ( parametros.rol!="") {
     //alert(input_rol);
     $.ajax({
     data:  parametros,
     url:   'usuarios/p_usuario.php',
     type:  'post',


     success:  function (response) {

             $("#rol_existe").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
             if (response.ingreso=='si') {
               //alert(123);
               setTimeout(function() {

                 $("#form_ingresar_rol").show();
                 $("#div_botton_grol").hide();
                 $("#guardar_rol").attr('disabled', false);
                //  $("#div_tablaR").show();
                 $("#div_botton_gobjeto").show();

                 $("#rol_existe").html('');
                 $.post('usuarios/roles_buscar.php',{rol:response.rol}).done(function(htmlexterno){
                   $("#form_ingresar_rol").html(htmlexterno);
                  });

                  // alert(response.rol);

                //  $.post('usuarios/tabla_roles.php',{id_rol:parametros.id_robj,rol:parametros.rol}).done(function(htmlexterno){
                //    $("#tabla_roles").html(htmlexterno);
                //   });

               },2000)
             }else if(response.ingreso=='no'){
               $("#rol_existe").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
             }
         }//cierre del success function
     });
   }else {
     $("#rol_existe").html('<div class="alert alert-danger alert-dismissible" role="alert"><center><strong>COMPLETE TODOS LOS CAMPOS</strong></center></div>');
   }//CIERRE DEL IF

}//CIERRE DE LA FUNCION




//////////////////               CARGAR MODAL PARA EDITAR LOS PERMISOS DE LOS ROLES         ////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

$(".editar_roles").click(function(){
// alert('entro a la funcion');
     $('tr.success').removeClass('success');
    var id = $(this).attr('value');
    var nombre_clase = "tr#tr_"+id;
    var nombre_objeto_afectado= "#objeto"+id;
    var rol = $(this).attr('rol');
    var nombre_estado_rolobj= "#estado_rol_obj"+id;

    var objeto_afectado = $(nombre_objeto_afectado).text();
    var estado_objeto = $(nombre_estado_rolobj).text();
// alert(objeto_afectado);
$("#modal-edit_roles").load("usuarios/modal_editar_roles.php",{rol:rol,id:id, objeto_afectado:objeto_afectado,estado_rol_obj:estado_objeto});
});


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////         LLEVAR ROL DE UNA TABLA A LA OTRA              //////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(".llevar_rol").click(function() {
  var id = $(this).attr('value'); // ID USUARIO
  var nombre_rol = "#tipo_rol"+id;
  var rol = $(nombre_rol).text();
  // alert(rol);
  $("#a_ver_roles").removeClass('active');
  $("#a_ingresar_roles").addClass('active');
  $('#li_ver_roles').removeClass('active');
  $("#li_ingresar_roles").addClass('active');
  $('#ver_registros').removeClass('in active');
  $("#ingreso_empleado").addClass('in active');
  $("#input_rol").val(rol).focus().keyup();
});

function fn_actualizar_permisos(permiso_insertar,permiso_consultar, permiso_actualizar, estado,rol, id_robj){
  var parametros = {hacer : 'actualizar_permisos',
  permiso_insertar : permiso_insertar,
  permiso_consultar: permiso_consultar,
  permiso_actualizar: permiso_actualizar,
  estado: estado,
  id_robj: id_robj,
  rol:rol
  };
  //  alert(estado);

   if ( (parametros.permiso_insertar!="") ||  (parametros.permiso_actualizar!="") || (parametros.permiso_consultar!="") || (parametros.estado!="")) {
     $.ajax({
     data:  parametros,
     url:   'usuarios/p_usuario.php',
     type:  'post',
     success:  function (response) {
             $("#msg_permisos").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
             if (response.ingreso=='si') {
               setTimeout(function() {
                 $.post('usuarios/tabla_roles.php',{id_rol:parametros.id_robj,rol:parametros.rol}).done(function(htmlexterno){
                   $("#tabla_roles").html(htmlexterno);
                  });
                 $('body > div.modal-backdrop.fade').removeClass("modal-backdrop fade in");

               },2000)
               $('#input_rol').val(parametros.rol);
             }else if(response.ingreso=='no'){
               $("#msg_permisos").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
             }
         }//cierre del success function
     });
   }else {
     $("#msg_permisos").html('<div class="alert alert-danger alert-dismissible" role="alert"><center><strong>COMPLETE TODOS LOS CAMPOS</strong></center></div>');
   }//CIERRE DEL IF

}//CIERRE DE LA FUNCION


//funcion para insertar permiso
function fn_insertar_rol(id_objeto_fk,rol,permiso_insertar,permiso_consultar, permiso_actualizar){
  if(typeof(permiso_insertar)==="undefined"){permiso_insertar=0;}
  if(typeof(permiso_consultar)==="undefined"){permiso_consultar=0;}
  if(typeof(permiso_actualizar)==="undefined"){permiso_actualizar=0;}
  // alert(permiso_insertar);

if(permiso_insertar!=0 || permiso_consultar!=0 || permiso_actualizar!=0 ){
              var parametros = {hacer : 'insertar_permisos',
              id_objeto_fk: id_objeto_fk,
              rol:rol,
              permiso_insertar : permiso_insertar,
              permiso_consultar: permiso_consultar,
              permiso_actualizar: permiso_actualizar
            };
            $.ajax({
              data:  parametros,
              url:   'usuarios/p_usuario.php',
              type:  'post',


              success:  function (response) {
// alert('despierta msg');
                if (response.ingreso=='si') {
                  $("#respuesta").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
                  // $("#msg_permisos").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
                  $.post('usuarios/tabla_roles.php',{id_rol:parametros.id_robj,rol:parametros.rol}).done(function(htmlexterno){
                    $("#tabla_roles").html(htmlexterno);
                  });
                $('#input_rol').val(parametros.rol).keyup();
                setTimeout(function() {
                $("#respuesta").html('');
                $("#rol_existe").html('');
              },2500)


                }else if(response.ingreso=='no'){
                  $("#respuesta").html('<center><div class="alert '+response.color_alerta+' fade in">'+response.msg+'</div></center>');
                  setTimeout(function() {
                  $("#respuesta").html('');
                  $("#rol_existe").html('');
                },2500)


                }
              }//cierre del success function
            });

      }else {
          $("#rol_existe").html('<div class="alert alert-danger alert-dismissible" role="alert"><center><strong>Seleccione un permiso</strong></center></div>');
          setTimeout(function() {
          $("#rol_existe").html('');
          },2000)

      }//cierre del if permisos
};//CIERRE DE LA FUNCION
//  alert(estado);

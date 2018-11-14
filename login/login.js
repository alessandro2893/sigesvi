

$("#input_recuperacion_pass").keyup(function(){
    // LE PASAMOS EL VALOR DEL INPUT (TEXT)
var v_usuario=$("#input_recuperacion_pass").val().toUpperCase();
 //alert(v_usuario);

var valores = {hacer:'comprobar_us',usuario:v_usuario};

      $.ajax({
          data:  valores,
          url:   'p_us_preguntas.php',
          type:  'post',
// DE AQUI EN ADELANTE SIGUE
          success:  function (respuesta) {
        ;
              if (respuesta.existe=='si') {
              //alert('si existe');
              //$("#id_usuario_rec").val(respuesta.id_usuario);
              //alert(respuesta.correo);
              $("#correo_usuario").val(respuesta.correo);
              $("#id_usuario").val(respuesta.id_usuario);
              $("#btn_correo").attr('disabled', false);
              $("#btn_preguntas").attr('disabled', false);
            } else if (respuesta.existe=='no') {
              //$("#muestra_por_correo").hide();
              $("#correo_usuario").val('no');
              $("#id_usuario").val('');
              $("#btn_correo").attr('disabled', true);
              $("#btn_preguntas").attr('disabled', true);
            }
          }
        });
});

//##########################################################################
//            ENVIA CONTRASEÑA A CORREO
$("#btn_correo").click(function(){
  //alert(1);
  //alert($("#correo_usuario").val());
  if ($("#correo_usuario").val()!="no") {
    var correo = $("#correo_usuario").val();
    var id_usuario = $("#id_usuario").val();
    var v_usuario = $("#input_recuperacion_pass").val().toUpperCase();
  //alert(v_usuario);
    var valores = {hacer:"enviar_pass_correo",
                  usuario:v_usuario,
                  id_usuario:id_usuario,
                  correo_electronico:correo};
    $.ajax({
        data:  valores,
        url:   'p_us_preguntas.php',
        type:  'post',
         beforeSend: function () {
           $("#msg_recu_correo").html('<br><div class="alert alert-success alert-dismissible" role="alert"><center><strong>Espere... estamos enviando link a su correo</strong></center></div>');
           setTimeout(function() {
              window.location.assign('http://localhost/inhgeomin/login/');
           },4000);
         }
  // DE AQUI EN ADELANTE SIGUE
        // success:  function (respuesta) {
        //     if (respuesta.envio_correo=='si') {
        //     alert('si existe');
        //     $("#btn_correo").attr('disabled', true);
        //     $("#msg_recu_correo").html('<br><div class="alert alert-success alert-dismissible" role="alert"><center><strong>Link enviado, revise su correo.</strong></center></div>');
        //     setTimeout(function() {
        //        window.location.assign('http://localhost/inhgeomin/login/');
        //     },1000);
        //   } else if (respuesta.envio_correo='') {
        //     $("#msg_recu_correo").html('<br><div class="alert alert-success alert-dismissible" role="alert"><center><strong>El link no fue enviado.</strong></center></div>');
        //     $("#correo_usuario").val('');
        //     $("#btn_correo").attr('disabled', true);
        //
        //   }
        // }
      });
  }
});


//##########################################################################



function fn_login(usuario, pass){
  // SE RECIBEN LOS PARAMETROS DEL FORMULARIO DE LOGIN
  //alert(us);
  var parametros = {
          "usuario" : usuario.toUpperCase(), // CODIGO DE EL OBJETO DONDE INSERTA
          "pass" : pass
  };
  if (usuario==="" || pass==="") {
    $('#msg_login').html('<br><center><div class="alert alert-block alert-danger fade in">Usuario/Contraseña Incompleto</div></center>');
    setTimeout(function() {
      $('#msg_login').html('');
      $('#txt_usuario').focus();
     },2000);
  }else {
    $.ajax({
          data:  parametros,
          url:   '../php/procesar_login.php',
          type:  'post',
          beforeSend: function () {

          },
          success:  function (respuesta) {
              $('#msg_login').html('<br><center><div class="alert alert-block '+respuesta.color_alerta+' fade in">'+respuesta.msg+'</div></center>');  //alert(respuesta.msg);
              setTimeout(function() {
                $('#msg_login').html('');
              },1000);
               if (respuesta.redirecciona=='si') {
                 setTimeout(function() {

  // swal({
  //             title: "Bienvenido al Sistema",
  //             text: "",
  //             timer: 2000,
  //             showConfirmButton: false
  //                   });
                   window.location.assign(respuesta.url);
                 },300);
                  //alert(response.msg);
               }
          }
      });

  }
  //alert(parametros.usuario);
}

$('#verpass').change(function(){
  // alert(1);
  if(this.checked == true){
    $("#txt_password1").prop('type','text');
    $("#txt_password2").prop('type','text');
    } else{
      $("#txt_password1").prop('type','password');
      $("#txt_password2").prop('type','password');

    }
});

// var progressHtml = "<div style='margin-rigth: 70px; width:45%  ;' class='progress'></div>";
// $(progressHtml).insertAfter('input[type=password]:last');

// PARA CAMBIAR LA CONTRASEÑA //
function fn_cambio_pass(pass,us){
  // alert(1);
  //alert(us+" - "+pass);
  var caja1=$("#txt_password1").val();
  var caja2=$("#txt_password2").val();
  var tiene_numero= 0;
  var tiene_caracter= 0;
  var tiene_letras = 0;
  var parametros = {
          "usuario" : us, // CODIGO DE EL OBJETO DONDE INSERTA
          "pass" : pass
  };


    if (/\d+/.test(caja1)) {
      // || /[\W]+/.test(caja1) || (/[a-z]/.test(caja1)) && (/[A-Z]/.test(caja1))
      // alert('numeros');
      tiene_numero=1;
    }

    if((/[a-z]/.test(caja1)) && (/[A-Z]/.test(caja1))){
      tiene_letras=1;
      // alert('letras');

    }

    if (/[\W]+/.test(caja1)) {
      tiene_caracter=1;
      // alert('caracteres');

    }


  if(caja1.length<5 || caja2.length<5){
  $('#msg_cambio_pass').html('<br><center><div class="alert alert-block alert-danger fade in">La contraseña debe tener minimo 5 caracteres<span class="glyphicon glyphicon-remove" aria-hidden="true"></span></div></center>');

  setTimeout(function() {
    $('#msg_cambio_pass').html('');
     window.location.assign(respuesta.url);
   },2000);

 } else if(tiene_numero==0 || tiene_caracter==0 || tiene_letras==0){
    $('#msg_cambio_pass').html('<br><center><div class="alert alert-block alert-danger fade in">La contraseña debe incluir minimo una minuscula, mayuscula, numero y caracter especial <span class="glyphicon glyphicon-remove" aria-hidden="true"></span></div></center>');
    setTimeout(function() {
      $('#msg_cambio_pass').html('');
       window.location.assign(respuesta.url);
     },2000);


  }else{

    $.ajax({
          data:  parametros,
          url:   '../php/cambiar_pass.php',
          type:  'post',
          // beforeSend: function () {
          //
          // },
          success:  function (respuesta) {
          //    alert(respuesta);
              if (respuesta['redirecciona']=="si") {
                $("#msg_cambio_pass").html('<br><center><div class="alert '+respuesta['color_alerta']+'">'+respuesta['msg']+'</div></center>');
                setTimeout(function() {
                  $('#msg_cambio_pass').html('');
                   window.location.assign(respuesta.url);
                 },2000);
              }else if (respuesta['redirecciona']=="no") {
                $("#msg_cambio_pass").html('<br><center><div class="alert '+respuesta['color_alerta']+'">'+respuesta['msg']+'</div></center>');
                setTimeout(function() {
                  $('#msg_cambio_pass').html('');

                 },2000);
               }
          }
      });
  }
}




// FUNCIONAN INABILITAN EL BOTON DE CAMBIO DE CONTRASENA DE LA MODAL
//



$('#txt_password1').keyup(function(event) {
    //VALIDAR LA SEGURIDAD DE LA CONTRASEÑA
  //alert('HOLA');
  var pass1 = $("#txt_password1").val()

  var pass2 = $("#txt_password2").val()
  if (pass1==pass2) {
    $("#btn_cambiar_pass").attr('disabled', false);
  }else {
    $("#btn_cambiar_pass").attr('disabled', true);
  }
});


$('#txt_password2').keyup(function(event) {
    //VALIDAR LA SEGURIDAD DE LA CONTRASEÑA
  //alert('HOLA');
  var pass1 = $("#txt_password1").val()
  var pass2 = $("#txt_password2").val()
  if (pass1==pass2) {
    $("#btn_cambiar_pass").attr('disabled', false);
  }else {
    $("#btn_cambiar_pass").attr('disabled', true);
  }
});



// ARRASTRAS EL ID DEL INPUT DE RECUPERAR CONTRACEÑA PARA VALIDAR SI EXISTE EL USUARIO O NO

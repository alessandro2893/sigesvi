<?php
// include('login/expira_secion.php');

session_start();
$hora_actual = time();


if (isset($_SESSION['logeado']) && ($_SESSION['logeado']='si')) {?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina"> -->

    <title>INHGEOMIN</title>
    <!-- <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" /> -->


    <link rel=" ICON" href="assets\img\inhgeomin.png">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/sweetalert.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- <link rel="stylesheet" type="text/css" href="  assets/js/gritter/css/jquery.gritter.css" /> -->
    <link rel="stylesheet" type="text/css" href="  assets/lineicons/style.css">

    <!-- Custom styles for this template -->
    <link href="  assets/css/style.css" rel="stylesheet">
    <link href="  assets/css/style-responsive.css" rel="stylesheet">

  </head>

  <body>
    <input type="hidden" id="hora_login" value="<?=$hora_actual?>">
    <input type="hidden" id="hora_ultimo_movimiento" value="0">
    <input type="hidden" id="modal_activa" value="no">
  <section id="container" >
      <!-- **********************************************************************************************************************************************************-->
      <!--header start-->
    <?php include('assets/includes/header.php'); ?>
      <!--header end-->

      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->

      <aside>
          <?php include('assets/includes/menu.php'); ?>
      </aside>

      <!--sidebar end-->

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->

      <br>
      <br>
 <section id="main-content">

          <section id="contenedor_principal" class="wrapper site-min-height">
            <section id="miSlider" class="carousel slide"> <!--INICIO DEL SLIDER -->
                <div class="carousel-inner">

                <div class="item active">
                <img src="assets/img/varias.jpg" style="width:1000%; height:500%;">
                </div>

                </div>
            </section> <!--CIERRE DEL SLIDER -->
		       </section><!-- wrapper ---->
</section>

      <!--main content end-->
      <!--footer start-->
      <!-- <footer class="site-footer">
          <div class="text-center">
              Copyright © 2017 Sistema de Gestión de Viaticos (SIGESVI)
              <a href="#" class=" go-top">
                  <i class="fa fa-chevron-up"></i>
              </a>
          </div>
      </footer> -->
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->

  </body>
</html>
<script src="  assets/js/jquery.js"></script>
<script src="  assets/js/jquery-1.8.3.min.js"></script>
<script src="  assets/js/bootstrap.min.js"></script>
<script src="  assets/js/jquery.scrollTo.min.js"></script>
<script src="  assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="  assets/js/jquery.sparkline.js"></script>
<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<!-- <script src="assets/js/bootstrap-switch.js"></script> -->
<script src="assets/js/jquery.tagsinput.js"></script>
<!--common script for all pages-->
<script src="  assets/js/common-scripts.js"></script>
<script type="text/javascript" src="  assets/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="  assets/js/gritter-conf.js"></script>

<!--script for this page-->
<script src="  assets/js/sparkline-chart.js"></script>
<script src="  assets/js/chart-master/Chart.js"></script>
<!-- <script src="  assets/js/zabuto_calendar.js"></script> -->
<script src="assets/js/datatables/jquery.dataTables.js"></script>
<script src="assets/js/datatables/DT_bootstrap.js"></script>





<script src="assets/js/validaciones.js"></script>
<script src="assets\js\sweetalert.min.js"></script>
<script src="assets/includes/menu_principal.js"></script>

<?php }else {
  $direccion='Location: http://localhost/inhgeomin/login/';
  header ($direccion);//
}

 ?>
 <script type="text/javascript">
 $(document).ready(function(){
  // $("#raiz_sitio").html('<i class="fa fa-dashboard"></i> Escritorio');
    var hora_login = parseInt($("#hora_login").val());
    var hora_actual = Math.round(new Date().getTime()/1000.0);
    //$("#p").html(hora_actual-(hora_login+10));
    var eval=hora_actual-(hora_login+10);
    // if (eval<10) {
    //     $("#modal").addClass( "modal-backdrop fade in" );
    //     $.get('logDin/modal_sesion_caduco.php').done(function(htmlexterno){
    //       $("#contenedor_principal").html(htmlexterno);
    //      });
    // }else {
    //   $.get('index.php').done(function(htmlexterno){
    //     $("#contenedor_principal").html(htmlexterno);
    //    });
    // }
    });

       $(document).mousemove(function(){
        //var hora_login = $("#hora_login").val();
        var su_ultimo_acceso = $("#hora_ultimo_movimiento").val()
        var hora_actual = Math.round(new Date().getTime()/1000.0);
        var modal_activa = $("#modal_activa").val();
// tenemos 1000 en el if


        if ((hora_actual-su_ultimo_acceso)>1000 && su_ultimo_acceso!=0 && modal_activa=='no') { // PRUEBA DE 10 SEGUNDOS
          var minutos = parseInt((hora_actual-su_ultimo_acceso)/60);

          // alert('Estubo inactivo por '+minutos+' Minutos');
          // TRAER MODAL CON EL CIERRE DE SESSION
          $("#modal").addClass( "modal-backdrop fade in" );
          $.get('login/modal_sesion_caduco.php',{minutos:minutos}).done(function(htmlexterno){
            $("#contenedor_principal").html(htmlexterno);
           });
          setTimeout(function() {
            window.location.assign('login/cerrar_sesion.php');
          },2500);
        $("#modal_activa").val('si');
        }
        $("#hora_ultimo_movimiento").val(hora_actual);
        //var p = parseInt($("#p").text());
  });



      swal({
        title: "Hola <?=$_SESSION['usuario_activo']?>, bienvenido al sistema",
        text: "",
        timer: 2000,
        showConfirmButton: false
      });

  //  $(document).ready( function () {
  //      $('#tabla_id').DataTable({
  //       "language":{
  //        "lengthMenu":"Mostrar _MENU_ registros por página.",
  //        "zeroRecords": "Lo sentimos. No se encontraron registros.",
  //              "info": "Mostrando página _PAGE_ de _PAGES_",
  //              "infoEmpty": "No hay registros aún.",
  //              "infoFiltered": "(filtrados de un total de _MAX_ registros)",
  //              "search" : "Búsqueda",
  //              "LoadingRecords": "Cargando ...",
  //              "Processing": "Procesando...",
  //              "SearchPlaceholder": "Comience a teclear...",
  //              "paginate": {
  //      "previous": "Anterior",
  //      "next": "Siguiente",
  //      }
  //       }
  //      });
  //  } );
  //
  </script>

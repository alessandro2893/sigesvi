<?php
  // PARA TRAER LOS ROLES
    require_once("menu.class.php");
    $menu = new menu();
    $arrego_con_menu = $menu->get_menu($_SESSION['id_usuario']);
    $menu_mantenimiento = $menu->get_menu_tab($_SESSION['id_usuario'],6);// NUMERO DE OBJETO 6 VENTAS
    $menu_reportes = $menu->get_menu_tab($_SESSION['id_usuario'],7);// NUMERO DE OBJETO 6 VENTAS
    $id_usuario=$_SESSION['id_usuario'];
    // echo $id_usuario;
        // print_r($menu_reportes);

        // require_once("conexion.php"); // NECESITAMOS ABRIR LA CONEXION CON LA BASE DE DATOS
        //
        //
        // $query="SELECT foto, tipo_foto FROM tbl_man_usuarios WHERE id_usuario='$id_usuario'";
        // $consultar=$mysqli->query($query);
        // $arreglo = mysqli_fetch_assoc($consultar);
        // $traer_imagen=$arreglo['foto'];
        // $traer_tipo=$arreglo['tipo_foto'];
        //
        //
        //  $imagen='data:'.$traer_tipo.'; base64, '.base64_encode($traer_imagen);
    // print_r($menu_reportes);
 ?>



<div id="sidebar"  class="nav-collapse ">

    <!-- sidebar menu start-->
    <ul class="sidebar-menu" id="nav-accordion">

      <!-- <p class="centered"><img src="<?=$imagen?>" class="img-circle" width="60"></a></p> -->
      <p class="centered"><img src="assets/img/inhgeomin.png" class="img-circle" width="80"></a></p>
      <h5 class="centered"><?=$_SESSION["usuario_activo"]?></h5>

        <li class="mt">
            <a class="active" href="index.php">
                <i class="fa fa-desktop"></i>
                 <!-- <?php print_r($arrego_con_menu); ?> -->
                <span>ESCRITORIO</span>

            </a>
        </li>

        <?php if (@$arrego_con_menu['ADMINISTRADOR']=="si"){ ?>
        <li class="sub-menu">
            <a href="javascript:;" >
                <i class="fa fa-user"></i>

                <span>ADMINISTRADOR</span>
            </a>
            <ul class="sub">
              <li id="li_mante_empleado"><a id="a_empleado" href="javascript:;">Empleados</a></li>
                <li id="li_usuario"><a id="a_usuario" href="javascript:;" >Usuarios</a></li>
                <li id="li_mante_roles"><a id="a_roles" href="javascript:;" >Roles</a></li>
                <li id="li_mante_parametro"><a id="a_mante_parametro" href="javascript:;">Parametros</a></li>
                <li id="li_bitacora"><a id="a_bitacora" href="javascript:;">Bitacora</a></li>

            </ul>
        </li>
        <?php }; ?>

        <li class="sub-menu">
            <a id="p_class_viaticos" href="javascript:;" >
                <i class="fa fa-car"></i>
                <span>VIATICOS</span>
            </a>
            <ul class="sub">

              <?php if (@$arrego_con_menu['GENERAR_SOLICITUD']=="si"){ ?>
                <li id="li_unidad_solicitante"><a id="a_unidad_solicitante" href="javascript:;" >Generar Solicitud</a></li>
              <?php }; ?>
              <?php if (@$arrego_con_menu['ASIGNAR_VEHICULO']=="si"){ ?>
                <li id="li_servicios_generales"><a id="a_servicios_generales" href="javascript:;" >Asignación Vehiculo</a></li>
              <?php }; ?>
              <?php if (@$arrego_con_menu['APROBAR_SOLICITUD']=="si"){ ?>
                <li id="li_aprobacion_viatico"><a id="a_aprobacion_viatico" href="javascript:;" >Aprobación Solicitud</a></li>
              <?php }; ?>
              <?php if (@$arrego_con_menu['DESGLOSE_GASTOS']=="si"){ ?>
                <li id="li_desglose_gastos"><a id="a_desglose_gastos" href="javascript:;" >Desglose de Gastos</a></li>
              <?php }; ?>
            </ul>
        </li>

        <?php if (@$arrego_con_menu['MANTENIMIENTOS']=="si"){ ?>

        <li class="sub-menu">
            <a href="javascript:;" >
                <i class="fa fa-cogs"></i>
                <span>MANTENIMIENTOS</span>
            </a>
            <ul class="sub">
              <li id="li_mante_categoria"><a id="a_categoria" href="javascript:;" >Categorias de Empleados</a></li>
              <li id="li_mante_dependencia"><a id="a_dependencia" href="javascript:;" >Dependencias</a></li>
              <li id="li_mante_zona"><a id="a_zona" href="javascript:;" >Zonas</a></li>
              <li id="li_mante_cate_zona"><a id="a_cate_zona" href="javascript:;" >Categorias Zonas</a></li>
             <li id="li_mante_cuentas"><a id="a_cuentas" href="javascript:;" >Cuentas Bancarias</a></li>
              <li id="li_mante_vehiculo"><a id="a_vehiculo" href="javascript:;" >Vehículos</a></li>
              <li id="li_mante_departamento"><a id="a_departamento" href="javascript:;" >Departamentos</a></li>
              <li id="li_mante_municipio"><a id="a_municipio" href="javascript:;" >Municipios</a></li>
            </ul>
        </li>
        <?php }; ?>

        <?php if (@$arrego_con_menu['REPORTES']=="si"){ ?>
        <li class="sub-menu">
            <a href="javascript:;" >
                <i class="fa fa-file-text"></i>
                <span>REPORTES</span>
            </a>
            <ul class="sub">
              <!-- <li id="li_generar_reportes"><a id="a_generar_reportes" href="javascript:;">Generar Reporte</a></li> -->

              <li id="li_reportes_empleados"><a id="a_reportes_empleados" href="javascript:;">Reporte empleados</a></li>
              <li id="li_reporte2"><a id="a_reporte2" href="javascript:;">Solicitudes por dependencia</a></li>
              <li id="li_reporte_solicitudes"><a id="a_reporte_solicitudes" href="javascript:;">Solicitudes por fechas</a></li>
              <!-- <li id="li_reporte_mgira"><a id="a_reporte_mgira" href="javascript:;">Emp. mas salidos de gira</a></li> -->
              <li id="li_reporte_vehiculos"><a id="a_reporte_vehiculos" href="javascript:;">Reporte Vehiculos</a></li>
            </ul>
        </li>
        <?php }; ?>

        <li id="span_creditos" class="sub-menu">
            <a  href="javascript:;" >
                <i class="fa fa-file"></i>
                <span>CREDITOS</span>
            </a>
      </li>

    </ul>
</div>

<script type="text/javascript">
$(document).ready(function () {
    //Disable cut copy paste
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });

    //Disable mouse right click
    $("body").on("contextmenu",function(e){
        return false;
    });
});
</script>

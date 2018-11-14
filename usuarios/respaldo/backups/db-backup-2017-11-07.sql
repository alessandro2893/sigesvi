

CREATE TABLE `tbl_aprobacion` (
  `id_aprobacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cta_fk` int(11) NOT NULL,
  `id_usoli_fk` int(11) NOT NULL,
  `tipo_transaccion` varchar(45) NOT NULL,
  `num_transaccion` int(11) NOT NULL,
  `f01_cheque` bigint(100) DEFAULT NULL,
  `anticipo` float NOT NULL,
  `usuario_elaboro` varchar(45) NOT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `motivo_cancelacion` varchar(200) NOT NULL,
  `cancelado_por` varchar(45) DEFAULT NULL,
  `fecha_cancelacion` date DEFAULT NULL,
  PRIMARY KEY (`id_aprobacion`),
  KEY `fk_tbl_aprobacion_tbl_man_cuentas_bancarias1_idx` (`id_cta_fk`),
  KEY `fk_tbl_aprobacion_tbl_unidad_solicitante1_idx` (`id_usoli_fk`),
  CONSTRAINT `aprobacion_ctas_bancarias` FOREIGN KEY (`id_cta_fk`) REFERENCES `tbl_man_cuentas_bancarias` (`id_cta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_aprobacion_tbl_unidad_solicitante1` FOREIGN KEY (`id_usoli_fk`) REFERENCES `tbl_unidad_solicitante` (`id_usoli`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;






CREATE TABLE `tbl_bitacora` (
  `id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `operacion` varchar(45) NOT NULL,
  `tbl_afectada` varchar(45) NOT NULL,
  `campo_afectado` varchar(45) NOT NULL,
  `valor_viejo` varchar(300) NOT NULL,
  `valor_nuevo` varchar(300) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `nombre_host` varchar(45) NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=837 DEFAULT CHARSET=utf8;

INSERT INTO tbl_bitacora VALUES("704","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("705","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","CANCELAR GIRA, PRUEBA VEHICULO PDK PICKUP","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("706","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("707","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","CANCELAR GIRA, PRUEBA VEHICULO PDK PICKUP","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("708","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("709","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","CANCELAR GIRA, PRUEBA VEHICULO PDK PICKUP","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("710","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("711","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("712","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","CANCELAR GIRA, PRUEBA VEHICULO PDK PICKUP","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("713","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("714","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("715","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","CANCELAR GIRA, PRUEBA VEHICULO PDK PICKUP","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:33:41");
INSERT INTO tbl_bitacora VALUES("716","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:34:16");
INSERT INTO tbl_bitacora VALUES("717","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:38");
INSERT INTO tbl_bitacora VALUES("718","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:38");
INSERT INTO tbl_bitacora VALUES("719","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:40");
INSERT INTO tbl_bitacora VALUES("720","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:40");
INSERT INTO tbl_bitacora VALUES("721","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("722","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("723","ACTUALIZAR","tbl_man_vehiculos","kilometraje","557777","547865","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("724","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("725","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("726","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:35:56");
INSERT INTO tbl_bitacora VALUES("727","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("728","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","QWERT","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("729","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("730","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","QWERT","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("731","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("732","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("733","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","QWERT","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:36:07");
INSERT INTO tbl_bitacora VALUES("734","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("735","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("736","ACTUALIZAR","tbl_man_vehiculos","kilometraje","2","234567","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("737","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("738","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("739","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:37:32");
INSERT INTO tbl_bitacora VALUES("740","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("741","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("742","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("743","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("744","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("745","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("746","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("747","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("748","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","H","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("749","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("750","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("751","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("752","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("753","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("754","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("755","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","SDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("756","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:53:30");
INSERT INTO tbl_bitacora VALUES("757","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:54:41");
INSERT INTO tbl_bitacora VALUES("758","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:54:41");
INSERT INTO tbl_bitacora VALUES("759","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:12");
INSERT INTO tbl_bitacora VALUES("760","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:12");
INSERT INTO tbl_bitacora VALUES("761","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("762","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("763","ACTUALIZAR","tbl_man_vehiculos","kilometraje","234567","876543","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("764","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("765","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("766","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("767","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("768","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("769","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:25");
INSERT INTO tbl_bitacora VALUES("770","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:49");
INSERT INTO tbl_bitacora VALUES("771","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:55:49");
INSERT INTO tbl_bitacora VALUES("772","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:06");
INSERT INTO tbl_bitacora VALUES("773","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","GFERGHGGTER","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:06");
INSERT INTO tbl_bitacora VALUES("774","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:06");
INSERT INTO tbl_bitacora VALUES("775","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:33");
INSERT INTO tbl_bitacora VALUES("776","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:33");
INSERT INTO tbl_bitacora VALUES("777","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 22:58:33");
INSERT INTO tbl_bitacora VALUES("778","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","3","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:16:06");
INSERT INTO tbl_bitacora VALUES("779","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","6","10","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:16:20");
INSERT INTO tbl_bitacora VALUES("780","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","4","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:16:39");
INSERT INTO tbl_bitacora VALUES("781","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","3","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:16:53");
INSERT INTO tbl_bitacora VALUES("782","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","4","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:17:02");
INSERT INTO tbl_bitacora VALUES("783","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","3","11","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:17:17");
INSERT INTO tbl_bitacora VALUES("784","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","5","8","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:17:46");
INSERT INTO tbl_bitacora VALUES("785","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","11","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:17:53");
INSERT INTO tbl_bitacora VALUES("786","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","4","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:04");
INSERT INTO tbl_bitacora VALUES("787","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","6","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:12");
INSERT INTO tbl_bitacora VALUES("788","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","10","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:28");
INSERT INTO tbl_bitacora VALUES("789","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:40");
INSERT INTO tbl_bitacora VALUES("790","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","10","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:49");
INSERT INTO tbl_bitacora VALUES("791","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","5","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:18:53");
INSERT INTO tbl_bitacora VALUES("792","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:19:53");
INSERT INTO tbl_bitacora VALUES("793","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","2","7","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:20:03");
INSERT INTO tbl_bitacora VALUES("794","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("795","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("796","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("797","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("798","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("799","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("800","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("801","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("802","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("803","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("804","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("805","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("806","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("807","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("808","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("809","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("810","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","GGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("811","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:21");
INSERT INTO tbl_bitacora VALUES("812","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:53");
INSERT INTO tbl_bitacora VALUES("813","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","HH","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:53");
INSERT INTO tbl_bitacora VALUES("814","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:21:53");
INSERT INTO tbl_bitacora VALUES("815","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:26:36");
INSERT INTO tbl_bitacora VALUES("816","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","9","7","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:26:52");
INSERT INTO tbl_bitacora VALUES("817","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","10","5","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:27:15");
INSERT INTO tbl_bitacora VALUES("818","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","10","5","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:28:03");
INSERT INTO tbl_bitacora VALUES("819","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","12","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:29:09");
INSERT INTO tbl_bitacora VALUES("820","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","12","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:29:17");
INSERT INTO tbl_bitacora VALUES("821","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","9","8","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:30:33");
INSERT INTO tbl_bitacora VALUES("822","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:39:49");
INSERT INTO tbl_bitacora VALUES("823","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:39:49");
INSERT INTO tbl_bitacora VALUES("824","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("825","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("826","ACTUALIZAR","tbl_man_vehiculos","kilometraje","876543","777777","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("827","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("828","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("829","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:43:25");
INSERT INTO tbl_bitacora VALUES("830","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:49:44");
INSERT INTO tbl_bitacora VALUES("831","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:52:18");
INSERT INTO tbl_bitacora VALUES("832","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:52:18");
INSERT INTO tbl_bitacora VALUES("833","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:52:18");
INSERT INTO tbl_bitacora VALUES("834","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:52:18");
INSERT INTO tbl_bitacora VALUES("835","ACTUALIZAR","tbl_roles_objetos","permiso_consultar","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:53:42");
INSERT INTO tbl_bitacora VALUES("836","ACTUALIZAR","tbl_roles_objetos","permiso_actualizar","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-06 23:53:42");





CREATE TABLE `tbl_categoria_zona` (
  `id_categoria_zona` int(11) NOT NULL AUTO_INCREMENT,
  `id_zona_fk` int(11) NOT NULL,
  `id_categoria_fk` int(11) NOT NULL,
  `periodo_corto` decimal(12,2) NOT NULL,
  `periodo_largo` decimal(12,2) NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `creado_por` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_categoria_zona`),
  KEY `catezona_categoria_idx` (`id_categoria_fk`),
  KEY `catezona_zona_idx` (`id_zona_fk`),
  CONSTRAINT `catezona_categoria` FOREIGN KEY (`id_categoria_fk`) REFERENCES `tbl_man_categoria_empleados` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `catezona_zona` FOREIGN KEY (`id_zona_fk`) REFERENCES `tbl_man_zonas` (`id_zona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO tbl_categoria_zona VALUES("1","1","1","2375.00","2275.00","ACTIVO","","0000-00-00","LUIS","2017-11-05");
INSERT INTO tbl_categoria_zona VALUES("2","1","2","2063.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-17");
INSERT INTO tbl_categoria_zona VALUES("3","1","3","1750.00","1675.00","ACTIVO","","0000-00-00","ADMIN","2017-10-16");
INSERT INTO tbl_categoria_zona VALUES("4","1","4","1437.50","1375.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");
INSERT INTO tbl_categoria_zona VALUES("5","1","5","1125.00","1075.00","ACTIVO","","0000-00-00","","0000-00-00");
INSERT INTO tbl_categoria_zona VALUES("6","2","1","2062.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");





CREATE TABLE `tbl_desglose_gastos` (
  `id_desglose_gasto` int(11) NOT NULL AUTO_INCREMENT,
  `id_aprobacion_fk` int(11) NOT NULL,
  `correlativo` varchar(6) NOT NULL,
  `lugar` varchar(300) NOT NULL,
  `viaticos_diarios` float NOT NULL,
  `dias` float DEFAULT NULL,
  `total_viaticos` float DEFAULT NULL,
  `des_gcombustible` varchar(200) DEFAULT NULL,
  `lps_gcombustible` float NOT NULL,
  `des_ogastos` varchar(200) NOT NULL,
  `lps_ogastos` float DEFAULT NULL,
  `sub_total` float NOT NULL,
  `anticipo_recibido` float NOT NULL,
  `saldos` float NOT NULL,
  `des_saldos` varchar(200) NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  PRIMARY KEY (`id_desglose_gasto`),
  UNIQUE KEY `correlativo_UNIQUE` (`correlativo`),
  KEY `id_aprobacion_fk` (`id_aprobacion_fk`),
  CONSTRAINT `desglose_aprobacion` FOREIGN KEY (`id_aprobacion_fk`) REFERENCES `tbl_aprobacion` (`id_aprobacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `tbl_direcciones_empleados` (
  `id_direccion_emp` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado_fk` int(11) NOT NULL,
  `id_municipio_fk` int(11) NOT NULL,
  `direccion_detalle` varchar(155) NOT NULL,
  PRIMARY KEY (`id_direccion_emp`),
  KEY `direccion_municipio_idx` (`id_municipio_fk`),
  KEY `fk_tbl_direcciones_empleados_tbl_man_empleados1_idx` (`id_empleado_fk`),
  CONSTRAINT `direccion_municipio` FOREIGN KEY (`id_municipio_fk`) REFERENCES `tbl_man_municipios` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_direcciones_empleados_tbl_man_empleados1` FOREIGN KEY (`id_empleado_fk`) REFERENCES `tbl_man_empleados` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO tbl_direcciones_empleados VALUES("1","1","4","LA ARBELOA");
INSERT INTO tbl_direcciones_empleados VALUES("2","2","1","LA TRAVESIA");
INSERT INTO tbl_direcciones_empleados VALUES("3","3","110","COL RESIDENCIAL PLAZA ");
INSERT INTO tbl_direcciones_empleados VALUES("4","4","1"," LA PRADERA");
INSERT INTO tbl_direcciones_empleados VALUES("5","5","1","PRADOS UNIVERSITARION");
INSERT INTO tbl_direcciones_empleados VALUES("6","6","4","LOMAS DEL TONCONTIN");
INSERT INTO tbl_direcciones_empleados VALUES("7","7","1","ZAMBO CRECK");
INSERT INTO tbl_direcciones_empleados VALUES("8","8","110","LA KENNEDY");
INSERT INTO tbl_direcciones_empleados VALUES("9","9","1","SDFSDF");
INSERT INTO tbl_direcciones_empleados VALUES("10","10","110","LA CANADA");
INSERT INTO tbl_direcciones_empleados VALUES("11","11","4","ADASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("12","12","1","CUALQUEIR");
INSERT INTO tbl_direcciones_empleados VALUES("13","13","2","CERCA DE OTRA CASA");
INSERT INTO tbl_direcciones_empleados VALUES("14","14","6","111111111111111111");
INSERT INTO tbl_direcciones_empleados VALUES("15","15","40","RES DEL TABLON");
INSERT INTO tbl_direcciones_empleados VALUES("16","16","153","PRUEBAN");
INSERT INTO tbl_direcciones_empleados VALUES("17","17","1","DFGHJK");
INSERT INTO tbl_direcciones_empleados VALUES("18","18","1","PRUEBAC");
INSERT INTO tbl_direcciones_empleados VALUES("19","19","1","DFGHJK");
INSERT INTO tbl_direcciones_empleados VALUES("20","20","1","ASDFGBN");
INSERT INTO tbl_direcciones_empleados VALUES("21","21","1","SDFSDF");
INSERT INTO tbl_direcciones_empleados VALUES("22","22","3","ASDFGHJK");
INSERT INTO tbl_direcciones_empleados VALUES("23","23","7","SDFGHJ5");
INSERT INTO tbl_direcciones_empleados VALUES("24","24","6","HGNGFDVSDC");
INSERT INTO tbl_direcciones_empleados VALUES("25","25","1","SDFSDF");
INSERT INTO tbl_direcciones_empleados VALUES("26","26","6","COL KENNEDY");





CREATE TABLE `tbl_man_categoria_empleados` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(8) NOT NULL,
  `nivel_organizativo` varchar(45) NOT NULL,
  `grupo_ocupacional` varchar(45) NOT NULL,
  `comprende` varchar(100) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_categoria_empleados VALUES("1","I","4DCADDDXXX","ALTOS FUNCIONARIOS","SECRETARIOS Y SUB-SECRETARIOS DE ESTADO","INACTIVO","ADMIN","2017-03-08","LUIS","2017-11-05");
INSERT INTO tbl_man_categoria_empleados VALUES("2","II","XII, XIII, XIV, XV","DIRECTIVOS","SECRETARIOS GENERALES, DIRECTIVOS GENERALES Y SUB-DIRECTIVOS GENERALES, ASESORES ESPECIALES","ACTIVO","ADMIN","2017-03-14","","");
INSERT INTO tbl_man_categoria_empleados VALUES("3","III","X, XI","EJECUTIVO","INCLUYE PERSONAL PERMANENTE NO CLASIFICADO","ACTIVO","ADMIN","2017-03-14","","");
INSERT INTO tbl_man_categoria_empleados VALUES("4","IV","V, VI, VII, VII, IX","TECNICO","NN","ACTIVO","ADMIN","2017-03-14","","");
INSERT INTO tbl_man_categoria_empleados VALUES("5","V","I, II, III, IV","APOYO TECNICO","ASISTENTES TECNICOS","ACTIVO","ADMIN","2017-03-14","","2017-10-10");





CREATE TABLE `tbl_man_conductor` (
  `id_conductor` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado_fk` int(11) NOT NULL,
  `tipo_licencia` varchar(45) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `tbl_man_conductorcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_conductor`),
  UNIQUE KEY `id_conductor_UNIQUE` (`id_conductor`),
  KEY `fk_tbl_man_conductor_tbl_man_detalles_empleados1_idx` (`id_empleado_fk`),
  CONSTRAINT `fk_tbl_man_conductor_tbl_man_detalles_empleados1` FOREIGN KEY (`id_empleado_fk`) REFERENCES `tbl_man_empleados` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_conductor VALUES("1","1","PESADA","2011-05-17","VIGENTE","ADMIN","2017-03-08","JESCOTO","2017-10-19","");
INSERT INTO tbl_man_conductor VALUES("2","6","NORMAL","2018-01-23","VENCIDA","ADMIN","0000-00-00","JESCOTO","2017-10-21","");





CREATE TABLE `tbl_man_cuentas_bancarias` (
  `id_cta` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(45) NOT NULL,
  `tipo_cuenta` varchar(45) NOT NULL,
  `tipo_moneda` varchar(45) NOT NULL,
  `numero_cuenta` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_cta`),
  UNIQUE KEY `numero_cuenta_UNIQUE` (`numero_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_cuentas_bancarias VALUES("1","DAVIVIENDA","CHEQUE","L","66666666666","ACTIVO","ADMIN","2017-03-25","JESCOTO","2017-10-17");
INSERT INTO tbl_man_cuentas_bancarias VALUES("2","LAFISE","DEPOSITO","L","20131009257","ACTIVO","ADM","2017-03-25","LUIS","2017-04-11");
INSERT INTO tbl_man_cuentas_bancarias VALUES("3","LAFISE","ACTIVO","DOLAR","123456789","ACTIVO","LUIS","2017-04-11","","0000-00-00");
INSERT INTO tbl_man_cuentas_bancarias VALUES("4","BANCO CENTRAL DE HONDURAS","ACTIVO","DOLAR","1234567890","ACTIVO","LUIS","2017-04-13","","0000-00-00");





CREATE TABLE `tbl_man_departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_departamento VALUES("1","ATLANTIDA","INACTIVO","JREYES","2017-03-25","LUIS","2017-04-21");
INSERT INTO tbl_man_departamento VALUES("2","COLON","INACTIVO","JREYES","2017-03-25","LUIS","2017-07-04");
INSERT INTO tbl_man_departamento VALUES("3","COMAYAGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("4","COPAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("5","CORTES","ACTIVO","JREYES","2017-03-25","ADMIN","2017-10-10");
INSERT INTO tbl_man_departamento VALUES("6","CHOLUTECA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("7","EL PARAISO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("8","FRANCISCO MORAZAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("9","GRACIAS A DIOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("10","INTIBUCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("11","ISLAS DE LA BAHIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("12","LA PAZ","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("13","LEMPIRA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("14","OCOTEPEQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("15","OLANCHO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("16","SANTA BARBARA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("17","VALLE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_departamento VALUES("18","YORO ","ACTIVO","JREYES","2017-03-25","","0000-00-00");





CREATE TABLE `tbl_man_dependencia` (
  `id_dependencia` int(11) NOT NULL AUTO_INCREMENT,
  `dependencia` varchar(60) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_dependencia`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_dependencia VALUES("1","SERVICIOS GENERALES","ACTIVO","ADMIN","2017-03-08","ADMIN","2017-10-10");
INSERT INTO tbl_man_dependencia VALUES("2","FISCALIZACION","INACTIVO","ADMIN","2017-03-08","LUIS","2017-04-13");
INSERT INTO tbl_man_dependencia VALUES("3","CATASTRAL","ACTIVO","ADMIN","2017-03-18","","");
INSERT INTO tbl_man_dependencia VALUES("4","RECURSOS HUMANOS","ACTIVO","ADMIN","2017-03-18","","");
INSERT INTO tbl_man_dependencia VALUES("5","CONTABILIDAD","ACTIVO","ADMIN","2017-03-17","ADMIN","2017-10-10");
INSERT INTO tbl_man_dependencia VALUES("6","INFORMATICA","ACTIVO","ADMIN","2017-03-17","ADMIN","2017-09-25");
INSERT INTO tbl_man_dependencia VALUES("7","AMBIENTE Y SEGURIDAD","ACTIVO","ADMIN","2017-03-18","","");
INSERT INTO tbl_man_dependencia VALUES("8","DESARROLLO SOCIAL","ACTIVO","ADMIN","2017-03-18","","");
INSERT INTO tbl_man_dependencia VALUES("9","MINAS Y GEOLOGIA","ACTIVO","ADMIN","2017-03-18","","");
INSERT INTO tbl_man_dependencia VALUES("10","SECRETARIA LEGAL","ACTIVO","ADMIN","2017-03-16","","");
INSERT INTO tbl_man_dependencia VALUES("11","LABORATORIO","ACTIVO","LUIS","2017-04-13","","0000-00-00");
INSERT INTO tbl_man_dependencia VALUES("12","RELACIONES PUBLICAS","ACTIVO","LUIS","2017-04-21","ADMIN","2017-09-25");





CREATE TABLE `tbl_man_empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria_fk` int(11) NOT NULL,
  `id_dependencia_FK` int(11) NOT NULL,
  `nombre1` varchar(45) NOT NULL,
  `nombre2` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `reloj_marcador` int(11) NOT NULL,
  `tarjeta_identidad` varchar(15) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `salario` decimal(12,2) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `cta_bancaria` varchar(20) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado_gira` varchar(45) NOT NULL,
  `motivo_inactividad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `identidad_UNIQUE` (`tarjeta_identidad`),
  KEY `empleado_categoria_idx` (`id_categoria_fk`),
  KEY `fk_tbl_man_empleados_tbl_man_dependencia1_idx` (`id_dependencia_FK`),
  CONSTRAINT `empleado_categoria` FOREIGN KEY (`id_categoria_fk`) REFERENCES `tbl_man_categoria_empleados` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `empleado_dependencia` FOREIGN KEY (`id_dependencia_FK`) REFERENCES `tbl_man_dependencia` (`id_dependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_empleados VALUES("1","4","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","1709-1996-00602","VIUDO","CONDUCTOR","2000.00","1111-111","524512456235","ACTIVO","ADMIN","2017-03-07","JESCOTO","2017-10-19","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("2","1","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","0801-1995-05807","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","2222-2222","12345678","ACTIVO","ADMIN","2017-03-07","LUIS","2017-07-09","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("3","1","1","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","0814-1986-00238","CASADO","AUDITOR","10000.00","8862-4608","548754652125","ACTIVO","ADMIN","2017-03-17","LRAMIREZ","2017-11-06","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("4","2","4","JULIO","JOSUE","REYES","POSADAS","5754","0801-1987-16541","default","CONDUCTOR","10000.00","4444-4444","6524587562124","ACTIVO","ADMIN","2017-03-18","LUIS","2017-07-20","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("5","3","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","0801-1994-00395","CASADO","ANALISTA","10000.00","5555-5555","35214523012401","ACTIVO","ADMIN","2017-03-17","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("6","4","1","JOSE","RAMON","ESCOTO","FLORES","5648","0801-2008-11111","SOLTERO","CONDUCTOR","10000.00","6666-6666","5426854210324","ACTIVO","ADMIN","2017-03-16","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("7","3","10","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","2222-2222-22222","CASADO","CONSERJE","9500.00","7777-7777","8457853045215","ACTIVO","ADMIN","2017-03-16","","2017-03-17","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("8","1","2","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","0801-1995-05809","SOLTERO","PROGRAMADOR","9999.00","2222-2222","5421542658541","ACTIVO","ADMIN","2017-03-07","","0000-00-00","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("9","3","7","PEDRO","ANTONIO","FUNEZ","SUNIGA","2","5555-5555-55555","SOLTERO","CATRASTOFICO","10000.00","5555-5555","987654321","ACTIVO","LUIS","2017-04-13","","0000-00-00","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("10","3","5","CRISTIAN","JOSUE","RIVERA","RAMIREZ","9999","3333-3333-33333","SOLTERO","PROGRAMADOR","20000.00","2222-2222","987654321","ACTIVO","ADMIN","2017-04-21","","0000-00-00","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("11","1","9","SAID","JOSE","ROJAS","GONZALEZ","2342","4444-4444-44444","DIVORCIADO","CONSERJE","345.00","2323-4234","23456","ACTIVO","LUIS","2017-04-23","LUIS","2017-07-02","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("12","3","3","MARTHA","CAROLINA","LOPEZ","GARCIA","900","1111-1111-11111","DIVORCIADO","GERENTE DE RECURSOS HUMANOS","12000.00","1111-1111","1111-1111-1111-1111","ACTIVO","ADMIN","2017-04-28","JESCOTO","2017-10-22","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("13","4","3","MARITZA","IRIANA","FLORES","SALGADO","234","8888-8888-88888","default","CONDUCTOR","0.00","2342-34","243234","INACTIVO","LUIS","2017-07-07","","0000-00-00","DISPONIBLE","VACACIONES");
INSERT INTO tbl_man_empleados VALUES("14","3","9","LOURDES","SUYAPA","ORELLANA","VILLAFRANCA","555","0801-1993-01402","CASADO","ASESORA","0.00","9678-4094","123654798","ACTIVO","ADMIN","2017-07-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("15","2","11","JUANITO","JAIME","GARCIA","GARCIA","25","0777-7777-77777","SOLTERO","CONDUCTOR","20000.00","12345","0258","ACTIVO","LUIS","2017-10-07","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("16","2","8","SONIASSSSSS","ALEJANDRA","MATUTE","CAMOTE","3","0888-8888-88888","SOLTERO","OBRERO","60000.00","369","0257","ACTIVO","LUIS","2017-10-07","ADMIN","2017-10-11","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("17","1","11","PEDRO","ALBEIRO","ZELAYA","MARTINEZ","65465","6666-6666-66666","SOLTERO","CONDUCTOR","2147483648.00","9999-9999","23222222222222222222","ACTIVO","ADMIN","2017-10-10","JESCOTO","2017-10-20","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("18","1","4","KARLA","MELISA","GARCIA","PINEDA","10527","0801-1981-06359","CASADO","GERENTE","30000.00","9966-0186","0801198106359","ACTIVO","ADMIN","2017-10-11","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("19","2","6","TATIANA","ENRIQUETA","BUQUE","PRUEBAN","1234","1213-2412-34123","SOLTERO","PRUEBAN","87654356.00","2321-3421","98765","ACTIVO","JESCOTO","2017-10-19","JESCOTO","2017-10-19","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("20","1","5","GUILLERMO","FRANCISCO","DOLORES","ZURDO","23412","1234-2134-12412","SOLTERO","DFGHJ","678.00","5435-6754","67890","ACTIVO","JESCOTO","2017-10-19","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("21","1","12","HAROLD","MAXIMO","BETANCOUR","CACIQUE","2000","9999-9999-99999","SOLTERO","CONDUCTOR","12345.00","PRUEBAC","09876543","ACTIVO","JESCOTO","2017-10-20","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("22","1","10","QUIMBERLIN","VALENTINA","MUNOZ","RAMIREZ","7777","7777-7777-77777","SOLTERO","CONDUCTOR","7777.00","7777-7777","7777777777","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("23","3","8","KAREN","MARCELA","PEREZ","MENCIA","110","0000-0000-00000","SOLTERO","CONDUCTOR","9500.00","2222","1587","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("24","5","9","WALTER","ANTONIO","CARCAMO","NUñEZ","300","0111-1111-11111","SOLTERO","CONDUCTOR","7500.00","234","30145","ACTIVO","JESCOTO","2017-10-21","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("25","2","7","LOUIS","SDFSD","SDF","DFGFDF","2345","0000-0000-00001","SOLTERO","DFD","345.00","34","45534","ACTIVO","ADMIN","2017-11-05","ADMIN","2017-11-05","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("26","3","6","JUAN","DIEGO","LOPEZ","MARTINEZ","10101","0801-2018-00017","CASADO","SUPERVISOR","15000.00","2220-0000","0101100100","ACTIVO","LRAMIREZ","2017-11-06","","0000-00-00","DISPONIBLE","");





CREATE TABLE `tbl_man_municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamento_fk` int(11) NOT NULL,
  `id_zona_fk` int(11) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `estado_municipio` varchar(10) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `municipio_depto_idx` (`id_departamento_fk`),
  KEY `fk_tbl_man_municipios_tbl_man_zonas1_idx` (`id_zona_fk`),
  CONSTRAINT `municipio_depto` FOREIGN KEY (`id_departamento_fk`) REFERENCES `tbl_man_departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `municipios_zonas` FOREIGN KEY (`id_zona_fk`) REFERENCES `tbl_man_zonas` (`id_zona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_municipios VALUES("1","1","1","LA CEIBA","ACTIVO","JREYES","2017-03-25","LUIS","2017-07-02");
INSERT INTO tbl_man_municipios VALUES("2","1","3","EL PORVENIR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("3","1","3","ESPARTA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("4","1","3","JUTIAPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("5","1","3","LA MASICA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("6","1","3","SAN FRANCISCO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("7","1","1","TELA","ACTIVO","JREYES","2017-03-25","ADMIN","2017-10-10");
INSERT INTO tbl_man_municipios VALUES("8","1","3","ARIZONA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("9","2","1","RUJILLO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("10","2","3","BALFATE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("11","2","3","IRIONA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("12","2","3","LIMON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("13","2","3","SABA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("14","2","3","SANTA FE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("15","2","3","SANTA ROSA DE AGUAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("16","2","3","SONAGUERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("17","2","1","TOCOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("18","2","3","BONITO ORIENTAL","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("19","3","1","COMAYAGUA","ACTIVO","JREYES","2017-03-25","LUIS","2017-04-11");
INSERT INTO tbl_man_municipios VALUES("20","3","3","AJUTERIQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("21","3","3","EL ROSARIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("22","3","3","ESQUIAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("23","3","3","HUMUYA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("24","3","3","LA LIBERTAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("25","3","3","LAMANI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("26","3","3","LA TRINIDAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("27","3","3","LEJAMANI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("28","3","3","MEAMBAR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("29","3","3","MINAS DE ORO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("30","3","3","OJO DE AGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("31","3","3","SAN JERONIMO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("32","3","3","SAN JOSE DE COMAYAGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("33","3","3","SAN JOSE DEL POTRERO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("34","3","3","SAN LUIS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("35","3","3","SAN SEBASTIAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("36","3","1","SIGUATEPEQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("37","3","3","VILLA DE SAN ANTONIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("38","3","3","LAJAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("39","3","3","TAULABE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("40","4","1","SANTA ROSA DE COPAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("41","4","3","CABANAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("42","4","3","CONCEPCION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("43","4","1","COPAN RUINAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("44","4","3","CORQUIN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("45","4","3","CUCUYAGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("46","4","3","DOLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("47","4","3","DULCE NOMBRE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("48","4","3","EL PARAISO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("49","4","3","FLORIDA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("50","4","3","LA JIGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("51","4","3","LA UNION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("52","4","3","NUEVA ARCADIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("53","4","3","SAN AGUSTIN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("54","4","3","SAN ANTONIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("55","4","3","SAN JERONIMO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("56","4","3","SAN JOSE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("57","4","3","SAN JUAN DE OPOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("58","4","3","SAN NICOLAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("59","4","3","SAN PEDRO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("60","4","3","SANTA RITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("61","4","3","TRINIDAD DE COPAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("62","4","3","VERACRUZ","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("63","5","1","SAN PEDRO SULA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("64","5","2","CHOLOMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("65","5","3","OMOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("66","5","3","PIMIENTA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("67","5","2","POTRERILLOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("68","5","1","PUERTO CORTES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("69","5","3","SAN ANTONIO DE CORTES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("70","5","3","SAN FRANCISCO DE YOJOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("71","5","3","SAN MANUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("72","5","3","SANTA CRUZ DE YOJOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("73","5","2","VILLANUEVA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("74","5","2","LA LIMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("75","6","1","CHOLUTECA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("76","6","3","APACILAGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("77","6","3","CONCEPCION DE MARIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("78","6","3","DUYURE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("79","6","3","EL CORPUS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("80","6","3","EL TRIUNFO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("81","6","3","MARCOVIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("82","6","3","MOROLICA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("83","6","3","NAMASIGUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("84","6","3","OROCUINA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("85","6","3","PESPIRE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("86","6","3","SAN ANTONIO DE FLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("87","6","3","SAN ISIDRO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("88","6","3","SAN JOSE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("89","6","3","SAN MARCOS DE COLON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("90","6","3","SANTA ANA DE YUSGUARE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("91","7","3","YUSCARAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("92","7","3","ALAUCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("93","7","1","DANLI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("94","7","2","EL PARAISO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("95","7","3","GUINOPE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("96","7","3","JACALEAPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("97","7","3","LIURE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("98","7","3","MOROCELI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("99","7","3","OROPOLI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("100","7","3","POTRERILLOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("101","7","3","SAN ANTONIO DE FLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("102","7","3","SAN LUCAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("103","7","3","SAN MATIAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("104","7","3","SOLEDAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("105","7","3","TEUPASENTI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("106","7","3","TEXIGUAT","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("107","7","3","VADO ANCHO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("108","7","3","YAUYUPE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("109","7","3","TROJES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("110","8","1","TEGUCIGALPA D.C","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("111","8","3","ALUBAREN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("112","8","3","CEDROS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("113","8","3","CURAREN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("114","8","3","EL PORVENIR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("115","8","3","GUAIMACA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("116","8","3","LA LIBERTAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("117","8","3","LA VENTA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("118","8","3","LEPATERIQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("119","8","3","MARAITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("120","8","3","MARALE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("121","8","3","NUEVA ARMENIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("122","8","3","OJOJONA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("123","8","3","ORICA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("124","8","3","REITOCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("125","8","3","SABANAGRANDE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("126","8","3","SAN ANTONIO DE ORIENTE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("127","8","3","SAN BUENAVENTURA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("128","8","3","SAN IGNACIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("129","8","3","SAN JUAN DE FLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("130","8","3","SAN MIGUELITO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("131","8","3","SANTA ANA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("132","8","3","SANTA LUCIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("133","8","3","TALANGA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("134","8","3","TATUMBLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("135","8","3","VALLE DE ANGELES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("136","8","3","VILLA DE SAN FRANCISCO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("137","8","3","VALLECILLO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("138","9","1","PUERTO LEMPIRA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("139","9","3","BRUS LAGUNA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("140","9","3","AHUAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("141","9","3","JUAN FRANCISCO BULNES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("142","9","3","VILLEDA MORALES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("143","9","3","WAMPUSIRPE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("144","10","1","LA ESPERANZA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("145","10","3","CAMASCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("146","10","3","COLOMONCAGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("147","10","3","CONCEPCION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("148","10","3","DOLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("149","10","3","INTIBUCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("150","10","3","JESUS DE OTORO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("151","10","3","MAGDALENA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("152","10","3","MASAGUARA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("153","10","3","SAN ANTONIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("154","10","3","SAN ISIDRO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("155","10","3","SAN JUAN DE FLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("156","10","3","SAN MARCOS DE LA SIERRA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("157","10","3","SAN MIGUEL GUANCAPLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("158","10","3","SANTA LUCIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("159","10","3","YAMARANGUILA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("160","10","3","SAN FRANCISCO OPALACA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("161","11","1","ROATAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("162","11","1","GUANAJA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("163","11","3","JOSE SANTOS GUARDIOLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("164","11","3","UTILA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("165","12","1","LA PAZ","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("166","12","3","AGUANQUETERIQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("167","12","3","CABANAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("168","12","3","CANE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("169","12","3","CHINACLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("170","12","3","GUAJIQUIRO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("171","12","3","LAUTERIQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("172","12","2","MARCALA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("173","12","3","MERCEDES DE ORIENTE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("174","12","3","OPATORO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("175","12","3","SAN ANTONIO DEL NORTE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("176","12","3","SAN JOSE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("177","12","3","SAN JUAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("178","12","3","SAN PEDRO DE TUTULE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("179","12","3","SANTA ANA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("180","12","3","SANTA ELENA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("181","12","3","SANTA MARIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("182","12","3","SANTIAGO PURINGLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("183","12","3","YARULA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("184","13","1","GRACIAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("185","13","3","BELEN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("186","13","3","CANDELARIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("187","13","3","COLOLACA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("188","13","3","ERANDIQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("189","13","3","GUALCINSE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("190","13","3","GUARITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("191","13","3","LA CAMPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("192","13","3","LA IGUALA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("193","13","3","LAS FLORES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("194","13","3","LA UNION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("195","13","3","LA VIRTUD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("196","13","3","LEPAERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("197","13","3","MAPULACA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("198","13","3","PIRAERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("199","13","3","SAN ANDRES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("200","13","3","SAN FRANCISCO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("201","13","3","SAN JUAN GUARITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("202","13","3","SAN MANUEL COLOHETE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("203","13","3","SAN RAFAEL","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("204","13","3","SAN SEBASTIAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("205","13","3","SANTA CRUZ","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("206","13","3","TALGUA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("207","13","3","TAMBLA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("208","13","3","TOMALA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("209","13","3","VALLADOLID","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("210","13","3","VIRGINIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("211","13","3","SAN MARCOS DE CAIQUIN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("212","14","1","NUEVA OCOTEPEQUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("213","14","3","BELEN GUALCHO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("214","14","3","CONCEPCION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("215","14","3","DOLORES MERENDON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("216","14","3","FRATERNIDAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("217","14","3","LA ENCARNACION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("218","14","3","LA LABOR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("219","14","3","LUCERNA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("220","14","3","MERCEDES","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("221","14","3","SAN FERNANDO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("222","14","3","SAN FRANCISCO DEL VALLE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("223","14","3","SAN JORGE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("224","14","3","SAN MARCOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("225","14","3","SANTA FE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("226","14","3","SENSENTI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("227","14","3","SINUAPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("228","15","1","JUTICALPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("229","15","3","CAMPAMENTO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("230","15","1","CATACAMAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("231","15","3","CONCORDIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("232","15","3","DULCE NOMBRE DE CULMI","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("233","15","3","EL ROSARIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("234","15","3","ESQUIPULAS DEL NORTE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("235","15","3","GUALACO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("236","15","3","GUARIZAMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("237","15","3","GUATA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("238","15","3","GUAYAPE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("239","15","3","JANO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("240","15","3","LA UNION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("241","15","3","MANGULILE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("242","15","3","MANTO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("243","15","3","SALAMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("244","15","3","SAN ESTEBAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("245","15","3","SAN FRANCISCO DE BECERRA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("246","15","3","SAN FRANCISCO DE LA PAZ","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("247","15","3","SANTA MARIA DEL REAL","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("248","15","3","SILCA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("249","15","3","YOCON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("250","15","3","FROYLAN TURCIOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("251","16","1","SANTA BARBARA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("252","16","3","ARADA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("253","16","3","ATIMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("254","16","3","AZACUALPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("255","16","3","CEGUACA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("256","16","3","COLINAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("257","16","3","CONCEPCION DEL NORTE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("258","16","3","CONCEPCION DEL SUR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("259","16","3","CHINDA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("260","16","3","EL NISPERO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("261","16","3","GUALALA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("262","16","3","ILAMA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("263","16","3","MACUELIZO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("264","16","3","NARANJITO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("265","16","3","NUEVA CELILAC","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("266","16","3","PETOA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("267","16","3","PROTECCION","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("268","16","3","QUIMISTAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("269","16","3","SAN FRANCISCO DE OJUERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("270","16","3","SAN LUIS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("271","16","3","SAN MARCOS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("272","16","3","SAN NICOLAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("273","16","3","SAN PEDRO ZACAPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("274","16","3","SANTA RITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("275","16","3","SAN VICENTE CENTENARIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("276","16","3","TRINIDAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("277","16","3","LAS VEGAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("278","16","3","NUEVA FRONTERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("279","17","3","NACAOME","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("280","17","3","ALIANZA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("281","17","1","AMAPALA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("282","17","3","ARAMECINA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("283","17","3","CARIDAD","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("284","17","3","GOASCORAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("285","17","3","LANGUE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("286","17","3","SAN FRANCISCO DE CORAY","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("287","17","1","SAN LORENZO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("288","18","3","YORO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("289","18","3","ARENAL","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("290","18","3","EL NEGRITO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("291","18","1","EL PROGRESO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("292","18","3","JOCON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("293","18","3","MORAZAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("294","18","1","OLANCHITO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("295","18","3","SANTA RITA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("296","18","3","SULACO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("297","18","3","VICTORIA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("298","18","3","YORITO","ACTIVO","JREYES","2017-03-25","","0000-00-00");





CREATE TABLE `tbl_man_roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) NOT NULL,
  `estado_rol` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_roles VALUES("1","SUPER USUARIO","ACTIVO","ADMIN","2017-04-07","","");
INSERT INTO tbl_man_roles VALUES("2","USUARIO","ACTIVO","ADMIN","2017-04-07","","");
INSERT INTO tbl_man_roles VALUES("3","ADMINISTRADOR","ACTIVO","ADMIN","2017-04-07","","");





CREATE TABLE `tbl_man_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol_fk` int(11) NOT NULL,
  `id_empleado_fk` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `codigo_correo` varchar(45) NOT NULL,
  `estado_usuario` varchar(45) NOT NULL,
  `estado_login` varchar(45) NOT NULL,
  `intentos` int(11) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `link_correo` varchar(100) DEFAULT NULL,
  `ultimo_acceso` datetime DEFAULT NULL,
  `fecha_vencimiento` date NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_electronico_UNIQUE` (`correo_electronico`),
  KEY `fk_tbl_man_usuarios_tbl_man_empleados1_idx` (`id_empleado_fk`),
  KEY `usuario_roles` (`id_rol_fk`),
  CONSTRAINT `usuario_empleado` FOREIGN KEY (`id_empleado_fk`) REFERENCES `tbl_man_empleados` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_roles` FOREIGN KEY (`id_rol_fk`) REFERENCES `tbl_man_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_usuarios VALUES("1","1","1","ADMIN","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","juan@hola.com","","A","OK","0","ADMIN","2017-03-14 00:00:00","ADMIN","2017-10-10 00:00:00","","0000-00-00 00:00:00","2017-12-31");
INSERT INTO tbl_man_usuarios VALUES("2","1","2","LUIS","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=","richard.ordoez@yahoo.es","","A","OK","0","ADMIN","2017-03-14 00:00:00","LUIS","2017-11-05 00:00:00","http://localhost/inhgeomin/login/?q=260f10cbcffedec9f18d83455277e8c10ed4263aRC2-1507614824","0000-00-00 00:00:00","2018-01-17");
INSERT INTO tbl_man_usuarios VALUES("3","1","3","LRAMIREZ","5jW53OtH62YGci1zIoP2hNhsDf05FurAXKsbtM4uYAw=","leymargareth@yahoo.com","","A","OK","0","ADMIN","2017-03-17 13:23:01","LUIS","2017-11-04 00:00:00","http://localhost/inhgeomin/login/?q=2621ec3a9ffdc684772600aec9b715f09f9d82f9RC3-1507348498","","2018-08-15");
INSERT INTO tbl_man_usuarios VALUES("4","3","4","JREYES","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","julior_sk8@hotmail.es","1507620147","A","OK","0","ADMIN","2017-03-17 13:13:55","LRAMIREZ","2017-11-06 00:00:00","http://localhost/inhgeomin/login/?q=881932524dc3fea080fbd680ba61a2abb71d6074RC4-1507620147","","2018-03-17");
INSERT INTO tbl_man_usuarios VALUES("5","1","5","BIZCOA","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","ale.izcoa1993@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:15:13","LRAMIREZ","2017-11-06 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f0a481e69f3cfcc75cb4166c13d3bf07ac7bc8b0RC5-1499273528","","2018-11-05");
INSERT INTO tbl_man_usuarios VALUES("6","1","6","JESCOTO","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","josescoto9@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:16:36","ADMIN","2017-11-06 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f118b7d70e8c807a515f73e5d9fe91f8b509564fRC6-1499635734","","2018-01-26");
INSERT INTO tbl_man_usuarios VALUES("7","2","7","PEDRO","M/DdDvUyJHSjvZsYFnFeuBSzlKqxD33rCURbXnSkvQk=","pedro@gmil.com","","A","OK","0","LUIS","2017-11-06 15:50:13","JESCOTO","2017-11-06 00:00:00","","","2018-08-31");





CREATE TABLE `tbl_man_vehiculos` (
  `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `n_vehiculo` int(3) NOT NULL,
  `tipo_vehiculo` varchar(45) NOT NULL,
  `capacidad_personas` int(11) NOT NULL,
  `placa_vehiculo` varchar(10) NOT NULL,
  `marca_vehiculo` varchar(45) NOT NULL,
  `modelo_vehiculo` varchar(45) NOT NULL,
  `color_vehiculo` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `kilometraje` bigint(100) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_vehiculos VALUES("1","1","PICKUP","5","PDK-1234","NISSAN","FRONTIER","AZUL","ASIGNADO","LUIS","2017-04-22","ADMIN","2017-11-06","547865");
INSERT INTO tbl_man_vehiculos VALUES("2","2","PICKUP","5","RJ-45","NISSAN","FRONTIER","ROJO","ASIGNADO","LUIS","2017-04-22","","","777777");
INSERT INTO tbl_man_vehiculos VALUES("3","3","PICKUP","5","LRO-1234","NISSAN","FRONTIER","ROJO","DISPONIBLE","LUIS","2017-04-22","LRAMIREZ","2017-11-05","23");
INSERT INTO tbl_man_vehiculos VALUES("4","4","TURISMO","53","1234","TOYOTA","TOYOTA ","AZUL","DISPONIBLE","ADMIN","2017-10-10","LRAMIREZ","2017-11-05","775555");





CREATE TABLE `tbl_man_zonas` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_zona` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_zonas VALUES("1","ZONA 1","ADMIN","2017-03-18","ADMIN","2017-10-20","ACTIVO");
INSERT INTO tbl_man_zonas VALUES("2","ZONA 2","ADMIN","2017-03-18","SONIA","2017-10-10","ACTIVO");
INSERT INTO tbl_man_zonas VALUES("3","ZONA 3","ADMIN","2017-03-18","","","INACTIVO");





CREATE TABLE `tbl_objetos` (
  `id_objeto` int(11) NOT NULL AUTO_INCREMENT,
  `objeto_afectado` varchar(45) NOT NULL,
  `estado_objeto` varchar(1) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_objetos VALUES("1","GENERAR_SOLICITUD","A","ADMIN","2017-04-07","","0000-00-00");
INSERT INTO tbl_objetos VALUES("2","ASIGNAR_VEHICULO","A","ADMIN","2017-04-07","","0000-00-00");
INSERT INTO tbl_objetos VALUES("3","APROBAR_SOLICITUD","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_objetos VALUES("4","DESGLOSE_GASTOS","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_objetos VALUES("5","USUARIOS","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_objetos VALUES("6","MANTENIMIENTOS","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_objetos VALUES("7","REPORTES","A","ADMIN","2017-04-07","","");





CREATE TABLE `tbl_parametros` (
  `id_parametro` int(11) NOT NULL AUTO_INCREMENT,
  `intentos` int(11) NOT NULL,
  `tiempo_ac_login` int(11) NOT NULL,
  `dias_habiles_pass` varchar(45) NOT NULL,
  `admin_minimo_clave` int(11) NOT NULL,
  `admin_maximo_clave` int(11) NOT NULL,
  `admin_dias_activacion` int(11) NOT NULL,
  `pc_dia_min` int(11) NOT NULL,
  `pl_dia_max` int(11) NOT NULL,
  `clave_default` varchar(100) NOT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tbl_parametros VALUES("1","3","60000","30","0","0","365","30","60","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=");





CREATE TABLE `tbl_roles_objetos` (
  `id_r_objeto` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol_fk` int(11) NOT NULL,
  `id_objeto_fk` int(11) NOT NULL,
  `permiso_insertar` int(1) NOT NULL,
  `permiso_consultar` int(1) NOT NULL,
  `permiso_actualizar` int(1) NOT NULL,
  `estado_rol_obj` varchar(45) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `modificado_por` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_modificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_r_objeto`),
  KEY `rolobj_roles` (`id_rol_fk`),
  KEY `rolobj_objetos` (`id_objeto_fk`),
  CONSTRAINT `rolobj_objetos` FOREIGN KEY (`id_objeto_fk`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rolobj_roles` FOREIGN KEY (`id_rol_fk`) REFERENCES `tbl_man_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO tbl_roles_objetos VALUES("1","1","1","1","1","1","A","ADMIN","2017-04-07","ADMIN","2017");
INSERT INTO tbl_roles_objetos VALUES("2","1","2","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("3","1","3","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("4","1","4","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("5","1","5","1","1","1","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_roles_objetos VALUES("6","1","7","1","1","1","A","JESCOTO","2017-11-05","","");
INSERT INTO tbl_roles_objetos VALUES("7","1","6","1","1","1","A","LUIS","2017-11-05","","");
INSERT INTO tbl_roles_objetos VALUES("10","2","1","1","1","1","A","JESCOTO","2017-11-06","JESCOTO","2017");





CREATE TABLE `tbl_servicios_generales` (
  `id_sgenerales` int(11) NOT NULL AUTO_INCREMENT,
  `id_usoli_fk` int(11) NOT NULL,
  `id_vehiculo_fk` int(11) NOT NULL,
  `fecha_salida_vehiculo` date NOT NULL,
  `fecha_retorno_vehiculo` date NOT NULL,
  `lugar_gira_vehiculo` varchar(300) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `creado_por` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `codigo_gira` bigint(50) DEFAULT NULL,
  `motivo_cancelacion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_sgenerales`),
  KEY `fk_tbl_servicios_generales_tbl_man_vehiculos1_idx` (`id_vehiculo_fk`),
  KEY `fk_tbl_servicios_generales_tbl_unidad_solicitante1_idx` (`id_usoli_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `tbl_unidad_solicitante` (
  `id_usoli` int(11) NOT NULL AUTO_INCREMENT,
  `id_zona_fk` int(11) NOT NULL,
  `id_empleado_fk` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_retorno` date NOT NULL,
  `lugar_gira` varchar(300) NOT NULL,
  `proposito` varchar(500) NOT NULL,
  `dias_gira` decimal(4,2) DEFAULT NULL,
  `viaticos_diarios` decimal(12,2) DEFAULT NULL,
  `total_viaticos` decimal(12,2) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `correlativo` varchar(7) DEFAULT NULL,
  `codigo_gira` bigint(50) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `creado_por` varchar(45) DEFAULT NULL,
  `motivo_cancelacion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_usoli`),
  KEY `fk_tbl_unidad_solicitante_tbl_man_empleados1_idx` (`id_empleado_fk`),
  KEY `fk_tbl_unidad_solicitante_tbl_man_zonas1_idx` (`id_zona_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_apro_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) where (`tbl_cate_zonas`.`id_categoria_fk` = `tbl_cate`.`id_categoria`);






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_can_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira`,`tbl_apr`.`fecha_emision` AS `fecha_emision` from ((((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_aprobacion` `tbl_apr` on((`tbl_usoli`.`id_usoli` = `tbl_apr`.`id_usoli_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) where (`tbl_cate_zonas`.`id_categoria_fk` = `tbl_cate`.`id_categoria`);






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_desglose` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cargo` AS `cargo`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_zonas`.`nombre_zona` AS `nombre_zona`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`lugar_gira` AS `lgira`,`tbl_usoli`.`proposito` AS `pgira`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`estado` AS `estado`,`tbl_sgenerales`.`id_vehiculo_fk` AS `id_vehiculo`,`tbl_sgenerales`.`id_sgenerales` AS `id_sgenerales`,`tbl_apro`.`anticipo` AS `anticipo`,`tbl_apro`.`id_aprobacion` AS `id_aprobacion`,`tbl_apro`.`num_transaccion` AS `num_transaccion`,`tbl_apro`.`tipo_transaccion` AS `tipo_transaccion` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_servicios_generales` `tbl_sgenerales` on((`tbl_usoli`.`id_usoli` = `tbl_sgenerales`.`id_usoli_fk`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_aprobacion` `tbl_apro` on((`tbl_usoli`.`id_usoli` = `tbl_apro`.`id_usoli_fk`)));






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_empleados` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,(select if((unix_timestamp(now()) > unix_timestamp(`tbl_man_conductor`.`fecha_vencimiento`)),'VENCIDA','VIGENTE') from `tbl_man_conductor` where (`tbl_man_conductor`.`id_empleado_fk` = `tbl_emp`.`id_empleado`)) AS `estado_lic`,`tbl_emp`.`estado` AS `estado`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`reloj_marcador` AS `reloj`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`estado_gira` AS `estado_gira`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia` from ((`tbl_man_empleados` `tbl_emp` join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`)));

INSERT INTO v_empleados VALUES("LUIS ORDONEZ","","ACTIVO","2","12345678","0801-1995-05807","1234","PROGRAMADOR SFSSDF SFSDF","DISPONIBLE","I","1","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("LEYDY RAMIREZ","","ACTIVO","3","548754652125","0814-1986-00238","5383","AUDITOR","DISPONIBLE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JUAN BONILLA","","ACTIVO","8","5421542658541","0801-1995-05809","1","PROGRAMADOR","DISPONIBLE","I","1","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("SAID ROJAS","","ACTIVO","11","23456","4444-4444-44444","2342","CONSERJE","DISPONIBLE","I","1","MINAS Y GEOLOGIA","9");
INSERT INTO v_empleados VALUES("PEDRO ZELAYA","","ACTIVO","17","23222222222222222222","6666-6666-66666","65465","CONDUCTOR","DISPONIBLE","I","1","LABORATORIO","11");
INSERT INTO v_empleados VALUES("KARLA GARCIA","","ACTIVO","18","0801198106359","0801-1981-06359","10527","GERENTE","DISPONIBLE","I","1","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("GUILLERMO DOLORES","","ACTIVO","20","67890","1234-2134-12412","23412","DFGHJ","DISPONIBLE","I","1","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("HAROLD BETANCOUR","","ACTIVO","21","09876543","9999-9999-99999","2000","CONDUCTOR","DISPONIBLE","I","1","RELACIONES PUBLICAS","12");
INSERT INTO v_empleados VALUES("QUIMBERLIN MUNOZ","","ACTIVO","22","7777777777","7777-7777-77777","7777","CONDUCTOR","DISPONIBLE","I","1","SECRETARIA LEGAL","10");
INSERT INTO v_empleados VALUES("JULIO REYES","","ACTIVO","4","6524587562124","0801-1987-16541","5754","CONDUCTOR","DISPONIBLE","II","2","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("JUANITO GARCIA","","ACTIVO","15","0258","0777-7777-77777","25","CONDUCTOR","DISPONIBLE","II","2","LABORATORIO","11");
INSERT INTO v_empleados VALUES("SONIASSSSSS MATUTE","","ACTIVO","16","0257","0888-8888-88888","3","OBRERO","DISPONIBLE","II","2","DESARROLLO SOCIAL","8");
INSERT INTO v_empleados VALUES("TATIANA BUQUE","","ACTIVO","19","98765","1213-2412-34123","1234","PRUEBAN","DISPONIBLE","II","2","INFORMATICA","6");
INSERT INTO v_empleados VALUES("LOUIS SDF","","ACTIVO","25","45534","0000-0000-00001","2345","DFD","DISPONIBLE","II","2","AMBIENTE Y SEGURIDAD","7");
INSERT INTO v_empleados VALUES("BRIAN IZCOA","","ACTIVO","5","35214523012401","0801-1994-00395","6377","ANALISTA","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("ADAN RAMIREZ","","ACTIVO","7","8457853045215","2222-2222-22222","4567","CONSERJE","DISPONIBLE","III","3","SECRETARIA LEGAL","10");
INSERT INTO v_empleados VALUES("PEDRO FUNEZ","","ACTIVO","9","987654321","5555-5555-55555","2","CATRASTOFICO","DISPONIBLE","III","3","AMBIENTE Y SEGURIDAD","7");
INSERT INTO v_empleados VALUES("CRISTIAN RIVERA","","ACTIVO","10","987654321","3333-3333-33333","9999","PROGRAMADOR","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("MARTHA LOPEZ","","ACTIVO","12","1111-1111-1111-1111","1111-1111-11111","900","GERENTE DE RECURSOS HUMANOS","DISPONIBLE","III","3","CATASTRAL","3");
INSERT INTO v_empleados VALUES("LOURDES ORELLANA","","ACTIVO","14","123654798","0801-1993-01402","555","ASESORA","DISPONIBLE","III","3","MINAS Y GEOLOGIA","9");
INSERT INTO v_empleados VALUES("KAREN PEREZ","","ACTIVO","23","1587","0000-0000-00000","110","CONDUCTOR","DISPONIBLE","III","3","DESARROLLO SOCIAL","8");
INSERT INTO v_empleados VALUES("JUAN LOPEZ","","ACTIVO","26","0101100100","0801-2018-00017","10101","SUPERVISOR","DISPONIBLE","III","3","INFORMATICA","6");
INSERT INTO v_empleados VALUES("ANA VASQUEZ","VENCIDA","ACTIVO","1","524512456235","1709-1996-00602","1234","CONDUCTOR","EN GIRA","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JOSE ESCOTO","VIGENTE","ACTIVO","6","5426854210324","0801-2008-11111","5648","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("MARITZA FLORES","","INACTIVO","13","243234","8888-8888-88888","234","CONDUCTOR","DISPONIBLE","IV","4","CATASTRAL","3");
INSERT INTO v_empleados VALUES("WALTER CARCAMO","","ACTIVO","24","30145","0111-1111-11111","300","CONDUCTOR","DISPONIBLE","V","5","MINAS Y GEOLOGIA","9");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_traer_empleados` AS select `tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_emp`.`telefono` AS `telefono`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`nombre1` AS `nombre1`,`tbl_emp`.`nombre2` AS `nombre2`,`tbl_emp`.`apellido1` AS `apellido1`,`tbl_emp`.`apellido2` AS `apellido2`,`tbl_emp`.`reloj_marcador` AS `reloj_marcador`,`tbl_emp`.`estado_civil` AS `estado_civil`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`salario` AS `salario`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`estado` AS `estado`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_muni`.`municipio` AS `municipio`,`tbl_dire`.`id_municipio_fk` AS `id_municipio_fk`,`tbl_dire`.`direccion_detalle` AS `direccion` from ((((`tbl_man_empleados` `tbl_emp` join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_direcciones_empleados` `tbl_dire` on((`tbl_emp`.`id_empleado` = `tbl_dire`.`id_empleado_fk`))) join `tbl_man_municipios` `tbl_muni` on((`tbl_dire`.`id_municipio_fk` = `tbl_muni`.`id_municipio`)));

INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","1111-111","1709-1996-00602","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","VIUDO","CONDUCTOR","2000.00","524512456235","ACTIVO","IV","4","JUTIAPA","4","LA ARBELOA");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05807","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","12345678","ACTIVO","I","1","LA CEIBA","1","LA TRAVESIA");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","8862-4608","0814-1986-00238","3","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","CASADO","AUDITOR","10000.00","548754652125","ACTIVO","I","1","TEGUCIGALPA D.C","110","COL RESIDENCIAL PLAZA ");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","4444-4444","0801-1987-16541","4","JULIO","JOSUE","REYES","POSADAS","5754","default","CONDUCTOR","10000.00","6524587562124","ACTIVO","II","2","LA CEIBA","1"," LA PRADERA");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","5555-5555","0801-1994-00395","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","CASADO","ANALISTA","10000.00","35214523012401","ACTIVO","III","3","LA CEIBA","1","PRADOS UNIVERSITARION");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","6666-6666","0801-2008-11111","6","JOSE","RAMON","ESCOTO","FLORES","5648","SOLTERO","CONDUCTOR","10000.00","5426854210324","ACTIVO","IV","4","JUTIAPA","4","LOMAS DEL TONCONTIN");
INSERT INTO v_traer_empleados VALUES("SECRETARIA LEGAL","10","7777-7777","2222-2222-22222","7","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","CASADO","CONSERJE","9500.00","8457853045215","ACTIVO","III","3","LA CEIBA","1","ZAMBO CRECK");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05809","8","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","SOLTERO","PROGRAMADOR","9999.00","5421542658541","ACTIVO","I","1","TEGUCIGALPA D.C","110","LA KENNEDY");
INSERT INTO v_traer_empleados VALUES("AMBIENTE Y SEGURIDAD","7","5555-5555","5555-5555-55555","9","PEDRO","ANTONIO","FUNEZ","SUNIGA","2","SOLTERO","CATRASTOFICO","10000.00","987654321","ACTIVO","III","3","LA CEIBA","1","SDFSDF");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","2222-2222","3333-3333-33333","10","CRISTIAN","JOSUE","RIVERA","RAMIREZ","9999","SOLTERO","PROGRAMADOR","20000.00","987654321","ACTIVO","III","3","TEGUCIGALPA D.C","110","LA CANADA");
INSERT INTO v_traer_empleados VALUES("MINAS Y GEOLOGIA","9","2323-4234","4444-4444-44444","11","SAID","JOSE","ROJAS","GONZALEZ","2342","DIVORCIADO","CONSERJE","345.00","23456","ACTIVO","I","1","JUTIAPA","4","ADASDASD");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","1111-1111","1111-1111-11111","12","MARTHA","CAROLINA","LOPEZ","GARCIA","900","DIVORCIADO","GERENTE DE RECURSOS HUMANOS","12000.00","1111-1111-1111-1111","ACTIVO","III","3","LA CEIBA","1","CUALQUEIR");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","2342-34","8888-8888-88888","13","MARITZA","IRIANA","FLORES","SALGADO","234","default","CONDUCTOR","0.00","243234","INACTIVO","IV","4","EL PORVENIR","2","CERCA DE OTRA CASA");
INSERT INTO v_traer_empleados VALUES("MINAS Y GEOLOGIA","9","9678-4094","0801-1993-01402","14","LOURDES","SUYAPA","ORELLANA","VILLAFRANCA","555","CASADO","ASESORA","0.00","123654798","ACTIVO","III","3","SAN FRANCISCO","6","111111111111111111");
INSERT INTO v_traer_empleados VALUES("LABORATORIO","11","12345","0777-7777-77777","15","JUANITO","JAIME","GARCIA","GARCIA","25","SOLTERO","CONDUCTOR","20000.00","0258","ACTIVO","II","2","SANTA ROSA DE COPAN","40","RES DEL TABLON");
INSERT INTO v_traer_empleados VALUES("DESARROLLO SOCIAL","8","369","0888-8888-88888","16","SONIASSSSSS","ALEJANDRA","MATUTE","CAMOTE","3","SOLTERO","OBRERO","60000.00","0257","ACTIVO","II","2","SAN ANTONIO","153","PRUEBAN");
INSERT INTO v_traer_empleados VALUES("LABORATORIO","11","9999-9999","6666-6666-66666","17","PEDRO","ALBEIRO","ZELAYA","MARTINEZ","65465","SOLTERO","CONDUCTOR","2147483648.00","23222222222222222222","ACTIVO","I","1","LA CEIBA","1","DFGHJK");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","9966-0186","0801-1981-06359","18","KARLA","MELISA","GARCIA","PINEDA","10527","CASADO","GERENTE","30000.00","0801198106359","ACTIVO","I","1","LA CEIBA","1","PRUEBAC");
INSERT INTO v_traer_empleados VALUES("INFORMATICA","6","2321-3421","1213-2412-34123","19","TATIANA","ENRIQUETA","BUQUE","PRUEBAN","1234","SOLTERO","PRUEBAN","87654356.00","98765","ACTIVO","II","2","LA CEIBA","1","DFGHJK");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","5435-6754","1234-2134-12412","20","GUILLERMO","FRANCISCO","DOLORES","ZURDO","23412","SOLTERO","DFGHJ","678.00","67890","ACTIVO","I","1","LA CEIBA","1","ASDFGBN");
INSERT INTO v_traer_empleados VALUES("RELACIONES PUBLICAS","12","PRUEBAC","9999-9999-99999","21","HAROLD","MAXIMO","BETANCOUR","CACIQUE","2000","SOLTERO","CONDUCTOR","12345.00","09876543","ACTIVO","I","1","LA CEIBA","1","SDFSDF");
INSERT INTO v_traer_empleados VALUES("SECRETARIA LEGAL","10","7777-7777","7777-7777-77777","22","QUIMBERLIN","VALENTINA","MUNOZ","RAMIREZ","7777","SOLTERO","CONDUCTOR","7777.00","7777777777","ACTIVO","I","1","ESPARTA","3","ASDFGHJK");
INSERT INTO v_traer_empleados VALUES("DESARROLLO SOCIAL","8","2222","0000-0000-00000","23","KAREN","MARCELA","PEREZ","MENCIA","110","SOLTERO","CONDUCTOR","9500.00","1587","ACTIVO","III","3","TELA","7","SDFGHJ5");
INSERT INTO v_traer_empleados VALUES("MINAS Y GEOLOGIA","9","234","0111-1111-11111","24","WALTER","ANTONIO","CARCAMO","NUñEZ","300","SOLTERO","CONDUCTOR","7500.00","30145","ACTIVO","V","5","SAN FRANCISCO","6","HGNGFDVSDC");
INSERT INTO v_traer_empleados VALUES("AMBIENTE Y SEGURIDAD","7","34","0000-0000-00001","25","LOUIS","SDFSD","SDF","DFGFDF","2345","SOLTERO","DFD","345.00","45534","ACTIVO","II","2","LA CEIBA","1","SDFSDF");
INSERT INTO v_traer_empleados VALUES("INFORMATICA","6","2220-0000","0801-2018-00017","26","JUAN","DIEGO","LOPEZ","MARTINEZ","10101","CASADO","SUPERVISOR","15000.00","0101100100","ACTIVO","III","3","SAN FRANCISCO","6","COL KENNEDY");




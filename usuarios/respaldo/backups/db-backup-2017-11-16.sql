

CREATE TABLE `tbl_aprobacion` (
  `id_aprobacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cta_fk` int(11) NOT NULL,
  `id_usoli_fk` int(11) NOT NULL,
  `tipo_transaccion` varchar(45) NOT NULL,
  `num_transaccion` int(11) NOT NULL,
  `f01_cheque` bigint(100) DEFAULT NULL,
  `anticipo` decimal(12,2) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_aprobacion VALUES("1","2","1","DEPOSITO","23","0","5000.00","LUIS","","2017-11-10","DGL","QWEQW","LUIS","2017-11-10");
INSERT INTO tbl_aprobacion VALUES("2","3","2","DEPOSITO","34","0","10000.00","LUIS","","2017-11-10","CANCELADO","GGGGGGGGG","LRAMIREZ","2017-11-11");
INSERT INTO tbl_aprobacion VALUES("3","1","3","DEPOSITO","1","0","2000.00","LRAMIREZ","NO","2017-11-11","CANCELADO","DFGHJK","JESCOTO","2017-11-11");
INSERT INTO tbl_aprobacion VALUES("4","1","3","DEPOSITO","1","0","2.00","LRAMIREZ","MMMM","2017-11-11","CANCELADO","DFGHJK","JESCOTO","2017-11-11");
INSERT INTO tbl_aprobacion VALUES("5","1","3","CHEQUE","1","4","1.00","LRAMIREZ","NO","2017-11-11","CANCELADO","DFGHJK","JESCOTO","2017-11-11");
INSERT INTO tbl_aprobacion VALUES("6","1","4","CHEQUE","1","11","5.00","LRAMIREZ","MMM","2017-11-11","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("7","1","2","CHEQUE","4","1","1.00","LRAMIREZ","GHH","2017-11-11","APR","","","0000-00-00");





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
) ENGINE=InnoDB AUTO_INCREMENT=898 DEFAULT CHARSET=utf8;

INSERT INTO tbl_bitacora VALUES("1","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:01:40");
INSERT INTO tbl_bitacora VALUES("2","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:01:49");
INSERT INTO tbl_bitacora VALUES("3","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:02:28");
INSERT INTO tbl_bitacora VALUES("4","ACTUALIZAR","tbl_man_empleados","apellido2","DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD","DDDDDDD","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:04:51");
INSERT INTO tbl_bitacora VALUES("5","ACTUALIZAR","tbl_man_empleados","apellido2","SSSSSSSSSSSSSSS","SSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:05:02");
INSERT INTO tbl_bitacora VALUES("6","ACTUALIZAR","tbl_man_empleados","nombre1","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA","AAAAAAA","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:05:25");
INSERT INTO tbl_bitacora VALUES("7","ACTUALIZAR","tbl_man_empleados","nombre2","BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB","BBBBBBBBBBBBBBB","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:05:38");
INSERT INTO tbl_bitacora VALUES("8","ACTUALIZAR","tbl_man_empleados","apellido1","CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC","CCCCCCC","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:05:55");
INSERT INTO tbl_bitacora VALUES("9","ACTUALIZAR","tbl_man_empleados","apellido1","XXXXXXXXXXXXXX","XXXX","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:06:07");
INSERT INTO tbl_bitacora VALUES("10","ACTUALIZAR","tbl_man_empleados","nombre2","BBBBBBBBBBBBBBB","BBBBBBBB","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:06:25");
INSERT INTO tbl_bitacora VALUES("11","ACTUALIZAR","tbl_man_empleados","nombre2","SSSSSSSSSSSS","SSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:06:36");
INSERT INTO tbl_bitacora VALUES("12","ACTUALIZAR","tbl_man_categoria_empleados","comprende","SECRETARIOS GENERALES, DIRECTIVOS GENERALES Y SUB-DIRECTIVOS GENERALES, ASESORES ESPECIALES","SECRETARIOS GENERALES, DIRECTIVOS GENER CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:33:02");
INSERT INTO tbl_bitacora VALUES("13","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:34:58");
INSERT INTO tbl_bitacora VALUES("14","ACTUALIZAR","tbl_man_vehiculos","placa_vehiculo","PDK-1234","PDK-12345","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:36:17");
INSERT INTO tbl_bitacora VALUES("15","ACTUALIZAR","tbl_man_vehiculos","fecha_modificacion","2017-11-06","2017-11-08","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:36:17");
INSERT INTO tbl_bitacora VALUES("16","ACTUALIZAR","tbl_parametros","intentos","3","4","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 00:44:37");
INSERT INTO tbl_bitacora VALUES("17","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:37");
INSERT INTO tbl_bitacora VALUES("18","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:39");
INSERT INTO tbl_bitacora VALUES("19","ACTUALIZAR","tbl_man_usuarios","intentos","2","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:41");
INSERT INTO tbl_bitacora VALUES("20","ACTUALIZAR","tbl_man_usuarios","intentos","3","4","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:44");
INSERT INTO tbl_bitacora VALUES("21","ACTUALIZAR","tbl_man_usuarios","estado_usuario","A","B","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:44");
INSERT INTO tbl_bitacora VALUES("22","ACTUALIZAR","tbl_man_usuarios","intentos","4","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:05:44");
INSERT INTO tbl_bitacora VALUES("23","ACTUALIZAR","tbl_man_usuarios","estado_usuario","B","A","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:06:43");
INSERT INTO tbl_bitacora VALUES("24","ACTUALIZAR","tbl_man_empleados","nombre1","X","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:31:02");
INSERT INTO tbl_bitacora VALUES("25","ACTUALIZAR","tbl_man_empleados","nombre2","SSSSSSS","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:31:02");
INSERT INTO tbl_bitacora VALUES("26","ACTUALIZAR","tbl_man_empleados","apellido1","XXXX","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:31:02");
INSERT INTO tbl_bitacora VALUES("27","ACTUALIZAR","tbl_man_empleados","apellido2","SSSSSSS","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXX","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:31:02");
INSERT INTO tbl_bitacora VALUES("28","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-07","2017-11-08","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:31:02");
INSERT INTO tbl_bitacora VALUES("29","ACTUALIZAR","tbl_man_empleados","nombre1","AAAAAAA","AAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("30","ACTUALIZAR","tbl_man_empleados","nombre2","BBBBBBBB","BBBBBBBBSSSSSSSSSSSSSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("31","ACTUALIZAR","tbl_man_empleados","apellido1","CCCCCCC","CCCCCCCSSSSSSSSSSSSSSSSSSSSSSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("32","ACTUALIZAR","tbl_man_empleados","apellido2","DDDDDDD","DDDDDDDSSSSSSSSSSSSSSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("33","ACTUALIZAR","tbl_man_empleados","cargo","CONDUCTOR","ADMINISTRADOR","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("34","ACTUALIZAR","tbl_man_empleados","modificado_por","LRAMIREZ","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("35","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-07","2017-11-08","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:34:44");
INSERT INTO tbl_bitacora VALUES("36","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:37:06");
INSERT INTO tbl_bitacora VALUES("37","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:39:29");
INSERT INTO tbl_bitacora VALUES("38","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:41:58");
INSERT INTO tbl_bitacora VALUES("39","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:41:58");
INSERT INTO tbl_bitacora VALUES("40","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:42:56");
INSERT INTO tbl_bitacora VALUES("41","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:42:56");
INSERT INTO tbl_bitacora VALUES("42","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:43:08");
INSERT INTO tbl_bitacora VALUES("43","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","AAA","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:43:08");
INSERT INTO tbl_bitacora VALUES("44","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:43:09");
INSERT INTO tbl_bitacora VALUES("45","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:43:38");
INSERT INTO tbl_bitacora VALUES("46","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:43:38");
INSERT INTO tbl_bitacora VALUES("47","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("48","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("49","ACTUALIZAR","tbl_man_vehiculos","kilometraje","654327","44","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("50","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("51","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("52","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:45:36");
INSERT INTO tbl_bitacora VALUES("53","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("54","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("55","ACTUALIZAR","tbl_man_vehiculos","kilometraje","98998989","878778","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("56","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("57","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("58","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:46:23");
INSERT INTO tbl_bitacora VALUES("59","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("60","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("61","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("62","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SSSS","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("63","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("64","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:11");
INSERT INTO tbl_bitacora VALUES("65","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:54");
INSERT INTO tbl_bitacora VALUES("66","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:54");
INSERT INTO tbl_bitacora VALUES("67","ACTUALIZAR","tbl_man_vehiculos","kilometraje","44","989899","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:54");
INSERT INTO tbl_bitacora VALUES("68","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:54");
INSERT INTO tbl_bitacora VALUES("69","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:47:54");
INSERT INTO tbl_bitacora VALUES("70","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:49:41");
INSERT INTO tbl_bitacora VALUES("71","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:49:41");
INSERT INTO tbl_bitacora VALUES("72","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:49:41");
INSERT INTO tbl_bitacora VALUES("73","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:49:41");
INSERT INTO tbl_bitacora VALUES("74","INSERTAR","tbl_desglose_gastos","000001","","000001","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("75","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("76","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("77","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("78","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("79","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 01:53:49");
INSERT INTO tbl_bitacora VALUES("80","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 16:49:03");
INSERT INTO tbl_bitacora VALUES("81","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 16:49:04");
INSERT INTO tbl_bitacora VALUES("82","ACTUALIZAR","tbl_servicios_generales","estado","CANCELADO","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 16:49:04");
INSERT INTO tbl_bitacora VALUES("83","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 16:49:04");
INSERT INTO tbl_bitacora VALUES("84","ACTUALIZAR","tbl_man_vehiculos","placa_vehiculo","1234","12345","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:17:33");
INSERT INTO tbl_bitacora VALUES("85","ACTUALIZAR","tbl_man_vehiculos","modificado_por","LRAMIREZ","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:17:33");
INSERT INTO tbl_bitacora VALUES("86","ACTUALIZAR","tbl_man_vehiculos","fecha_modificacion","2017-11-05","2017-11-08","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:17:33");
INSERT INTO tbl_bitacora VALUES("87","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:19:39");
INSERT INTO tbl_bitacora VALUES("88","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:25:07");
INSERT INTO tbl_bitacora VALUES("89","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:26:17");
INSERT INTO tbl_bitacora VALUES("90","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:26:23");
INSERT INTO tbl_bitacora VALUES("91","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:31:21");
INSERT INTO tbl_bitacora VALUES("92","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:41:18");
INSERT INTO tbl_bitacora VALUES("93","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:42:21");
INSERT INTO tbl_bitacora VALUES("94","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:42:38");
INSERT INTO tbl_bitacora VALUES("95","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:47:07");
INSERT INTO tbl_bitacora VALUES("96","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:49:12");
INSERT INTO tbl_bitacora VALUES("97","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 17:51:45");
INSERT INTO tbl_bitacora VALUES("98","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:04:48");
INSERT INTO tbl_bitacora VALUES("99","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:17:25");
INSERT INTO tbl_bitacora VALUES("100","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:17:30");
INSERT INTO tbl_bitacora VALUES("101","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:21:18");
INSERT INTO tbl_bitacora VALUES("102","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:21:21");
INSERT INTO tbl_bitacora VALUES("103","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:22:36");
INSERT INTO tbl_bitacora VALUES("104","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:22:42");
INSERT INTO tbl_bitacora VALUES("105","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:27:45");
INSERT INTO tbl_bitacora VALUES("106","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:29:19");
INSERT INTO tbl_bitacora VALUES("107","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 18:30:33");
INSERT INTO tbl_bitacora VALUES("108","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:01:48");
INSERT INTO tbl_bitacora VALUES("109","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:05:49");
INSERT INTO tbl_bitacora VALUES("110","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:06:27");
INSERT INTO tbl_bitacora VALUES("111","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:07:57");
INSERT INTO tbl_bitacora VALUES("112","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:11:18");
INSERT INTO tbl_bitacora VALUES("113","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:23:08");
INSERT INTO tbl_bitacora VALUES("114","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:23:11");
INSERT INTO tbl_bitacora VALUES("115","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:24:27");
INSERT INTO tbl_bitacora VALUES("116","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:28:35");
INSERT INTO tbl_bitacora VALUES("117","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:46:55");
INSERT INTO tbl_bitacora VALUES("118","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:50:20");
INSERT INTO tbl_bitacora VALUES("119","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:50:35");
INSERT INTO tbl_bitacora VALUES("120","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:52:40");
INSERT INTO tbl_bitacora VALUES("121","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:52:47");
INSERT INTO tbl_bitacora VALUES("122","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:53:11");
INSERT INTO tbl_bitacora VALUES("123","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 19:54:29");
INSERT INTO tbl_bitacora VALUES("124","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:17:31");
INSERT INTO tbl_bitacora VALUES("125","ACTUALIZAR","tbl_man_vehiculos","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:18:18");
INSERT INTO tbl_bitacora VALUES("126","ACTUALIZAR","tbl_man_vehiculos","fecha_modificacion","0000-00-00","2017-11-08","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:18:18");
INSERT INTO tbl_bitacora VALUES("127","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:42:27");
INSERT INTO tbl_bitacora VALUES("128","ACTUALIZAR","tbl_man_vehiculos","modificado_por","ADMIN","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:42:27");
INSERT INTO tbl_bitacora VALUES("129","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-08 20:43:27");
INSERT INTO tbl_bitacora VALUES("130","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 00:21:39");
INSERT INTO tbl_bitacora VALUES("131","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 00:21:39");
INSERT INTO tbl_bitacora VALUES("132","ACTUALIZAR","tbl_man_empleados","cargo","ADMINISTRADOR","CONDUCTOR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 00:27:52");
INSERT INTO tbl_bitacora VALUES("133","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-08","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 00:27:52");
INSERT INTO tbl_bitacora VALUES("134","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 16:46:56");
INSERT INTO tbl_bitacora VALUES("135","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 16:46:57");
INSERT INTO tbl_bitacora VALUES("136","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 16:47:09");
INSERT INTO tbl_bitacora VALUES("137","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 16:59:20");
INSERT INTO tbl_bitacora VALUES("138","INSERTAR","tbl_man_vehiculos","id_vehiculo","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:03:38");
INSERT INTO tbl_bitacora VALUES("139","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:40:49");
INSERT INTO tbl_bitacora VALUES("140","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:40:49");
INSERT INTO tbl_bitacora VALUES("141","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:44:19");
INSERT INTO tbl_bitacora VALUES("142","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","DSSSDFSDFSDFDSFSDF","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:44:19");
INSERT INTO tbl_bitacora VALUES("143","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:44:19");
INSERT INTO tbl_bitacora VALUES("144","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:45:01");
INSERT INTO tbl_bitacora VALUES("145","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:45:01");
INSERT INTO tbl_bitacora VALUES("146","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("147","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("148","ACTUALIZAR","tbl_man_vehiculos","kilometraje","989899","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("149","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("150","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("151","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:47:53");
INSERT INTO tbl_bitacora VALUES("152","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("153","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","DSSSDFSDFSDFDSFSDF","HHHHHHHH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("154","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("155","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","HHHHHHHH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("156","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("157","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("158","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","HHHHHHHH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:52:30");
INSERT INTO tbl_bitacora VALUES("159","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:47");
INSERT INTO tbl_bitacora VALUES("160","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("161","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("162","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("163","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","QWESR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("164","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("165","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 17:59:48");
INSERT INTO tbl_bitacora VALUES("166","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:17");
INSERT INTO tbl_bitacora VALUES("167","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:17");
INSERT INTO tbl_bitacora VALUES("168","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:17");
INSERT INTO tbl_bitacora VALUES("169","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:17");
INSERT INTO tbl_bitacora VALUES("170","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("171","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("172","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("173","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","QWESR","DFH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("174","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("175","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","DFH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("176","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("177","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:01:37");
INSERT INTO tbl_bitacora VALUES("178","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","AAA","DFHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("179","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("180","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","DFHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("181","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("182","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("183","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","SSSS","DFHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:02:02");
INSERT INTO tbl_bitacora VALUES("184","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:07:49");
INSERT INTO tbl_bitacora VALUES("185","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:21:55");
INSERT INTO tbl_bitacora VALUES("186","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:21:55");
INSERT INTO tbl_bitacora VALUES("187","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("188","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("189","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","1213","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("190","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("191","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("192","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:24:35");
INSERT INTO tbl_bitacora VALUES("193","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:32");
INSERT INTO tbl_bitacora VALUES("194","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","ASDFAFAS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:32");
INSERT INTO tbl_bitacora VALUES("195","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:32");
INSERT INTO tbl_bitacora VALUES("196","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","ASDFAFAS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:32");
INSERT INTO tbl_bitacora VALUES("197","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:35");
INSERT INTO tbl_bitacora VALUES("198","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:25:36");
INSERT INTO tbl_bitacora VALUES("199","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:26:06");
INSERT INTO tbl_bitacora VALUES("200","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:26:06");
INSERT INTO tbl_bitacora VALUES("201","ACTUALIZAR","tbl_man_vehiculos","kilometraje","1213","213","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:26:06");
INSERT INTO tbl_bitacora VALUES("202","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:26:06");
INSERT INTO tbl_bitacora VALUES("203","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:26:06");
INSERT INTO tbl_bitacora VALUES("204","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","ASDFAFAS","SDA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("205","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","ASDFAFAS","SDA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("206","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("207","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SDA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("208","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("209","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","SDA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("210","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("211","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("212","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","SDA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("213","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:04");
INSERT INTO tbl_bitacora VALUES("214","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:57");
INSERT INTO tbl_bitacora VALUES("215","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:27:58");
INSERT INTO tbl_bitacora VALUES("216","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:02");
INSERT INTO tbl_bitacora VALUES("217","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:02");
INSERT INTO tbl_bitacora VALUES("218","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:34");
INSERT INTO tbl_bitacora VALUES("219","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:34");
INSERT INTO tbl_bitacora VALUES("220","ACTUALIZAR","tbl_man_vehiculos","kilometraje","345678","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:34");
INSERT INTO tbl_bitacora VALUES("221","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:34");
INSERT INTO tbl_bitacora VALUES("222","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:34");
INSERT INTO tbl_bitacora VALUES("223","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:28:36");
INSERT INTO tbl_bitacora VALUES("224","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("225","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","QWERTYU","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("226","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("227","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","QWERTYU","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("228","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("229","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("230","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","QWERTYU","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("231","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:17");
INSERT INTO tbl_bitacora VALUES("232","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("233","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("234","ACTUALIZAR","tbl_man_vehiculos","kilometraje","213","10002","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("235","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("236","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("237","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:29:21");
INSERT INTO tbl_bitacora VALUES("238","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:35:50");
INSERT INTO tbl_bitacora VALUES("239","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:35:52");
INSERT INTO tbl_bitacora VALUES("240","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:35:52");
INSERT INTO tbl_bitacora VALUES("241","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:35:52");
INSERT INTO tbl_bitacora VALUES("242","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("243","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("244","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("245","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("246","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","SDFHJKL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("247","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("248","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:37:41");
INSERT INTO tbl_bitacora VALUES("249","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:43:34");
INSERT INTO tbl_bitacora VALUES("250","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:43:34");
INSERT INTO tbl_bitacora VALUES("251","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:43:34");
INSERT INTO tbl_bitacora VALUES("252","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:43:34");
INSERT INTO tbl_bitacora VALUES("253","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:49");
INSERT INTO tbl_bitacora VALUES("254","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:50");
INSERT INTO tbl_bitacora VALUES("255","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:50");
INSERT INTO tbl_bitacora VALUES("256","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","SDFHJKL","YGTGTGGYGYTYGYGT","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("257","ACTUALIZAR","tabla_aprobacion","cancelado_por","JESCOTO","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("258","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("259","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","YGTGTGGYGYTYGYGT","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("260","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("261","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:49:51");
INSERT INTO tbl_bitacora VALUES("262","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:50:24");
INSERT INTO tbl_bitacora VALUES("263","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:50:24");
INSERT INTO tbl_bitacora VALUES("264","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:50:24");
INSERT INTO tbl_bitacora VALUES("265","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:50:24");
INSERT INTO tbl_bitacora VALUES("266","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("267","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("268","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("269","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","YGTGTGGYGYTYGYGT","FHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("270","ACTUALIZAR","tabla_aprobacion","cancelado_por","ADMIN","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("271","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","YGTGTGGYGYTYGYGT","FHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("272","ACTUALIZAR","tabla_aprobacion","cancelado_por","ADMIN","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("273","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("274","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","FHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("275","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("276","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:14");
INSERT INTO tbl_bitacora VALUES("277","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:40");
INSERT INTO tbl_bitacora VALUES("278","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:40");
INSERT INTO tbl_bitacora VALUES("279","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:40");
INSERT INTO tbl_bitacora VALUES("280","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 18:51:40");
INSERT INTO tbl_bitacora VALUES("281","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("282","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("283","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("284","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FHJ","SDSFSDFSDFDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("285","ACTUALIZAR","tabla_aprobacion","cancelado_por","JESCOTO","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("286","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FHJ","SDSFSDFSDFDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("287","ACTUALIZAR","tabla_aprobacion","cancelado_por","JESCOTO","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("288","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FHJ","SDSFSDFSDFDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("289","ACTUALIZAR","tabla_aprobacion","cancelado_por","JESCOTO","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("290","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("291","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","SDSFSDFSDFDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("292","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("293","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:20");
INSERT INTO tbl_bitacora VALUES("294","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:27");
INSERT INTO tbl_bitacora VALUES("295","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:27");
INSERT INTO tbl_bitacora VALUES("296","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:44");
INSERT INTO tbl_bitacora VALUES("297","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:45");
INSERT INTO tbl_bitacora VALUES("298","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:45");
INSERT INTO tbl_bitacora VALUES("299","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:23:45");
INSERT INTO tbl_bitacora VALUES("300","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:24:40");
INSERT INTO tbl_bitacora VALUES("301","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:24:40");
INSERT INTO tbl_bitacora VALUES("302","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("303","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("304","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","500000","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("305","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("306","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("307","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:25:54");
INSERT INTO tbl_bitacora VALUES("308","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("309","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("310","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("311","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","SDSFSDFSDFDS","SDSDSDDSDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("312","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","SDSFSDFSDFDS","SDSDSDDSDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("313","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","SDSFSDFSDFDS","SDSDSDDSDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("314","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","SDSFSDFSDFDS","SDSDSDDSDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("315","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("316","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","SDSDSDDSDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("317","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("318","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:31");
INSERT INTO tbl_bitacora VALUES("319","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:50");
INSERT INTO tbl_bitacora VALUES("320","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:50");
INSERT INTO tbl_bitacora VALUES("321","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:50");
INSERT INTO tbl_bitacora VALUES("322","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:26:50");
INSERT INTO tbl_bitacora VALUES("323","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:28:06");
INSERT INTO tbl_bitacora VALUES("324","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:28:06");
INSERT INTO tbl_bitacora VALUES("325","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:28:06");
INSERT INTO tbl_bitacora VALUES("326","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:28:06");
INSERT INTO tbl_bitacora VALUES("327","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:57:28");
INSERT INTO tbl_bitacora VALUES("328","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:57:38");
INSERT INTO tbl_bitacora VALUES("329","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:58:04");
INSERT INTO tbl_bitacora VALUES("330","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:58:11");
INSERT INTO tbl_bitacora VALUES("331","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:24");
INSERT INTO tbl_bitacora VALUES("332","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:24");
INSERT INTO tbl_bitacora VALUES("333","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("334","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("335","ACTUALIZAR","tbl_man_vehiculos","kilometraje","10002","77777","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("336","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("337","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("338","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 19:59:46");
INSERT INTO tbl_bitacora VALUES("339","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:00:35");
INSERT INTO tbl_bitacora VALUES("340","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:00:35");
INSERT INTO tbl_bitacora VALUES("341","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:00:35");
INSERT INTO tbl_bitacora VALUES("342","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:00:35");
INSERT INTO tbl_bitacora VALUES("343","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("344","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("345","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("346","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("347","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","DSSDCSDC","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("348","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("349","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:01:17");
INSERT INTO tbl_bitacora VALUES("350","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:02:12");
INSERT INTO tbl_bitacora VALUES("351","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:02:12");
INSERT INTO tbl_bitacora VALUES("352","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:02:12");
INSERT INTO tbl_bitacora VALUES("353","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:02:12");
INSERT INTO tbl_bitacora VALUES("354","INSERTAR","tbl_desglose_gastos","000001","","000001","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("355","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("356","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("357","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("358","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("359","ACTUALIZAR","tabla_aprobacion","estado","CANCELADO","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 20:34:19");
INSERT INTO tbl_bitacora VALUES("360","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:28:42");
INSERT INTO tbl_bitacora VALUES("361","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:28:43");
INSERT INTO tbl_bitacora VALUES("362","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:28:47");
INSERT INTO tbl_bitacora VALUES("363","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:31:46");
INSERT INTO tbl_bitacora VALUES("364","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:31:46");
INSERT INTO tbl_bitacora VALUES("365","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("366","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("367","ACTUALIZAR","tbl_man_vehiculos","kilometraje","77777","11111","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("368","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("369","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("370","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:32:11");
INSERT INTO tbl_bitacora VALUES("371","ACTUALIZAR","tabla_desglose_gastos","des_gcombustible","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:34:27");
INSERT INTO tbl_bitacora VALUES("372","ACTUALIZAR","tabla_desglose_gastos","des_gcombustible","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:34:52");
INSERT INTO tbl_bitacora VALUES("373","ACTUALIZAR","tabla_desglose_gastos","des_ogastos","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:35:38");
INSERT INTO tbl_bitacora VALUES("374","ACTUALIZAR","tabla_desglose_gastos","observaciones","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:40:13");
INSERT INTO tbl_bitacora VALUES("375","ACTUALIZAR","tabla_desglose_gastos","observaciones","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:40:50");
INSERT INTO tbl_bitacora VALUES("376","ACTUALIZAR","tabla_desglose_gastos","observaciones","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:41:15");
INSERT INTO tbl_bitacora VALUES("377","ACTUALIZAR","tabla_desglose_gastos","observaciones","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:41:50");
INSERT INTO tbl_bitacora VALUES("378","ACTUALIZAR","tabla_desglose_gastos","observaciones","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:43:35");
INSERT INTO tbl_bitacora VALUES("379","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:51:57");
INSERT INTO tbl_bitacora VALUES("380","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:51:57");
INSERT INTO tbl_bitacora VALUES("381","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:51:57");
INSERT INTO tbl_bitacora VALUES("382","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:51:57");
INSERT INTO tbl_bitacora VALUES("383","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("384","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("385","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("386","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("387","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","NBVFFFFFFFFFFFFFFFFFFFFFFF","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("388","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("389","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:22");
INSERT INTO tbl_bitacora VALUES("390","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:46");
INSERT INTO tbl_bitacora VALUES("391","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:46");
INSERT INTO tbl_bitacora VALUES("392","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:46");
INSERT INTO tbl_bitacora VALUES("393","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:52:46");
INSERT INTO tbl_bitacora VALUES("394","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("395","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("396","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("397","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","NBVFFFFFFFFFFFFFFFFFFFFFFF","BBVVVVVVVVVVVVVVVVVVVV","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("398","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("399","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","BBVVVVVVVVVVVVVVVVVVVV","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("400","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("401","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:14");
INSERT INTO tbl_bitacora VALUES("402","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("403","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("404","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("405","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("406","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","BBVVVVVVVVVVVVVVVVVVVV","VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("407","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","BBVVVVVVVVVVVVVVVVVVVV","VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:53:31");
INSERT INTO tbl_bitacora VALUES("408","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:54:59");
INSERT INTO tbl_bitacora VALUES("409","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:54:59");
INSERT INTO tbl_bitacora VALUES("410","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("411","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("412","ACTUALIZAR","tbl_man_vehiculos","kilometraje","11111","888888","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("413","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("414","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("415","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:55:36");
INSERT INTO tbl_bitacora VALUES("416","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:03");
INSERT INTO tbl_bitacora VALUES("417","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:03");
INSERT INTO tbl_bitacora VALUES("418","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("419","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("420","ACTUALIZAR","tbl_man_vehiculos","kilometraje","500000","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("421","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("422","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("423","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:18");
INSERT INTO tbl_bitacora VALUES("424","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:45");
INSERT INTO tbl_bitacora VALUES("425","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:45");
INSERT INTO tbl_bitacora VALUES("426","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:45");
INSERT INTO tbl_bitacora VALUES("427","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:45");
INSERT INTO tbl_bitacora VALUES("428","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:48");
INSERT INTO tbl_bitacora VALUES("429","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:48");
INSERT INTO tbl_bitacora VALUES("430","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:48");
INSERT INTO tbl_bitacora VALUES("431","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 21:56:48");
INSERT INTO tbl_bitacora VALUES("432","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:37");
INSERT INTO tbl_bitacora VALUES("433","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("434","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("435","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("436","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","HHHHHHHHHHHHHHHHHHHHHHHHHH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("437","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("438","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:39");
INSERT INTO tbl_bitacora VALUES("439","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:49");
INSERT INTO tbl_bitacora VALUES("440","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:49");
INSERT INTO tbl_bitacora VALUES("441","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:49");
INSERT INTO tbl_bitacora VALUES("442","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:49");
INSERT INTO tbl_bitacora VALUES("443","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","HHHHHHHHHHHHHHHHHHHHHHHHHH","HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:08:49");
INSERT INTO tbl_bitacora VALUES("444","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("445","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("446","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("447","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("448","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","UYTRE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("449","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("450","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-09","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:15");
INSERT INTO tbl_bitacora VALUES("451","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:24");
INSERT INTO tbl_bitacora VALUES("452","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:24");
INSERT INTO tbl_bitacora VALUES("453","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:24");
INSERT INTO tbl_bitacora VALUES("454","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:24");
INSERT INTO tbl_bitacora VALUES("455","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","UYTRE","JYHTGRFED","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:09:24");
INSERT INTO tbl_bitacora VALUES("456","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:12:57");
INSERT INTO tbl_bitacora VALUES("457","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:12:57");
INSERT INTO tbl_bitacora VALUES("458","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("459","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("460","ACTUALIZAR","tbl_man_vehiculos","kilometraje","888888","22","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("461","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("462","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("463","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:31");
INSERT INTO tbl_bitacora VALUES("464","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("465","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","YTRE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("466","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("467","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","YTRE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("468","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("469","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:13:54");
INSERT INTO tbl_bitacora VALUES("470","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:14:04");
INSERT INTO tbl_bitacora VALUES("471","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:14:04");
INSERT INTO tbl_bitacora VALUES("472","ACTUALIZAR","tbl_man_vehiculos","kilometraje","22","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:14:04");
INSERT INTO tbl_bitacora VALUES("473","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:14:04");
INSERT INTO tbl_bitacora VALUES("474","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:14:04");
INSERT INTO tbl_bitacora VALUES("475","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:15:20");
INSERT INTO tbl_bitacora VALUES("476","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:15:20");
INSERT INTO tbl_bitacora VALUES("477","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:15:20");
INSERT INTO tbl_bitacora VALUES("478","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:15:45");
INSERT INTO tbl_bitacora VALUES("479","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:15:45");
INSERT INTO tbl_bitacora VALUES("480","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:00");
INSERT INTO tbl_bitacora VALUES("481","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:00");
INSERT INTO tbl_bitacora VALUES("482","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:15");
INSERT INTO tbl_bitacora VALUES("483","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:15");
INSERT INTO tbl_bitacora VALUES("484","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:15");
INSERT INTO tbl_bitacora VALUES("485","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:39");
INSERT INTO tbl_bitacora VALUES("486","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:39");
INSERT INTO tbl_bitacora VALUES("487","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:52");
INSERT INTO tbl_bitacora VALUES("488","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:16:52");
INSERT INTO tbl_bitacora VALUES("489","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:17:17");
INSERT INTO tbl_bitacora VALUES("490","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:17:17");
INSERT INTO tbl_bitacora VALUES("491","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:17:39");
INSERT INTO tbl_bitacora VALUES("492","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:17:39");
INSERT INTO tbl_bitacora VALUES("493","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:17:39");
INSERT INTO tbl_bitacora VALUES("494","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:18:24");
INSERT INTO tbl_bitacora VALUES("495","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:18:24");
INSERT INTO tbl_bitacora VALUES("496","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:36:19");
INSERT INTO tbl_bitacora VALUES("497","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-09 22:36:21");
INSERT INTO tbl_bitacora VALUES("498","ACTUALIZAR","tbl_man_usuarios","clave","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","gVHOkN8crjhy9bLbbx18XpYvm18Yt3bVILmMErg5/RI=","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:15:22");
INSERT INTO tbl_bitacora VALUES("499","ACTUALIZAR","tbl_man_usuarios","fecha_modificacion","2017-10-10 00:00:00","2017-11-10 00:00:00","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:15:22");
INSERT INTO tbl_bitacora VALUES("500","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:41");
INSERT INTO tbl_bitacora VALUES("501","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","OKIUJYHTGRFEWS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:41");
INSERT INTO tbl_bitacora VALUES("502","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:41");
INSERT INTO tbl_bitacora VALUES("503","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:49");
INSERT INTO tbl_bitacora VALUES("504","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","RTGEFEW","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:49");
INSERT INTO tbl_bitacora VALUES("505","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:49");
INSERT INTO tbl_bitacora VALUES("506","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:58");
INSERT INTO tbl_bitacora VALUES("507","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","UJYTRGERFWED","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:58");
INSERT INTO tbl_bitacora VALUES("508","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:16:58");
INSERT INTO tbl_bitacora VALUES("509","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:17:53");
INSERT INTO tbl_bitacora VALUES("510","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","JHTGRF","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:17:53");
INSERT INTO tbl_bitacora VALUES("511","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:17:53");
INSERT INTO tbl_bitacora VALUES("512","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:02");
INSERT INTO tbl_bitacora VALUES("513","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","KJHGFD","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:02");
INSERT INTO tbl_bitacora VALUES("514","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:02");
INSERT INTO tbl_bitacora VALUES("515","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:12");
INSERT INTO tbl_bitacora VALUES("516","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","JYHTGFDS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:12");
INSERT INTO tbl_bitacora VALUES("517","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 03:18:17");
INSERT INTO tbl_bitacora VALUES("518","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 04:52:13");
INSERT INTO tbl_bitacora VALUES("519","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 04:52:19");
INSERT INTO tbl_bitacora VALUES("520","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 04:52:26");
INSERT INTO tbl_bitacora VALUES("521","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:29:29");
INSERT INTO tbl_bitacora VALUES("522","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:29:29");
INSERT INTO tbl_bitacora VALUES("523","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:30:05");
INSERT INTO tbl_bitacora VALUES("524","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:30:05");
INSERT INTO tbl_bitacora VALUES("525","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:30:54");
INSERT INTO tbl_bitacora VALUES("526","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:30:54");
INSERT INTO tbl_bitacora VALUES("527","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:31:22");
INSERT INTO tbl_bitacora VALUES("528","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:31:22");
INSERT INTO tbl_bitacora VALUES("529","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:31:47");
INSERT INTO tbl_bitacora VALUES("530","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:31:47");
INSERT INTO tbl_bitacora VALUES("531","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:32:27");
INSERT INTO tbl_bitacora VALUES("532","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:32:27");
INSERT INTO tbl_bitacora VALUES("533","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:35:14");
INSERT INTO tbl_bitacora VALUES("534","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:35:32");
INSERT INTO tbl_bitacora VALUES("535","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("536","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("537","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("538","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("539","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("540","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","RTGEFEW","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("541","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("542","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("543","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("544","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("545","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","XCVBN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:45:39");
INSERT INTO tbl_bitacora VALUES("546","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:46:21");
INSERT INTO tbl_bitacora VALUES("547","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:46:21");
INSERT INTO tbl_bitacora VALUES("548","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("549","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("550","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("551","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("552","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("553","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","XCVBN","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("554","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("555","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("556","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("557","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("558","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","ASDFGHJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:52:30");
INSERT INTO tbl_bitacora VALUES("559","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:54:07");
INSERT INTO tbl_bitacora VALUES("560","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 05:54:07");
INSERT INTO tbl_bitacora VALUES("561","ACTUALIZAR","tbl_man_categoria_empleados","nivel_organizativo","4DCADDDXXX","XX","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 06:08:14");
INSERT INTO tbl_bitacora VALUES("562","ACTUALIZAR","tbl_man_categoria_empleados","modificado_por","LUIS","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 06:08:14");
INSERT INTO tbl_bitacora VALUES("563","ACTUALIZAR","tbl_man_categoria_empleados","fecha_modificacion","2017-11-05","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 06:08:14");
INSERT INTO tbl_bitacora VALUES("564","ACTUALIZAR","tbl_man_categoria_empleados","modificado_por","ADMIN","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 06:08:25");
INSERT INTO tbl_bitacora VALUES("565","ACTUALIZAR","tbl_man_categoria_empleados","fecha_modificacion","2017-11-08","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 06:08:25");
INSERT INTO tbl_bitacora VALUES("566","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:00:27");
INSERT INTO tbl_bitacora VALUES("567","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:00:38");
INSERT INTO tbl_bitacora VALUES("568","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:00:45");
INSERT INTO tbl_bitacora VALUES("569","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:05:36");
INSERT INTO tbl_bitacora VALUES("570","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:05:50");
INSERT INTO tbl_bitacora VALUES("571","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:07:01");
INSERT INTO tbl_bitacora VALUES("572","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:07:09");
INSERT INTO tbl_bitacora VALUES("573","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:08:15");
INSERT INTO tbl_bitacora VALUES("574","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:08:25");
INSERT INTO tbl_bitacora VALUES("575","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","YTRE","ASDFG","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("576","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","YTRE","ASDFG","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("577","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("578","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","ASDFG","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("579","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("580","ACTUALIZAR","tbl_servicios_generales","motivo_cancelacion","","ASDFG","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:34:21");
INSERT INTO tbl_bitacora VALUES("581","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:35:00");
INSERT INTO tbl_bitacora VALUES("582","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:35:07");
INSERT INTO tbl_bitacora VALUES("583","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:35:39");
INSERT INTO tbl_bitacora VALUES("584","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","QWERTY","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:35:39");
INSERT INTO tbl_bitacora VALUES("585","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:35:40");
INSERT INTO tbl_bitacora VALUES("586","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:37:07");
INSERT INTO tbl_bitacora VALUES("587","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:37:07");
INSERT INTO tbl_bitacora VALUES("588","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:38:44");
INSERT INTO tbl_bitacora VALUES("589","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","OTRA VES","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:38:44");
INSERT INTO tbl_bitacora VALUES("590","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:38:44");
INSERT INTO tbl_bitacora VALUES("591","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:39:19");
INSERT INTO tbl_bitacora VALUES("592","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:39:19");
INSERT INTO tbl_bitacora VALUES("593","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("594","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("595","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","2222","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("596","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("597","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("598","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:42:28");
INSERT INTO tbl_bitacora VALUES("599","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:43:18");
INSERT INTO tbl_bitacora VALUES("600","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:43:18");
INSERT INTO tbl_bitacora VALUES("601","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:43:18");
INSERT INTO tbl_bitacora VALUES("602","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:43:18");
INSERT INTO tbl_bitacora VALUES("603","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("604","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("605","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("606","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("607","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","ASDASD","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("608","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("609","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:19");
INSERT INTO tbl_bitacora VALUES("610","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:58");
INSERT INTO tbl_bitacora VALUES("611","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:58");
INSERT INTO tbl_bitacora VALUES("612","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:58");
INSERT INTO tbl_bitacora VALUES("613","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 16:44:58");
INSERT INTO tbl_bitacora VALUES("614","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:34:08");
INSERT INTO tbl_bitacora VALUES("615","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:34:12");
INSERT INTO tbl_bitacora VALUES("616","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:34:21");
INSERT INTO tbl_bitacora VALUES("617","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:34:31");
INSERT INTO tbl_bitacora VALUES("618","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:35:56");
INSERT INTO tbl_bitacora VALUES("619","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:36:01");
INSERT INTO tbl_bitacora VALUES("620","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:36:08");
INSERT INTO tbl_bitacora VALUES("621","ACTUALIZAR","tbl_man_empleados","id_categoria_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:40:00");
INSERT INTO tbl_bitacora VALUES("622","ACTUALIZAR","tbl_man_empleados","modificado_por","LRAMIREZ","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:40:00");
INSERT INTO tbl_bitacora VALUES("623","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-06","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 17:40:00");
INSERT INTO tbl_bitacora VALUES("624","ACTUALIZAR","tabla_aprobacion","estado","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:21:40");
INSERT INTO tbl_bitacora VALUES("625","ACTUALIZAR","tabla_aprobacion","modificado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:21:40");
INSERT INTO tbl_bitacora VALUES("626","ACTUALIZAR","tabla_aprobacion","fecha_modificacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:21:40");
INSERT INTO tbl_bitacora VALUES("627","ACTUALIZAR","tabla_aprobacion","estado","INACTIVO","ACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:21:53");
INSERT INTO tbl_bitacora VALUES("628","ACTUALIZAR","tabla_aprobacion","estado","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:23:06");
INSERT INTO tbl_bitacora VALUES("629","ACTUALIZAR","tabla_aprobacion","modificado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:23:06");
INSERT INTO tbl_bitacora VALUES("630","ACTUALIZAR","tabla_aprobacion","fecha_modificacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:23:06");
INSERT INTO tbl_bitacora VALUES("631","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:35:41");
INSERT INTO tbl_bitacora VALUES("632","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 18:35:52");
INSERT INTO tbl_bitacora VALUES("633","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:18");
INSERT INTO tbl_bitacora VALUES("634","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:19");
INSERT INTO tbl_bitacora VALUES("635","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("636","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("637","ACTUALIZAR","tbl_man_vehiculos","kilometraje","2222","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("638","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("639","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("640","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:34");
INSERT INTO tbl_bitacora VALUES("641","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:55");
INSERT INTO tbl_bitacora VALUES("642","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:55");
INSERT INTO tbl_bitacora VALUES("643","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:41:55");
INSERT INTO tbl_bitacora VALUES("644","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:42:30");
INSERT INTO tbl_bitacora VALUES("645","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:42:30");
INSERT INTO tbl_bitacora VALUES("646","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:42:30");
INSERT INTO tbl_bitacora VALUES("647","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:42:30");
INSERT INTO tbl_bitacora VALUES("648","INSERTAR","tbl_desglose_gastos","000001","","000001","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("649","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("650","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("651","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("652","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("653","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 19:59:04");
INSERT INTO tbl_bitacora VALUES("654","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:05:10");
INSERT INTO tbl_bitacora VALUES("655","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:05:10");
INSERT INTO tbl_bitacora VALUES("656","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:05:10");
INSERT INTO tbl_bitacora VALUES("657","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:05:10");
INSERT INTO tbl_bitacora VALUES("658","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("659","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("660","ACTUALIZAR","tbl_servicios_generales","estado","DGL","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("661","ACTUALIZAR","tabla_aprobacion","estado","DGL","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("662","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","QWEQW","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("663","ACTUALIZAR","tabla_aprobacion","cancelado_por","","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("664","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 20:58:49");
INSERT INTO tbl_bitacora VALUES("665","ACTUALIZAR","tbl_unidad_solicitante","estado","EN GIRA","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:06:07");
INSERT INTO tbl_bitacora VALUES("666","ACTUALIZAR","tbl_servicios_generales","estado","EN GIRA","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:06:17");
INSERT INTO tbl_bitacora VALUES("667","ACTUALIZAR","tabla_aprobacion","estado","EN GIRA","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:06:26");
INSERT INTO tbl_bitacora VALUES("668","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:00");
INSERT INTO tbl_bitacora VALUES("669","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:00");
INSERT INTO tbl_bitacora VALUES("670","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:00");
INSERT INTO tbl_bitacora VALUES("671","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:00");
INSERT INTO tbl_bitacora VALUES("672","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:45");
INSERT INTO tbl_bitacora VALUES("673","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:45");
INSERT INTO tbl_bitacora VALUES("674","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:45");
INSERT INTO tbl_bitacora VALUES("675","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:31:45");
INSERT INTO tbl_bitacora VALUES("676","ACTUALIZAR","tbl_unidad_solicitante","estado","EN GIRA","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:33:51");
INSERT INTO tbl_bitacora VALUES("677","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:34:03");
INSERT INTO tbl_bitacora VALUES("678","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:34:08");
INSERT INTO tbl_bitacora VALUES("679","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:34:09");
INSERT INTO tbl_bitacora VALUES("680","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:34:09");
INSERT INTO tbl_bitacora VALUES("681","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:08");
INSERT INTO tbl_bitacora VALUES("682","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:08");
INSERT INTO tbl_bitacora VALUES("683","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:08");
INSERT INTO tbl_bitacora VALUES("684","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:08");
INSERT INTO tbl_bitacora VALUES("686","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:36");
INSERT INTO tbl_bitacora VALUES("687","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:36");
INSERT INTO tbl_bitacora VALUES("688","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:36");
INSERT INTO tbl_bitacora VALUES("689","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:35:36");
INSERT INTO tbl_bitacora VALUES("690","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:28");
INSERT INTO tbl_bitacora VALUES("691","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:28");
INSERT INTO tbl_bitacora VALUES("692","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:28");
INSERT INTO tbl_bitacora VALUES("693","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:28");
INSERT INTO tbl_bitacora VALUES("694","INSERTAR","tbl_desglose_gastos","000002","","000002","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:46");
INSERT INTO tbl_bitacora VALUES("695","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:46");
INSERT INTO tbl_bitacora VALUES("696","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:46");
INSERT INTO tbl_bitacora VALUES("697","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:46");
INSERT INTO tbl_bitacora VALUES("698","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 21:37:46");
INSERT INTO tbl_bitacora VALUES("699","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:05");
INSERT INTO tbl_bitacora VALUES("700","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:05");
INSERT INTO tbl_bitacora VALUES("701","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:05");
INSERT INTO tbl_bitacora VALUES("702","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:05");
INSERT INTO tbl_bitacora VALUES("703","INSERTAR","tbl_desglose_gastos","000003","","000003","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:22");
INSERT INTO tbl_bitacora VALUES("704","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:22");
INSERT INTO tbl_bitacora VALUES("705","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:22");
INSERT INTO tbl_bitacora VALUES("706","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:23");
INSERT INTO tbl_bitacora VALUES("707","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:23");
INSERT INTO tbl_bitacora VALUES("708","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:38");
INSERT INTO tbl_bitacora VALUES("709","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:38");
INSERT INTO tbl_bitacora VALUES("710","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:38");
INSERT INTO tbl_bitacora VALUES("711","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:38");
INSERT INTO tbl_bitacora VALUES("712","INSERTAR","tbl_desglose_gastos","000004","","000004","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:53");
INSERT INTO tbl_bitacora VALUES("713","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:53");
INSERT INTO tbl_bitacora VALUES("714","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:53");
INSERT INTO tbl_bitacora VALUES("715","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:53");
INSERT INTO tbl_bitacora VALUES("716","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:09:53");
INSERT INTO tbl_bitacora VALUES("717","ACTUALIZAR","tbl_man_empleados","modificado_por","JESCOTO","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:15:00");
INSERT INTO tbl_bitacora VALUES("718","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-10-19","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:15:00");
INSERT INTO tbl_bitacora VALUES("719","ACTUALIZAR","tbl_man_conductor","modificado_por","JESCOTO","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:15:00");
INSERT INTO tbl_bitacora VALUES("720","ACTUALIZAR","tbl_man_conductor","fecha_modificacion","2017-10-19","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:15:00");
INSERT INTO tbl_bitacora VALUES("721","ACTUALIZAR","tbl_man_conductor","tipo_licencia","PESADA","NORMAL","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:24:42");
INSERT INTO tbl_bitacora VALUES("722","ACTUALIZAR","tbl_man_empleados","modificado_por","JESCOTO","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:35");
INSERT INTO tbl_bitacora VALUES("723","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-10-21","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:35");
INSERT INTO tbl_bitacora VALUES("724","ACTUALIZAR","tbl_man_conductor","tipo_licencia","NORMAL","PESADA","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:35");
INSERT INTO tbl_bitacora VALUES("725","ACTUALIZAR","tbl_man_conductor","modificado_por","JESCOTO","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:35");
INSERT INTO tbl_bitacora VALUES("726","ACTUALIZAR","tbl_man_conductor","fecha_modificacion","2017-10-21","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:35");
INSERT INTO tbl_bitacora VALUES("727","ACTUALIZAR","tbl_man_conductor","fecha_vencimiento","2018-01-23","2019-01-23","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:26:59");
INSERT INTO tbl_bitacora VALUES("728","ACTUALIZAR","tbl_man_empleados","modificado_por","ADMIN","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:27:24");
INSERT INTO tbl_bitacora VALUES("729","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-09","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:27:24");
INSERT INTO tbl_bitacora VALUES("730","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:29:23");
INSERT INTO tbl_bitacora VALUES("731","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:16");
INSERT INTO tbl_bitacora VALUES("732","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:17");
INSERT INTO tbl_bitacora VALUES("733","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:17");
INSERT INTO tbl_bitacora VALUES("734","ACTUALIZAR","tbl_man_empleados","modificado_por","","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:30");
INSERT INTO tbl_bitacora VALUES("735","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:30");
INSERT INTO tbl_bitacora VALUES("736","ACTUALIZAR","tbl_man_conductor","modificado_por","","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:30");
INSERT INTO tbl_bitacora VALUES("737","ACTUALIZAR","tbl_man_conductor","fecha_modificacion","0000-00-00","2017-11-10","2373032_sigesvi","fdb16.runhosting.com","2017-11-10 23:32:30");
INSERT INTO tbl_bitacora VALUES("738","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:30");
INSERT INTO tbl_bitacora VALUES("739","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:30");
INSERT INTO tbl_bitacora VALUES("740","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:49");
INSERT INTO tbl_bitacora VALUES("741","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:49");
INSERT INTO tbl_bitacora VALUES("742","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:49");
INSERT INTO tbl_bitacora VALUES("743","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:49");
INSERT INTO tbl_bitacora VALUES("744","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:12:49");
INSERT INTO tbl_bitacora VALUES("745","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:13:33");
INSERT INTO tbl_bitacora VALUES("746","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:13:33");
INSERT INTO tbl_bitacora VALUES("747","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:13:33");
INSERT INTO tbl_bitacora VALUES("748","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:13:33");
INSERT INTO tbl_bitacora VALUES("749","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("750","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("751","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("752","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("753","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","JJJJJJJJJJJJJJJJJJJJJJJJ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("754","ACTUALIZAR","tabla_aprobacion","cancelado_por","","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("755","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:30:20");
INSERT INTO tbl_bitacora VALUES("756","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:24");
INSERT INTO tbl_bitacora VALUES("757","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:24");
INSERT INTO tbl_bitacora VALUES("758","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:24");
INSERT INTO tbl_bitacora VALUES("759","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:24");
INSERT INTO tbl_bitacora VALUES("760","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("761","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("762","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("763","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","JJJJJJJJJJJJJJJJJJJJJJJJ","PORQUE SI ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("764","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("765","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","PORQUE SI ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("766","ACTUALIZAR","tabla_aprobacion","cancelado_por","","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("767","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 01:33:44");
INSERT INTO tbl_bitacora VALUES("768","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:03:06");
INSERT INTO tbl_bitacora VALUES("769","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:03:11");
INSERT INTO tbl_bitacora VALUES("770","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:03:17");
INSERT INTO tbl_bitacora VALUES("771","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:03:17");
INSERT INTO tbl_bitacora VALUES("772","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("773","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("774","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("775","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","PORQUE SI ","DDDDDDDDDD","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("776","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","PORQUE SI ","DDDDDDDDDD","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("777","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("778","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","DDDDDDDDDD","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("779","ACTUALIZAR","tabla_aprobacion","cancelado_por","","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("780","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:12:06");
INSERT INTO tbl_bitacora VALUES("781","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:10");
INSERT INTO tbl_bitacora VALUES("782","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:10");
INSERT INTO tbl_bitacora VALUES("783","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("784","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("785","ACTUALIZAR","tbl_man_vehiculos","kilometraje","67","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("786","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("787","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("788","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:13:23");
INSERT INTO tbl_bitacora VALUES("789","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 02:58:07");
INSERT INTO tbl_bitacora VALUES("790","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("791","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("792","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("793","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("794","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","GGGGGGGGG","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("795","ACTUALIZAR","tabla_aprobacion","cancelado_por","","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("796","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:05:51");
INSERT INTO tbl_bitacora VALUES("797","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:06:19");
INSERT INTO tbl_bitacora VALUES("798","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:06:19");
INSERT INTO tbl_bitacora VALUES("799","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:06:19");
INSERT INTO tbl_bitacora VALUES("800","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 03:06:19");
INSERT INTO tbl_bitacora VALUES("801","ACTUALIZAR","tbl_man_usuarios","id_rol_fk","3","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:06:12");
INSERT INTO tbl_bitacora VALUES("802","ACTUALIZAR","tbl_man_usuarios","modificado_por","LRAMIREZ","JREYES","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:06:12");
INSERT INTO tbl_bitacora VALUES("803","ACTUALIZAR","tbl_man_usuarios","fecha_modificacion","2017-11-06 00:00:00","2017-11-11 00:00:00","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:06:12");
INSERT INTO tbl_bitacora VALUES("804","ACTUALIZAR","tbl_man_usuarios","clave","M/DdDvUyJHSjvZsYFnFeuBSzlKqxD33rCURbXnSkvQk=","Bec6jD30t3fMmg+EfHiV3MCjHxgVPD7ywRx1gF/0Igs=","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:23:51");
INSERT INTO tbl_bitacora VALUES("805","ACTUALIZAR","tbl_man_usuarios","estado_login","OK","RS","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:23:51");
INSERT INTO tbl_bitacora VALUES("806","ACTUALIZAR","tbl_man_usuarios","fecha_modificacion","2017-11-06 00:00:00","2017-11-11 00:00:00","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 04:23:51");
INSERT INTO tbl_bitacora VALUES("807","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 05:46:09");
INSERT INTO tbl_bitacora VALUES("808","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 05:46:19");
INSERT INTO tbl_bitacora VALUES("809","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 05:46:25");
INSERT INTO tbl_bitacora VALUES("810","ACTUALIZAR","tbl_man_vehiculos","modificado_por","JESCOTO","LRAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 05:46:48");
INSERT INTO tbl_bitacora VALUES("811","ACTUALIZAR","tbl_man_vehiculos","fecha_modificacion","2017-11-08","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 05:46:48");
INSERT INTO tbl_bitacora VALUES("812","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:28:37");
INSERT INTO tbl_bitacora VALUES("813","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:28:37");
INSERT INTO tbl_bitacora VALUES("814","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:28:37");
INSERT INTO tbl_bitacora VALUES("815","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:28:37");
INSERT INTO tbl_bitacora VALUES("816","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:49");
INSERT INTO tbl_bitacora VALUES("817","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:49");
INSERT INTO tbl_bitacora VALUES("818","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:49");
INSERT INTO tbl_bitacora VALUES("819","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("820","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","DDDDDDDDDD","DFGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("821","ACTUALIZAR","tabla_aprobacion","cancelado_por","LRAMIREZ","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("822","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","DDDDDDDDDD","DFGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("823","ACTUALIZAR","tabla_aprobacion","cancelado_por","LRAMIREZ","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("824","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","DDDDDDDDDD","DFGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("825","ACTUALIZAR","tabla_aprobacion","cancelado_por","LRAMIREZ","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 06:32:51");
INSERT INTO tbl_bitacora VALUES("826","ACTUALIZAR","tbl_man_empleados","modificado_por","LUIS","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 07:31:59");
INSERT INTO tbl_bitacora VALUES("827","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-10","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 07:31:59");
INSERT INTO tbl_bitacora VALUES("828","ACTUALIZAR","tbl_man_conductor","modificado_por","LUIS","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 07:31:59");
INSERT INTO tbl_bitacora VALUES("829","ACTUALIZAR","tbl_man_conductor","fecha_modificacion","2017-11-10","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 07:31:59");
INSERT INTO tbl_bitacora VALUES("830","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","2017-11-10","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 15:58:24");
INSERT INTO tbl_bitacora VALUES("831","ACTUALIZAR","tbl_man_conductor","fecha_vencimiento","2017-12-31","2016-12-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 15:58:24");
INSERT INTO tbl_bitacora VALUES("832","ACTUALIZAR","tbl_man_conductor","fecha_modificacion","2017-11-10","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 15:58:24");
INSERT INTO tbl_bitacora VALUES("833","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:03:38");
INSERT INTO tbl_bitacora VALUES("834","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:03:38");
INSERT INTO tbl_bitacora VALUES("835","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:05:58");
INSERT INTO tbl_bitacora VALUES("836","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:05:58");
INSERT INTO tbl_bitacora VALUES("837","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:05:58");
INSERT INTO tbl_bitacora VALUES("838","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:09:16");
INSERT INTO tbl_bitacora VALUES("839","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:09:16");
INSERT INTO tbl_bitacora VALUES("840","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:09:16");
INSERT INTO tbl_bitacora VALUES("841","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:11:22");
INSERT INTO tbl_bitacora VALUES("842","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:11:22");
INSERT INTO tbl_bitacora VALUES("843","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:11:22");
INSERT INTO tbl_bitacora VALUES("844","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:13:32");
INSERT INTO tbl_bitacora VALUES("845","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:13:32");
INSERT INTO tbl_bitacora VALUES("846","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:13:32");
INSERT INTO tbl_bitacora VALUES("847","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:15:45");
INSERT INTO tbl_bitacora VALUES("848","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:15:46");
INSERT INTO tbl_bitacora VALUES("849","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:15:47");
INSERT INTO tbl_bitacora VALUES("850","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:17:22");
INSERT INTO tbl_bitacora VALUES("851","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:17:22");
INSERT INTO tbl_bitacora VALUES("852","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:17:22");
INSERT INTO tbl_bitacora VALUES("853","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:18:56");
INSERT INTO tbl_bitacora VALUES("854","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:18:56");
INSERT INTO tbl_bitacora VALUES("855","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:18:56");
INSERT INTO tbl_bitacora VALUES("856","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:24:13");
INSERT INTO tbl_bitacora VALUES("857","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:24:13");
INSERT INTO tbl_bitacora VALUES("858","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:26:51");
INSERT INTO tbl_bitacora VALUES("859","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:26:51");
INSERT INTO tbl_bitacora VALUES("860","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:26:51");
INSERT INTO tbl_bitacora VALUES("861","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:30:25");
INSERT INTO tbl_bitacora VALUES("862","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:30:25");
INSERT INTO tbl_bitacora VALUES("863","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:30:25");
INSERT INTO tbl_bitacora VALUES("864","ACTUALIZAR","tbl_man_empleados","modificado_por","","LUIS","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:32:28");
INSERT INTO tbl_bitacora VALUES("865","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","0000-00-00","2017-11-11","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:32:28");
INSERT INTO tbl_bitacora VALUES("866","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:33:29");
INSERT INTO tbl_bitacora VALUES("867","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:33:29");
INSERT INTO tbl_bitacora VALUES("868","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:33:29");
INSERT INTO tbl_bitacora VALUES("869","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:34:53");
INSERT INTO tbl_bitacora VALUES("870","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:34:53");
INSERT INTO tbl_bitacora VALUES("871","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:34:53");
INSERT INTO tbl_bitacora VALUES("872","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:36:11");
INSERT INTO tbl_bitacora VALUES("873","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:36:11");
INSERT INTO tbl_bitacora VALUES("874","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:36:11");
INSERT INTO tbl_bitacora VALUES("875","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:41:09");
INSERT INTO tbl_bitacora VALUES("876","INSERTAR","tbl_man_conductor","id_conductor","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:41:09");
INSERT INTO tbl_bitacora VALUES("877","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:41:09");
INSERT INTO tbl_bitacora VALUES("878","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:42:43");
INSERT INTO tbl_bitacora VALUES("879","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 16:42:43");
INSERT INTO tbl_bitacora VALUES("880","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 17:02:27");
INSERT INTO tbl_bitacora VALUES("881","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-11 17:02:39");
INSERT INTO tbl_bitacora VALUES("882","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 20:39:23");
INSERT INTO tbl_bitacora VALUES("883","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 20:39:38");
INSERT INTO tbl_bitacora VALUES("884","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 20:39:48");
INSERT INTO tbl_bitacora VALUES("885","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:44:41");
INSERT INTO tbl_bitacora VALUES("886","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:44:41");
INSERT INTO tbl_bitacora VALUES("887","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("888","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("889","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","100000","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("890","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("891","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("892","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 21:57:41");
INSERT INTO tbl_bitacora VALUES("893","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 22:33:33");
INSERT INTO tbl_bitacora VALUES("894","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 22:33:34");
INSERT INTO tbl_bitacora VALUES("895","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-12 22:33:40");
INSERT INTO tbl_bitacora VALUES("896","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","root","DESKTOP-92QI2K5","2017-11-16 11:12:13");
INSERT INTO tbl_bitacora VALUES("897","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","root","DESKTOP-92QI2K5","2017-11-16 11:12:16");





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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO tbl_categoria_zona VALUES("1","1","1","2375.00","2275.00","ACTIVO","","0000-00-00","LUIS","2017-11-05");
INSERT INTO tbl_categoria_zona VALUES("2","1","2","2063.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-17");
INSERT INTO tbl_categoria_zona VALUES("3","1","3","1750.00","1675.00","ACTIVO","","0000-00-00","ADMIN","2017-10-16");
INSERT INTO tbl_categoria_zona VALUES("4","1","4","1437.50","1375.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");
INSERT INTO tbl_categoria_zona VALUES("5","1","5","1125.00","1075.00","ACTIVO","","0000-00-00","ADMIN","2017-11-10");
INSERT INTO tbl_categoria_zona VALUES("6","2","1","2062.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");





CREATE TABLE `tbl_desglose_gastos` (
  `id_desglose_gasto` int(11) NOT NULL AUTO_INCREMENT,
  `id_aprobacion_fk` int(11) NOT NULL,
  `correlativo` varchar(6) NOT NULL,
  `lugar` varchar(300) NOT NULL,
  `viaticos_diarios` decimal(12,2) NOT NULL,
  `dias` float DEFAULT NULL,
  `total_viaticos` decimal(12,2) DEFAULT NULL,
  `des_gcombustible` varchar(200) DEFAULT NULL,
  `lps_gcombustible` decimal(12,2) NOT NULL,
  `des_ogastos` varchar(200) NOT NULL,
  `lps_ogastos` decimal(12,2) DEFAULT NULL,
  `sub_total` decimal(12,2) NOT NULL,
  `anticipo_recibido` decimal(12,2) NOT NULL,
  `saldos` decimal(12,2) NOT NULL,
  `des_saldos` varchar(200) NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `creado_por` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `motivo_cancelacion` varchar(100) DEFAULT NULL,
  `fecha_cancelacion` date DEFAULT NULL,
  `cancelado_por` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_desglose_gasto`),
  UNIQUE KEY `correlativo_UNIQUE` (`correlativo`),
  KEY `id_aprobacion_fk` (`id_aprobacion_fk`),
  CONSTRAINT `desglose_aprobacion` FOREIGN KEY (`id_aprobacion_fk`) REFERENCES `tbl_aprobacion` (`id_aprobacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO tbl_desglose_gastos VALUES("1","1","000001","YORO  EL PROGRESO","2375.00","2","4750.00","","0.00","","0.00","4750.00","5000.00","250.00","Saldo Favor DEFOMIN","","LUIS","2017-11-10","CANCELADO","DFHJ","2017-11-10","ADMIN");
INSERT INTO tbl_desglose_gastos VALUES("2","1","000002","YORO  EL PROGRESO","2375.00","2","4750.00","","0.00","","0.00","4750.00","5000.00","250.00","Saldo Favor DEFOMIN","","LUIS","2017-11-10","CANCELADO","DFHJ","2017-11-10","ADMIN");
INSERT INTO tbl_desglose_gastos VALUES("3","1","000003","YORO  EL PROGRESO","2375.00","2","4750.00","","0.00","","0.00","4750.00","5000.00","250.00","Saldo Favor DEFOMIN","","ADMIN","2017-11-10","CANCELADO","DFHJ","2017-11-10","ADMIN");
INSERT INTO tbl_desglose_gastos VALUES("4","1","000004","YORO  EL PROGRESO","2375.00","2","4750.00","","0.00","","0.00","4750.00","5000.00","250.00","Saldo Favor DEFOMIN","","ADMIN","2017-11-10","DGL","","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

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
INSERT INTO tbl_direcciones_empleados VALUES("27","27","14","SSSSSSSSSSSSSSSSSSSSSSSSSSS");
INSERT INTO tbl_direcciones_empleados VALUES("28","28","1","SSSDCDCDCDC3333DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
INSERT INTO tbl_direcciones_empleados VALUES("29","29","3","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ");
INSERT INTO tbl_direcciones_empleados VALUES("30","30","1","CUALQUIERA");
INSERT INTO tbl_direcciones_empleados VALUES("31","31","2","2232");
INSERT INTO tbl_direcciones_empleados VALUES("32","32","11","SAASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("33","33","19","QWEQWE");
INSERT INTO tbl_direcciones_empleados VALUES("34","34","5","ASDSD");
INSERT INTO tbl_direcciones_empleados VALUES("35","35","205","ASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("36","36","251","ASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("37","37","140","ASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("38","38","19","ASDAS");
INSERT INTO tbl_direcciones_empleados VALUES("39","39","4","ASDASD");
INSERT INTO tbl_direcciones_empleados VALUES("40","40","13","SASD");
INSERT INTO tbl_direcciones_empleados VALUES("41","41","293","QWEQWE");
INSERT INTO tbl_direcciones_empleados VALUES("42","42","276","QWE123");
INSERT INTO tbl_direcciones_empleados VALUES("43","43","15","ASD");
INSERT INTO tbl_direcciones_empleados VALUES("44","44","16","SADASDA");
INSERT INTO tbl_direcciones_empleados VALUES("45","45","16","QWEQWE");
INSERT INTO tbl_direcciones_empleados VALUES("46","46","107","ASDASDASD");





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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_categoria_empleados VALUES("1","I","XX","ALTOS FUNCIONARIOS","SECRETARIOS Y SUB-SECRETARIOS DE ESTADO","INACTIVO","ADMIN","2017-03-08","LRAMIREZ","2017-11-10");
INSERT INTO tbl_man_categoria_empleados VALUES("2","II","XII, XIII, XIV, XV","DIRECTIVOS","SECRETARIOS GENERALES, DIRECTIVOS GENER CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC","ACTIVO","ADMIN","2017-03-14","LRAMIREZ","2017-11-10");
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_conductor VALUES("1","1","NORMAL","2011-05-17","VIGENTE","ADMIN","2017-03-08","LUIS","2017-11-10","");
INSERT INTO tbl_man_conductor VALUES("2","6","PESADA","2019-01-23","VENCIDA","ADMIN","0000-00-00","LUIS","2017-11-10","");
INSERT INTO tbl_man_conductor VALUES("3","27","PESADA","2017-11-08","ACTIVO","ADMIN","2017-11-10","JESCOTO","2017-11-11","");
INSERT INTO tbl_man_conductor VALUES("4","30","NORMAL","2016-12-11","ACTIVO","LUIS","2017-11-10","LUIS","2017-11-11","");
INSERT INTO tbl_man_conductor VALUES("5","32","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("6","33","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("7","34","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("8","35","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("9","36","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("10","37","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("11","38","NORMAL","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("12","40","default","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("13","41","PESADA","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("14","42","default","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("15","43","default","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("16","44","default","0000-00-00","ACTIVO","LUIS","2017-11-11","","0000-00-00","");
INSERT INTO tbl_man_conductor VALUES("17","45","NORMAL","2017-11-23","ACTIVO","LUIS","2017-11-11","","0000-00-00","");





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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_empleados VALUES("1","4","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","1709-1996-00602","VIUDO","CONDUCTOR","2000.00","1111-111","524512456235","ACTIVO","ADMIN","2017-03-07","LUIS","2017-11-10","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("2","1","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","0801-1995-05807","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","2222-2222","12345678","ACTIVO","ADMIN","2017-03-07","LUIS","2017-07-09","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("3","2","1","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","0814-1986-00238","CASADO","AUDITOR","10000.00","8862-4608","548754652125","ACTIVO","ADMIN","2017-03-17","ADMIN","2017-11-10","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("4","2","4","JULIO","JOSUE","REYES","POSADAS","5754","0801-1987-16541","default","CONDUCTOR","10000.00","4444-4444","6524587562124","ACTIVO","ADMIN","2017-03-18","LUIS","2017-07-20","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("5","3","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","0801-1994-00395","CASADO","ANALISTA","10000.00","5555-5555","35214523012401","ACTIVO","ADMIN","2017-03-17","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("6","4","1","JOSE","RAMON","ESCOTO","FLORES","5648","0801-2008-11111","SOLTERO","CONDUCTOR","10000.00","6666-6666","5426854210324","ACTIVO","ADMIN","2017-03-16","LUIS","2017-11-10","SERVIGE","");
INSERT INTO tbl_man_empleados VALUES("7","3","10","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","2222-2222-22222","CASADO","CONSERJE","9500.00","7777-7777","8457853045215","ACTIVO","ADMIN","2017-03-16","","2017-03-17","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("8","1","2","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","0801-1995-05809","SOLTERO","PROGRAMADOR","9999.00","2222-2222","5421542658541","ACTIVO","ADMIN","2017-03-07","","0000-00-00","EN GIRA","0");
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
INSERT INTO tbl_man_empleados VALUES("21","1","12","HAROLD","MAXIMO","BETANCOUR","CACIQUE","2000","9999-9999-99999","SOLTERO","CONDUCTOR","12345.00","PRUEBAC","09876543","ACTIVO","JESCOTO","2017-10-20","LUIS","2017-11-11","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("22","1","10","QUIMBERLIN","VALENTINA","MUNOZ","RAMIREZ","7777","7777-7777-77777","SOLTERO","CONDUCTOR","7777.00","7777-7777","7777777777","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("23","3","8","KAREN","MARCELA","PEREZ","MENCIA","110","0000-0000-00000","SOLTERO","CONDUCTOR","9500.00","2222","1587","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("24","5","9","WALTER","ANTONIO","CARCAMO","NUñEZ","300","0111-1111-11111","SOLTERO","CONDUCTOR","7500.00","234","30145","ACTIVO","JESCOTO","2017-10-21","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("25","2","7","LOUIS","SDFSD","SDF","DFGFDF","2345","0000-0000-00001","SOLTERO","DFD","345.00","34","45534","ACTIVO","ADMIN","2017-11-05","ADMIN","2017-11-05","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("26","3","6","JUAN","DIEGO","LOPEZ","MARTINEZ","10101","0801-2018-00017","CASADO","SUPERVISOR","15000.00","2220-0000","0101100100","ACTIVO","LRAMIREZ","2017-11-06","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("27","1","1","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXX","5445","0801-1981-06358","SOLTERO","CONDUCTOR","3000000.00","9999-9999","545445","ACTIVO","ADMIN","2017-11-07","JESCOTO","2017-11-11","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("28","3","1","AAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSSS","BBBBBBBBSSSSSSSSSSSSSSSSSS","CCCCCCCSSSSSSSSSSSSSSSSSSSSSSSSSSS","DDDDDDDSSSSSSSSSSSSSSSS","24555","1222-2222-22222","SOLTERO","ADMINISTRADOR","25426.50","2222-2222","215615151","ACTIVO","ADMIN","2017-11-07","ADMIN","2017-11-08","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("29","1","1","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","12341","0801-1990-88888","SOLTERO","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","9999999999.99","3456-7888","66666555555555555555","ACTIVO","JESCOTO","2017-11-09","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("30","4","1","JAIME","TONY","MORATA","LLANOS","1234","2222-2222-22221","SOLTERO","CONDUCTOR","10000.00","2345-522","235234","ACTIVO","LUIS","2017-11-10","LUIS","2017-11-11","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("31","2","3","CARLOS","JAVIER","MERINO","ASDASD","232","1111-1111-11112","SOLTERO","CASDF","2222.22","232","2323","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("32","4","5","ALEJANDRO","PASTORE","JIMENES","PEDRANO","678","1111-1111-11113","CASADO","CONDUCTOR","10000.00","23423","12312","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("33","4","1","MARIA","AURORA","ZAMBRANO","ZAMBRANO","23452","2222-2222-22223","DIVORCIADO","CONDUCTOR","1231.11","23534","23423","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("34","3","1","LUIS","MANUEL","VILLEGAS","MORALES","32423","2222-2222-22224","CASADO","CONDUCTOR","2000.00","23423","23","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("35","4","1","HECTOR","IVAN","GONZALES","CASTAñO","21321","3333-3333-33331","UNION","CONDUCTOR","2342.22","234","21123","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("36","4","1","JULIO","CESAR","RUIZ","RUIZ","2342","4444-4444-44441","DIVORCIADO","CONDUCTOR","2000.00","2324","212312","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("37","3","1","ANGEL","GABRIEL","DORMEZ","CARCAMO","21312","7777-7777-77771","DIVORCIADO","CONDUCTOR","221.12","23234","12213","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("38","3","1","MARIA","VICTORIA","ARIAS","GOMEZ","23432","4444-4444-44443","SOLTERO","CONDUCTOR","1232.13","2132","12312","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("39","1","4","SADA","ZXZZX","ZXX","ZXZX","23423","8888-8888-88881","SOLTERO","SADASD","2131.23","2342","234234","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("40","3","1","IIIII","UUUUU","UUUUU","UUUU","23423","3333-3333-33332","CASADO","CONDUCTOR","2342.34","2222","234234","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("41","4","1","CASD","CSD","CASD","CASDG","2345","0000-0000-00003","DIVORCIADO","CONDUCTOR","2342.34","234","2342","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("42","3","1","QWE","QQWE","QWE","WE","21312","1000-0000-00000","VIUDO","CONDUCTOR","1231.23","21313","1231","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("43","3","1","ASDA","QWEQE","CSXCF","SDFER","12123","2000-0000-00000","SOLTERO","CONDUCTOR","234.23","2131","234","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("44","5","1","ASDASD","ASDCA","CASDF","CASFF","12312","3000-0000-00000","DIVORCIADO","CONDUCTOR","123.12","23213","123","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("45","4","1","FGHFHF","MQMQMQMQ","MQMQMQ","MQMQMQ","23423","7000-0000-00000","default","CONDUCTOR","12312.31","21345","2132","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("46","3","5","BGF","NWNWNW","NWNWNW","NWNWN","23424","1200-0000-00000","DIVORCIADO","CUALQUIERA","234234.23","2321-31","213123","ACTIVO","LUIS","2017-11-11","","0000-00-00","DISPONIBLE","");





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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_roles VALUES("1","SUPER USUARIO","ACTIVO","ADMIN","2017-04-07","","");
INSERT INTO tbl_man_roles VALUES("2","USUARIO","ACTIVO","ADMIN","2017-04-07","","");
INSERT INTO tbl_man_roles VALUES("3","ADMINISTRADOR","ACTIVO","ADMIN","2017-04-07","","");
INSERT INTO tbl_man_roles VALUES("4","PRUEBA","ACTIVO","ADMIN","2017-11-10","","");
INSERT INTO tbl_man_roles VALUES("5","PRUEBA2","ACTIVO","ADMIN","2017-11-10","","");
INSERT INTO tbl_man_roles VALUES("6","PRUEBA3","ACTIVO","ADMIN","2017-11-10","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_usuarios VALUES("1","1","1","ADMIN","gVHOkN8crjhy9bLbbx18XpYvm18Yt3bVILmMErg5/RI=","juan@hola.com","","A","OK","0","ADMIN","2017-03-14 00:00:00","ADMIN","2017-11-10 00:00:00","","0000-00-00 00:00:00","2017-12-31");
INSERT INTO tbl_man_usuarios VALUES("2","1","2","LUIS","Bec6jD30t3fMmg+EfHiV3MCjHxgVPD7ywRx1gF/0Igs=","richard.ordoez@yahoo.es","","A","OK","0","ADMIN","2017-03-14 00:00:00","LUIS","2017-11-07 00:00:00","http://localhost/inhgeomin/login/?q=260f10cbcffedec9f18d83455277e8c10ed4263aRC2-1507614824","0000-00-00 00:00:00","2018-01-17");
INSERT INTO tbl_man_usuarios VALUES("3","1","3","LRAMIREZ","5jW53OtH62YGci1zIoP2hNhsDf05FurAXKsbtM4uYAw=","leymargareth@yahoo.com","","A","OK","0","ADMIN","2017-03-17 13:23:01","LUIS","2017-11-04 00:00:00","http://localhost/inhgeomin/login/?q=2621ec3a9ffdc684772600aec9b715f09f9d82f9RC3-1507348498","","2018-08-15");
INSERT INTO tbl_man_usuarios VALUES("4","1","4","JREYES","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","julior_sk8@hotmail.es","1507620147","A","OK","0","ADMIN","2017-03-17 13:13:55","JREYES","2017-11-11 00:00:00","http://localhost/inhgeomin/login/?q=881932524dc3fea080fbd680ba61a2abb71d6074RC4-1507620147","","2018-03-17");
INSERT INTO tbl_man_usuarios VALUES("5","1","5","BIZCOA","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","ale.izcoa1993@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:15:13","LRAMIREZ","2017-11-06 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f0a481e69f3cfcc75cb4166c13d3bf07ac7bc8b0RC5-1499273528","","2018-11-05");
INSERT INTO tbl_man_usuarios VALUES("6","1","6","JESCOTO","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","josescoto9@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:16:36","ADMIN","2017-11-06 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f118b7d70e8c807a515f73e5d9fe91f8b509564fRC6-1499635734","","2018-01-26");
INSERT INTO tbl_man_usuarios VALUES("7","2","7","PEDRO","Bec6jD30t3fMmg+EfHiV3MCjHxgVPD7ywRx1gF/0Igs=","pedro@gmil.com","","A","RS","0","LUIS","2017-11-06 15:50:13","JESCOTO","2017-11-11 00:00:00","","","2018-08-31");
INSERT INTO tbl_man_usuarios VALUES("8","3","18","KARLAMEGA","+Vov2fIGjKslnw2pD8x5nUAmZ1Rk3nZXD/1Ac1LW4ak=","karlamega@yahoo.com","","A","OK","0","ADMIN","2017-11-07 00:51:14","KARLAMEGA","2017-11-07 00:00:00","","","2017-11-07");
INSERT INTO tbl_man_usuarios VALUES("9","3","27","KARLAMAMA","Ar5s1piyz+X/sihGW5iOVsCm2rmbXCj2Q+80TwfcRnQ=","karlajhsjhsj@yahoo.com","-","A","PV","0","ADMIN","2017-11-07 01:36:44","ADMIN","2017-11-08 00:00:00","","","2017-11-25");





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

INSERT INTO tbl_man_vehiculos VALUES("1","1","PICKUP","5","PDK-12345","NISSAN","FRONTIER","AZUL","DISPONIBLE","LUIS","2017-04-22","LRAMIREZ","2017-11-11","0");
INSERT INTO tbl_man_vehiculos VALUES("2","2","PICKUP","5","RJ-45","NISSAN","FRONTIER","ROJO","ASIGNADO","LUIS","2017-04-22","","","100000");
INSERT INTO tbl_man_vehiculos VALUES("3","3","PICKUP","5","LRO-1234","NISSAN","FRONTIER","ROJO","DISPONIBLE","LUIS","2017-04-22","LRAMIREZ","2017-11-05","234567");
INSERT INTO tbl_man_vehiculos VALUES("4","567","FHJ","67","DFGHJK","TYUI","TYUI","DFGH","ASIGNADO","JESCOTO","2017-11-09","","0000-00-00","0");





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
INSERT INTO tbl_objetos VALUES("5","ADMINISTRADOR","A","ADMIN","2017-04-07","","");
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
  `clave_default_des` varchar(16) NOT NULL,
  `max_dias_aprobacion` int(2) NOT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tbl_parametros VALUES("1","4","60000","30","5","20","365","30","60","Bec6jD30t3fMmg+EfHiV3MCjHxgVPD7ywRx1gF/0Igs=","1234","15");





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
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_r_objeto`),
  KEY `rolobj_roles` (`id_rol_fk`),
  KEY `rolobj_objetos` (`id_objeto_fk`),
  CONSTRAINT `rolobj_objetos` FOREIGN KEY (`id_objeto_fk`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rolobj_roles` FOREIGN KEY (`id_rol_fk`) REFERENCES `tbl_man_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO tbl_roles_objetos VALUES("1","1","1","1","1","1","A","ADMIN","2017-04-07","ADMIN","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("2","1","2","1","1","1","A","ADMIN","2017-04-07","LUIS","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("3","1","3","1","1","1","A","ADMIN","2017-04-07","LUIS","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("4","1","4","1","1","1","A","ADMIN","2017-04-07","LUIS","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("5","1","5","1","1","1","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_roles_objetos VALUES("6","1","7","1","1","1","A","JESCOTO","2017-11-05","","");
INSERT INTO tbl_roles_objetos VALUES("7","1","6","1","1","1","A","LUIS","2017-11-05","","");
INSERT INTO tbl_roles_objetos VALUES("10","2","1","1","1","1","A","JESCOTO","2017-11-06","JESCOTO","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("11","3","1","1","0","0","A","KARLAMEGA","2017-11-07","","");
INSERT INTO tbl_roles_objetos VALUES("12","3","3","0","1","0","A","KARLAMEGA","2017-11-07","","");
INSERT INTO tbl_roles_objetos VALUES("13","3","5","1","1","1","A","KARLAMEGA","2017-11-07","LUIS","0000-00-00");
INSERT INTO tbl_roles_objetos VALUES("14","3","2","1","0","0","A","KARLAMEGA","2017-11-07","","");
INSERT INTO tbl_roles_objetos VALUES("15","4","2","1","1","1","A","ADMIN","2017-11-10","","");
INSERT INTO tbl_roles_objetos VALUES("16","5","6","1","1","0","A","ADMIN","2017-11-10","","");
INSERT INTO tbl_roles_objetos VALUES("17","6","1","1","1","0","A","ADMIN","2017-11-10","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO tbl_servicios_generales VALUES("1","0","1","2017-11-10","2017-11-12","YORO  EL PROGRESO","2017-11-10","LUIS","SERVIGE","10112017121120171","");
INSERT INTO tbl_servicios_generales VALUES("2","1","1","2017-11-10","2017-11-12","YORO  EL PROGRESO","2017-11-10","LUIS","DGL","10112017121120171","");
INSERT INTO tbl_servicios_generales VALUES("3","2","1","2017-11-10","2017-11-12","YORO  EL PROGRESO","2017-11-10","LUIS","APR","10112017121120171","");
INSERT INTO tbl_servicios_generales VALUES("4","0","2","2017-11-14","2017-11-15","YORO  EL PROGRESO","2017-11-11","LRAMIREZ","SERVIGE","14112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("5","3","2","2017-11-14","2017-11-15","YORO  EL PROGRESO","2017-11-11","LRAMIREZ","CANCELADO","14112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("6","0","4","2017-11-14","2017-11-16","FRANCISCO MORAZAN TEGUCIGALPA D.C","2017-11-11","LRAMIREZ","SERVIGE","14112017161120171","");
INSERT INTO tbl_servicios_generales VALUES("7","4","4","2017-11-14","2017-11-16","FRANCISCO MORAZAN TEGUCIGALPA D.C","2017-11-11","LRAMIREZ","APR","14112017161120171","");
INSERT INTO tbl_servicios_generales VALUES("8","0","2","2017-11-14","2017-11-23","LA PAZ LA PAZ","2017-11-12","JESCOTO","SERVIGE","14112017231120171","");
INSERT INTO tbl_servicios_generales VALUES("9","5","2","2017-11-14","2017-11-23","LA PAZ LA PAZ","2017-11-12","JESCOTO","SERVIGE","14112017231120171","");





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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO tbl_unidad_solicitante VALUES("1","1","2","2017-11-10","2017-11-12","YORO  EL PROGRESO","12W 23","2.00","2375.00","4750.00","DGL","000001","10112017121120171","2017-11-10","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("2","1","8","2017-11-10","2017-11-12","YORO  EL PROGRESO","23W 12","2.00","2375.00","4750.00","APR","000002","10112017121120171","2017-11-10","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("3","1","29","2017-11-14","2017-11-15","YORO  EL PROGRESO","HHHHH","1.00","2375.00","2375.00","CANCELADO","000003","14112017151120171","2017-11-11","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("4","1","3","2017-11-14","2017-11-16","FRANCISCO MORAZAN TEGUCIGALPA D.C","G","2.00","2063.50","4127.00","APR","000004","14112017161120171","2017-11-11","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("5","1","6","2017-11-14","2017-11-23","LA PAZ LA PAZ","231413","9.00","1437.50","12937.50","SERVIGE","000005","14112017231120171","2017-11-12","JESCOTO","");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_apro_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) where (`tbl_cate_zonas`.`id_categoria_fk` = `tbl_cate`.`id_categoria`);






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_can_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira`,`tbl_apr`.`fecha_emision` AS `fecha_emision` from ((((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_aprobacion` `tbl_apr` on((`tbl_usoli`.`id_usoli` = `tbl_apr`.`id_usoli_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) group by `tbl_usoli`.`id_usoli`;






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_desglose` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cargo` AS `cargo`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_zonas`.`nombre_zona` AS `nombre_zona`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`lugar_gira` AS `lgira`,`tbl_usoli`.`proposito` AS `pgira`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`estado` AS `estado`,`tbl_sgenerales`.`id_vehiculo_fk` AS `id_vehiculo`,`tbl_sgenerales`.`id_sgenerales` AS `id_sgenerales`,`tbl_apro`.`anticipo` AS `anticipo`,`tbl_apro`.`id_aprobacion` AS `id_aprobacion`,`tbl_apro`.`num_transaccion` AS `num_transaccion`,`tbl_apro`.`tipo_transaccion` AS `tipo_transaccion` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_servicios_generales` `tbl_sgenerales` on((`tbl_usoli`.`id_usoli` = `tbl_sgenerales`.`id_usoli_fk`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_aprobacion` `tbl_apro` on((`tbl_usoli`.`id_usoli` = `tbl_apro`.`id_usoli_fk`)));






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_empleados` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,(select if((unix_timestamp(now()) > unix_timestamp(`sincomin`.`tbl_man_conductor`.`fecha_vencimiento`)),'VENCIDA','VIGENTE') from `tbl_man_conductor` where (`sincomin`.`tbl_man_conductor`.`id_empleado_fk` = `tbl_emp`.`id_empleado`)) AS `estado_lic`,`tbl_emp`.`estado` AS `estado`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`reloj_marcador` AS `reloj`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`estado_gira` AS `estado_gira`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia` from ((`tbl_man_empleados` `tbl_emp` join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`)));






CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_traer_empleados` AS select `tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_emp`.`telefono` AS `telefono`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`nombre1` AS `nombre1`,`tbl_emp`.`nombre2` AS `nombre2`,`tbl_emp`.`apellido1` AS `apellido1`,`tbl_emp`.`apellido2` AS `apellido2`,`tbl_emp`.`reloj_marcador` AS `reloj_marcador`,`tbl_emp`.`estado_civil` AS `estado_civil`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`salario` AS `salario`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`estado` AS `estado`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_muni`.`municipio` AS `municipio`,`tbl_dire`.`id_municipio_fk` AS `id_municipio_fk`,`tbl_dire`.`direccion_detalle` AS `direccion` from ((((`tbl_man_empleados` `tbl_emp` join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_direcciones_empleados` `tbl_dire` on((`tbl_emp`.`id_empleado` = `tbl_dire`.`id_empleado_fk`))) join `tbl_man_municipios` `tbl_muni` on((`tbl_dire`.`id_municipio_fk` = `tbl_muni`.`id_municipio`)));





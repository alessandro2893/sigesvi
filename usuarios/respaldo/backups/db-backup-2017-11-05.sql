

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO tbl_aprobacion VALUES("1","1","2","CHEQUE","123","21312","5000","LUIS","","2017-10-26","CANCELADO","ASDAD","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("2","1","2","CHEQUE","23456","23456","50000","LUIS","","2017-10-26","CANCELADO","ASDAD","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("3","1","2","DEPOSITO","234","234","5000","LUIS","","2017-10-26","CANCELADO","ASDAD","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("4","1","2","DEPOSITO","2","0","234234","LUIS","","2017-10-26","CANCELADO","ASDAD","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("5","1","3","DEPOSITO","213","0","4800","LUIS","AWED","2017-10-26","DGL","XDVCV","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("6","1","3","DEPOSITO","34","0","4800","LUIS","","2017-10-26","CANCELADO","XDVCV","LUIS","2017-10-26");
INSERT INTO tbl_aprobacion VALUES("7","1","3","DEPOSITO","234","0","4800","LUIS","","2017-10-26","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("8","1","2","DEPOSITO","6789","0","4800","LUIS","","2017-10-26","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("9","1","7","DEPOSITO","204","0","45245","ADMIN","JHGFD","2017-10-26","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("10","1","8","DEPOSITO","566","0","23","LRAMIREZ","","2017-11-05","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("11","1","21","DEPOSITO","1","0","5000","ADMIN","","2017-11-05","CANCELADO","CANCELACION PRUEBA KARLA","ADMIN","2017-11-05");
INSERT INTO tbl_aprobacion VALUES("12","1","23","DEPOSITO","2","0","5000","LRAMIREZ","NINGUNA","2017-11-05","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("13","1","25","CHEQUE","22222","6","2500","LRAMIREZ","NINGUNA","2017-11-05","APR","","","0000-00-00");





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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

INSERT INTO tbl_bitacora VALUES("1","ACTUALIZAR","tbl_man_empleados","nombre1","JULIO AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA","JULIO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:13:43");
INSERT INTO tbl_bitacora VALUES("2","ACTUALIZAR","tbl_man_empleados","nombre2","JOSUE AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA","JOSUE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:13:49");
INSERT INTO tbl_bitacora VALUES("3","ACTUALIZAR","tbl_man_empleados","apellido1","REYES AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA","REYES","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:13:56");
INSERT INTO tbl_bitacora VALUES("4","ACTUALIZAR","tbl_man_empleados","apellido2","POSADAS rs_por_aÒors_por_aÒors_por_aÒors_por_","POSADAS","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:14:05");
INSERT INTO tbl_bitacora VALUES("5","ACTUALIZAR","tbl_man_municipios","id_zona_fk","4","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:19:58");
INSERT INTO tbl_bitacora VALUES("6","ACTUALIZAR","tbl_man_usuarios","id_rol_fk","9","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:23:13");
INSERT INTO tbl_bitacora VALUES("7","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:24:49");
INSERT INTO tbl_bitacora VALUES("8","INSERTAR","tbl_roles_objetos","id_r_objeto","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:25:15");
INSERT INTO tbl_bitacora VALUES("9","ACTUALIZAR","tbl_man_categoria_empleados","estado","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:34:15");
INSERT INTO tbl_bitacora VALUES("10","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:57:00");
INSERT INTO tbl_bitacora VALUES("11","ACTUALIZAR","tbl_man_usuarios","id_rol_fk","2","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:03");
INSERT INTO tbl_bitacora VALUES("12","ACTUALIZAR","tbl_man_usuarios","fecha_modificacion","2017-10-23 00:00:00","2017-11-05 00:00:00","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:03");
INSERT INTO tbl_bitacora VALUES("13","ACTUALIZAR","tbl_man_usuarios","fecha_vencimiento","2017-10-31","2018-11-05","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:03");
INSERT INTO tbl_bitacora VALUES("14","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:24");
INSERT INTO tbl_bitacora VALUES("15","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:35");
INSERT INTO tbl_bitacora VALUES("16","ACTUALIZAR","tbl_man_usuarios","intentos","2","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:42");
INSERT INTO tbl_bitacora VALUES("17","ACTUALIZAR","tbl_man_usuarios","estado_usuario","A","B","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:42");
INSERT INTO tbl_bitacora VALUES("18","ACTUALIZAR","tbl_man_usuarios","intentos","3","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:58:42");
INSERT INTO tbl_bitacora VALUES("19","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:00");
INSERT INTO tbl_bitacora VALUES("20","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:12");
INSERT INTO tbl_bitacora VALUES("21","ACTUALIZAR","tbl_man_usuarios","clave","qi5XnucQKj+qro+Um4y7UqX9tCZOH1kHNazEcU7hUYM=","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:13");
INSERT INTO tbl_bitacora VALUES("22","ACTUALIZAR","tbl_man_usuarios","estado_login","OK","RS","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:13");
INSERT INTO tbl_bitacora VALUES("23","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:17");
INSERT INTO tbl_bitacora VALUES("24","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:21");
INSERT INTO tbl_bitacora VALUES("25","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("26","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("27","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("28","ACTUALIZAR","tbl_man_vehiculos","kilometraje","3000","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("29","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("30","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:31");
INSERT INTO tbl_bitacora VALUES("31","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:59");
INSERT INTO tbl_bitacora VALUES("32","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:59");
INSERT INTO tbl_bitacora VALUES("33","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:59:59");
INSERT INTO tbl_bitacora VALUES("34","ACTUALIZAR","tbl_man_usuarios","estado_usuario","B","A","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:17");
INSERT INTO tbl_bitacora VALUES("35","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:34");
INSERT INTO tbl_bitacora VALUES("36","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:34");
INSERT INTO tbl_bitacora VALUES("37","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:34");
INSERT INTO tbl_bitacora VALUES("38","ACTUALIZAR","tbl_man_usuarios","clave","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:51");
INSERT INTO tbl_bitacora VALUES("39","ACTUALIZAR","tbl_man_usuarios","estado_login","RS","OK","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:00:51");
INSERT INTO tbl_bitacora VALUES("40","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:01:03");
INSERT INTO tbl_bitacora VALUES("41","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:01:03");
INSERT INTO tbl_bitacora VALUES("42","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:01:04");
INSERT INTO tbl_bitacora VALUES("43","ACTUALIZAR","tbl_man_empleados","nombre1","SDFSDF","MARITZA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:04:18");
INSERT INTO tbl_bitacora VALUES("44","ACTUALIZAR","tbl_man_empleados","nombre2","SDFSDF","IRIANA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:04:34");
INSERT INTO tbl_bitacora VALUES("45","ACTUALIZAR","tbl_man_empleados","apellido1","DFSFD","FLORES","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:04:40");
INSERT INTO tbl_bitacora VALUES("46","ACTUALIZAR","tbl_man_empleados","apellido2","SDFSDF","SALGADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:04:46");
INSERT INTO tbl_bitacora VALUES("47","ACTUALIZAR","tbl_man_empleados","nombre1","SDFDFGSDGA","GUILLERMO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:03");
INSERT INTO tbl_bitacora VALUES("48","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:13");
INSERT INTO tbl_bitacora VALUES("49","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:15");
INSERT INTO tbl_bitacora VALUES("50","ACTUALIZAR","tbl_man_empleados","nombre2","ADFASDFASFA","FRANCISCO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:22");
INSERT INTO tbl_bitacora VALUES("51","ACTUALIZAR","tbl_man_empleados","apellido1","ASDFASDFAASDFAS","DOLORES","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:29");
INSERT INTO tbl_bitacora VALUES("52","ACTUALIZAR","tbl_man_empleados","apellido2","JFFHFF","ZURDO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:40");
INSERT INTO tbl_bitacora VALUES("53","ACTUALIZAR","tbl_man_empleados","nombre1","CONDUC","QUIMBERLIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:05:58");
INSERT INTO tbl_bitacora VALUES("54","ACTUALIZAR","tbl_man_empleados","nombre2","CONDUC","VALENTINA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:06:13");
INSERT INTO tbl_bitacora VALUES("55","ACTUALIZAR","tbl_man_empleados","apellido1","CONDUC","MU—OZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:06:26");
INSERT INTO tbl_bitacora VALUES("56","ACTUALIZAR","tbl_man_empleados","apellido2","CONDUC","RAMIREZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:06:38");
INSERT INTO tbl_bitacora VALUES("57","ACTUALIZAR","tbl_man_empleados","nombre1","PRUEBAN","TATIANA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:07:17");
INSERT INTO tbl_bitacora VALUES("58","ACTUALIZAR","tbl_man_empleados","nombre2","PRUEBAN","ENRIQUETA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:07:31");
INSERT INTO tbl_bitacora VALUES("59","ACTUALIZAR","tbl_man_empleados","apellido1","PRUEBAN","BUQUE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:07:40");
INSERT INTO tbl_bitacora VALUES("60","ACTUALIZAR","tbl_man_empleados","nombre1","PRUEBAC","HAROLD","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:07:51");
INSERT INTO tbl_bitacora VALUES("61","ACTUALIZAR","tbl_man_empleados","nombre2","PRUEBAC","MAXIMO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:07:59");
INSERT INTO tbl_bitacora VALUES("62","ACTUALIZAR","tbl_man_empleados","apellido1","PRUEBAC","BETANCOUR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:08:10");
INSERT INTO tbl_bitacora VALUES("63","ACTUALIZAR","tbl_man_empleados","apellido2","PRUEBAC","CACIQUE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:08:20");
INSERT INTO tbl_bitacora VALUES("66","ACTUALIZAR","tbl_man_empleados","id_dependencia_FK","1","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:09:38");
INSERT INTO tbl_bitacora VALUES("67","ACTUALIZAR","tbl_man_empleados","estado","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:10:30");
INSERT INTO tbl_bitacora VALUES("68","ACTUALIZAR","tbl_man_empleados","estado","INACTIVO","ACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:10:56");
INSERT INTO tbl_bitacora VALUES("69","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:11:15");
INSERT INTO tbl_bitacora VALUES("70","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:11:15");
INSERT INTO tbl_bitacora VALUES("71","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:13:27");
INSERT INTO tbl_bitacora VALUES("72","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:13:27");
INSERT INTO tbl_bitacora VALUES("73","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:16:24");
INSERT INTO tbl_bitacora VALUES("74","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:16:24");
INSERT INTO tbl_bitacora VALUES("75","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:18:43");
INSERT INTO tbl_bitacora VALUES("76","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:18:43");
INSERT INTO tbl_bitacora VALUES("77","ACTUALIZAR","tbl_servicios_generales","estado","CANCELADO","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:18:43");
INSERT INTO tbl_bitacora VALUES("78","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:18:43");
INSERT INTO tbl_bitacora VALUES("79","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:57");
INSERT INTO tbl_bitacora VALUES("80","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("81","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("82","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("83","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","CANCELACION PRUEBA KARLA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("84","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("85","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-05","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:19:58");
INSERT INTO tbl_bitacora VALUES("86","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:22:36");
INSERT INTO tbl_bitacora VALUES("94","ACTUALIZAR","tbl_man_empleados","id_empleado","24","14","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:05");
INSERT INTO tbl_bitacora VALUES("97","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","25","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:38");
INSERT INTO tbl_bitacora VALUES("98","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","26","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:42");
INSERT INTO tbl_bitacora VALUES("99","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","27","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:46");
INSERT INTO tbl_bitacora VALUES("100","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","28","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:51");
INSERT INTO tbl_bitacora VALUES("101","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","29","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:36:59");
INSERT INTO tbl_bitacora VALUES("102","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","30","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:03");
INSERT INTO tbl_bitacora VALUES("103","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","31","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:06");
INSERT INTO tbl_bitacora VALUES("104","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","32","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:10");
INSERT INTO tbl_bitacora VALUES("105","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","33","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:16");
INSERT INTO tbl_bitacora VALUES("106","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","34","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:21");
INSERT INTO tbl_bitacora VALUES("107","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","35","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:25");
INSERT INTO tbl_bitacora VALUES("108","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","36","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:28");
INSERT INTO tbl_bitacora VALUES("109","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","37","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:37:32");
INSERT INTO tbl_bitacora VALUES("111","ACTUALIZAR","tbl_man_empleados","id_empleado","25","15","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:27");
INSERT INTO tbl_bitacora VALUES("112","ACTUALIZAR","tbl_man_empleados","id_empleado","26","16","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:36");
INSERT INTO tbl_bitacora VALUES("113","ACTUALIZAR","tbl_man_empleados","id_empleado","27","17","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:40");
INSERT INTO tbl_bitacora VALUES("114","ACTUALIZAR","tbl_man_empleados","id_empleado","28","18","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:46");
INSERT INTO tbl_bitacora VALUES("115","ACTUALIZAR","tbl_man_empleados","id_empleado","29","19","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:53");
INSERT INTO tbl_bitacora VALUES("116","ACTUALIZAR","tbl_man_empleados","id_empleado","30","20","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:38:58");
INSERT INTO tbl_bitacora VALUES("118","ACTUALIZAR","tbl_man_empleados","id_empleado","31","21","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:39:44");
INSERT INTO tbl_bitacora VALUES("119","ACTUALIZAR","tbl_man_empleados","id_empleado","32","22","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:39:49");
INSERT INTO tbl_bitacora VALUES("120","ACTUALIZAR","tbl_man_empleados","id_empleado","33","23","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:39:54");
INSERT INTO tbl_bitacora VALUES("121","ACTUALIZAR","tbl_man_empleados","id_empleado","34","24","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:40:02");
INSERT INTO tbl_bitacora VALUES("122","ACTUALIZAR","tbl_man_empleados","id_empleado","35","25","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:40:06");
INSERT INTO tbl_bitacora VALUES("123","ACTUALIZAR","tbl_man_empleados","id_empleado","36","26","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:40:11");
INSERT INTO tbl_bitacora VALUES("124","ACTUALIZAR","tbl_man_empleados","id_empleado","37","27","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:40:15");
INSERT INTO tbl_bitacora VALUES("125","ACTUALIZAR","tbl_man_empleados","id_empleado","39","28","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:40:19");
INSERT INTO tbl_bitacora VALUES("126","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","9","7","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:41:20");
INSERT INTO tbl_bitacora VALUES("127","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","10","8","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:41:24");
INSERT INTO tbl_bitacora VALUES("136","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","11","9","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:42:02");
INSERT INTO tbl_bitacora VALUES("137","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","12","10","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:42:56");
INSERT INTO tbl_bitacora VALUES("138","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","13","10","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:01");
INSERT INTO tbl_bitacora VALUES("139","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","13","11","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:39");
INSERT INTO tbl_bitacora VALUES("140","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","14","11","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:43");
INSERT INTO tbl_bitacora VALUES("141","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","15","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:46");
INSERT INTO tbl_bitacora VALUES("142","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","1","12","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:50");
INSERT INTO tbl_bitacora VALUES("143","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","2","13","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:53");
INSERT INTO tbl_bitacora VALUES("144","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","16","13","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:43:56");
INSERT INTO tbl_bitacora VALUES("145","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","17","14","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:00");
INSERT INTO tbl_bitacora VALUES("146","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","2","14","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:03");
INSERT INTO tbl_bitacora VALUES("149","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","2","15","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:20");
INSERT INTO tbl_bitacora VALUES("150","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","18","115","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:25");
INSERT INTO tbl_bitacora VALUES("151","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","115","15","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:31");
INSERT INTO tbl_bitacora VALUES("152","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","19","16","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:35");
INSERT INTO tbl_bitacora VALUES("153","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","20","17","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:40");
INSERT INTO tbl_bitacora VALUES("154","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","21","18","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:43");
INSERT INTO tbl_bitacora VALUES("155","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","22","19","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:47");
INSERT INTO tbl_bitacora VALUES("156","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","23","20","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:51");
INSERT INTO tbl_bitacora VALUES("157","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","24","21","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:53");
INSERT INTO tbl_bitacora VALUES("158","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","25","22","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:56");
INSERT INTO tbl_bitacora VALUES("159","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","26","23","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:44:59");
INSERT INTO tbl_bitacora VALUES("160","ACTUALIZAR","tbl_direcciones_empleados","id_direccion_emp","27","24","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:06");
INSERT INTO tbl_bitacora VALUES("163","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","2","16","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:30");
INSERT INTO tbl_bitacora VALUES("164","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","17","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:34");
INSERT INTO tbl_bitacora VALUES("165","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","18","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:39");
INSERT INTO tbl_bitacora VALUES("166","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","19","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:42");
INSERT INTO tbl_bitacora VALUES("167","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","20","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:48");
INSERT INTO tbl_bitacora VALUES("168","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","21","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:45:55");
INSERT INTO tbl_bitacora VALUES("169","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","22","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:46:00");
INSERT INTO tbl_bitacora VALUES("170","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","23","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:46:10");
INSERT INTO tbl_bitacora VALUES("171","ACTUALIZAR","tbl_direcciones_empleados","id_empleado_fk","3","24","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:46:18");
INSERT INTO tbl_bitacora VALUES("172","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:49:19");
INSERT INTO tbl_bitacora VALUES("174","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:50:26");
INSERT INTO tbl_bitacora VALUES("175","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:50:26");
INSERT INTO tbl_bitacora VALUES("176","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:50:26");
INSERT INTO tbl_bitacora VALUES("177","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:50:26");
INSERT INTO tbl_bitacora VALUES("178","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:09:13");
INSERT INTO tbl_bitacora VALUES("182","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:10:31");
INSERT INTO tbl_bitacora VALUES("183","INSERTAR","tbl_man_empleados","id_empleado","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:14:18");
INSERT INTO tbl_bitacora VALUES("184","INSERTAR","tbl_direcciones_empleados","id_direccion_emp","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:14:18");
INSERT INTO tbl_bitacora VALUES("185","ACTUALIZAR","tbl_man_empleados","modificado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:14:26");
INSERT INTO tbl_bitacora VALUES("186","ACTUALIZAR","tbl_man_empleados","fecha_modificacion","0000-00-00","2017-11-05","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:14:26");
INSERT INTO tbl_bitacora VALUES("187","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:26:00");
INSERT INTO tbl_bitacora VALUES("188","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:26:00");
INSERT INTO tbl_bitacora VALUES("189","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:26:00");
INSERT INTO tbl_bitacora VALUES("190","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 21:26:00");
INSERT INTO tbl_bitacora VALUES("191","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 22:44:21");
INSERT INTO tbl_bitacora VALUES("192","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 22:45:18");
INSERT INTO tbl_bitacora VALUES("193","INSERTAR","tbl_man_roles","id_rol","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 22:45:38");
INSERT INTO tbl_bitacora VALUES("194","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:31");
INSERT INTO tbl_bitacora VALUES("195","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("196","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("197","ACTUALIZAR","tbl_man_vehiculos","kilometraje","75500","78565","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("198","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("199","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("200","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:12:32");
INSERT INTO tbl_bitacora VALUES("201","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:33:33");
INSERT INTO tbl_bitacora VALUES("202","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 23:33:33");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tbl_desglose_gastos VALUES("1","5","000001","VALLE AMAPALA","2375","20","4750","","0","","0","4750","4800","50","Saldo Favor DEFOMIN","","LUIS","2017-10-26");





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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_empleados VALUES("1","4","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","1709-1996-00602","VIUDO","CONDUCTOR","2000.00","1111-111","524512456235","ACTIVO","ADMIN","2017-03-07","JESCOTO","2017-10-19","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("2","1","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","0801-1995-05807","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","2222-2222","12345678","ACTIVO","ADMIN","2017-03-07","LUIS","2017-07-09","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("3","1","1","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","0814-1986-00238","CASADO","AUDITOR","10000.00","8862-4608","548754652125","ACTIVO","ADMIN","2017-03-17","ADMIN","2017-10-10","SERVIGE","");
INSERT INTO tbl_man_empleados VALUES("4","2","4","JULIO","JOSUE","REYES","POSADAS","5754","0801-1987-16541","default","CONDUCTOR","10000.00","4444-4444","6524587562124","ACTIVO","ADMIN","2017-03-18","LUIS","2017-07-20","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("5","3","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","0801-1994-00395","CASADO","ANALISTA","10000.00","5555-5555","35214523012401","ACTIVO","ADMIN","2017-03-17","JESCOTO","2017-10-21","UNISOL","");
INSERT INTO tbl_man_empleados VALUES("6","4","1","JOSE","RAMON","ESCOTO","FLORES","5648","0801-2008-11111","SOLTERO","CONDUCTOR","10000.00","6666-6666","5426854210324","ACTIVO","ADMIN","2017-03-16","JESCOTO","2017-10-21","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("7","3","10","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","2222-2222-22222","CASADO","CONSERJE","9500.00","7777-7777","8457853045215","ACTIVO","ADMIN","2017-03-16","","2017-03-17","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("8","1","2","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","0801-1995-05809","SOLTERO","PROGRAMADOR","9999.00","2222-2222","5421542658541","ACTIVO","ADMIN","2017-03-07","","0000-00-00","SERVIGE","0");
INSERT INTO tbl_man_empleados VALUES("9","3","3","PEDRO","ANTONIO","FUNEZ","SUNIGA","2","5555-5555-55555","SOLTERO","CATRASTOFICO","10000.00","5555-5555","987654321","ACTIVO","LUIS","2017-04-13","","0000-00-00","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("10","3","6","CRISTIAN","JOSUE","RIVERA","RAMIREZ","9999","3333-3333-33333","SOLTERO","PROGRAMADOR","20000.00","2222-2222","987654321","ACTIVO","ADMIN","2017-04-21","","0000-00-00","DISPONIBLE","0");
INSERT INTO tbl_man_empleados VALUES("11","1","1","SAID","JOSE","ROJAS","GONZALEZ","2342","4444-4444-44444","DIVORCIADO","CONSERJE","345.00","2323-4234","23456","ACTIVO","LUIS","2017-04-23","LUIS","2017-07-02","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("12","3","4","MARTHA","CAROLINA","LOPEZ","GARCIA","900","1111-1111-11111","DIVORCIADO","GERENTE DE RECURSOS HUMANOS","12000.00","1111-1111","1111-1111-1111-1111","ACTIVO","ADMIN","2017-04-28","JESCOTO","2017-10-22","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("13","4","3","MARITZA","IRIANA","FLORES","SALGADO","234","8888-8888-88888","default","CONDUCTOR","0.00","2342-34","243234","INACTIVO","LUIS","2017-07-07","","0000-00-00","DISPONIBLE","VACACIONES");
INSERT INTO tbl_man_empleados VALUES("14","3","4","LOURDES","SUYAPA","ORELLANA","VILLAFRANCA","555","0801-1993-01402","CASADO","ASESORA","0.00","9678-4094","123654798","ACTIVO","ADMIN","2017-07-11","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("15","2","3","JUANITO","JAIME","GARCIA","GARCIA","25","0777-7777-77777","SOLTERO","CONDUCTOR","20000.00","12345","0258","ACTIVO","LUIS","2017-10-07","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("16","2","5","SONIASSSSSS","ALEJANDRA","MATUTE","CAMOTE","3","0888-8888-88888","SOLTERO","OBRERO","60000.00","369","0257","ACTIVO","LUIS","2017-10-07","ADMIN","2017-10-11","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("17","1","1","PEDRO","ALBEIRO","ZELAYA","MARTINEZ","65465","6666-6666-66666","SOLTERO","CONDUCTOR","2147483648.00","9999-9999","23222222222222222222","ACTIVO","ADMIN","2017-10-10","JESCOTO","2017-10-20","EN GIRA","");
INSERT INTO tbl_man_empleados VALUES("18","1","1","KARLA","MELISA","GARCIA","PINEDA","10527","0801-1981-06359","CASADO","GERENTE","30000.00","9966-0186","0801198106359","ACTIVO","ADMIN","2017-10-11","JESCOTO","2017-10-21","SERVIGE","");
INSERT INTO tbl_man_empleados VALUES("19","2","1","TATIANA","ENRIQUETA","BUQUE","PRUEBAN","1234","1213-2412-34123","SOLTERO","PRUEBAN","87654356.00","2321-3421","98765","ACTIVO","JESCOTO","2017-10-19","JESCOTO","2017-10-19","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("20","1","1","GUILLERMO","FRANCISCO","DOLORES","ZURDO","23412","1234-2134-12412","SOLTERO","DFGHJ","678.00","5435-6754","67890","ACTIVO","JESCOTO","2017-10-19","","0000-00-00","UNISOL","");
INSERT INTO tbl_man_empleados VALUES("21","1","1","HAROLD","MAXIMO","BETANCOUR","CACIQUE","2000","9999-9999-99999","SOLTERO","CONDUCTOR","12345.00","PRUEBAC","09876543","ACTIVO","JESCOTO","2017-10-20","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("22","1","1","QUIMBERLIN","VALENTINA","MUNOZ","RAMIREZ","7777","7777-7777-77777","SOLTERO","CONDUCTOR","7777.00","7777-7777","7777777777","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","SERVIGE","");
INSERT INTO tbl_man_empleados VALUES("23","3","5","KAREN","MARCELA","PEREZ","MENCIA","110","0000-0000-00000","SOLTERO","CONDUCTOR","9500.00","2222","1587","ACTIVO","JESCOTO","2017-10-21","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("24","5","1","WALTER","ANTONIO","CARCAMO","NU√±EZ","300","0111-1111-11111","SOLTERO","CONDUCTOR","7500.00","234","30145","ACTIVO","JESCOTO","2017-10-21","","0000-00-00","SERVIGE","");
INSERT INTO tbl_man_empleados VALUES("25","2","2","LOUIS","SDFSD","SDF","DFGFDF","2345","0000-0000-00001","SOLTERO","DFD","345.00","34","45534","ACTIVO","ADMIN","2017-11-05","ADMIN","2017-11-05","DISPONIBLE","");





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
INSERT INTO tbl_man_roles VALUES("4","HOLA","ACTIVO","BIZCOA","2017-11-05","","");
INSERT INTO tbl_man_roles VALUES("5","HOLA1","ACTIVO","BIZCOA","2017-11-05","","");
INSERT INTO tbl_man_roles VALUES("6","HOLA2","ACTIVO","BIZCOA","2017-11-05","","");





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
  `foto` longblob NOT NULL,
  `tipo_foto` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_electronico_UNIQUE` (`correo_electronico`),
  KEY `fk_tbl_man_usuarios_tbl_man_empleados1_idx` (`id_empleado_fk`),
  KEY `usuario_roles` (`id_rol_fk`),
  CONSTRAINT `usuario_empleado` FOREIGN KEY (`id_empleado_fk`) REFERENCES `tbl_man_empleados` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_roles` FOREIGN KEY (`id_rol_fk`) REFERENCES `tbl_man_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO tbl_man_usuarios VALUES("1","1","1","ADMIN","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","juan@hola.com","","A","OK","0","ADMIN","2017-03-14 00:00:00","ADMIN","2017-10-10 00:00:00","","0000-00-00 00:00:00","2017-12-31","ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0Ñ\0	( %!1!%)-1..384-7(-.7\n\n\n-% %/-+-+--/--.-------------+-------------------------ˇ¿\0\0…\0˚\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0K\0\0\0\0!1AQa\"2BqÅ#Rbr°±Çë≤$3Scí¢—4CstÉì¡dî≥¬“”·5ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\07\0\0\0\0\01!AQa\"2qÅë±¡—·B°3#$4Rrˇ⁄\0\0\0?\0®≠Ò•H%@1R@P t bÄu t u;–Ä©†(@ËÄu (Ä(@†\n\0†\nP@(äq\n¬d©†I†$H†Hê≥øñÙ ·∫øb˝Ã 1ñf™Àmµ·ë ± MÀ¶<˛FH≈m’.£.æÈ.d\0›ƒB8–ÚıBÓN>y¨SSÍÈR{¯æ€#4zzzú{xy≥∆!îöÁ“ud´¨Œ4ëÓ∫#a|ò|+Uqñ÷O]ˇ\0CﬂLÂ·Ω6:÷Ó8è–],∏Áìb:Ëf:ÉyAÂ∑: ¨äÔ\\∑ÙﬂÚ1∏Iˆúvıÿ∫∑ïdPËr¨»’®…Inä≤ããŸûïËÅ–\0Í@bÄx†PÄ≈\0bÄ1@°\"≈\0P*\0®ÄX®¨&Qäê:í@0*A*1@1R»yÃ˛]hAÂ4™£HÁÂR\nÓœ¡=◊y‹†çÓ^y `ÈUç}Ú.¸áü*–fj≈MGºõfﬁåsN_*HΩÏwf õT≤†∏î‹JÊΩX•h‘ÈˆA¬éBπçORπ?õîøçæ>=qè“mÌí5àG †\nÂßlÊ˜ì-$ëªfR≤ƒí©Ê$Ea˚©Ö÷AÔ5Ùa≈>L’˜a°¡k\'6rsÎ=ªàüS‚Ñx‡◊E¶{G}QµÔÜNü]´tªô≈÷Æ–Õu<dBsœì+{»z7˝¡Ù\\L®d√ÆÊÔ¢TÀfz‚≠ x©≈\0bÄ1Bä\0≈\0bÄ1BEäÄ,P(H±@*Äpä¬eI†©®@≈H†%äp›ÕæM™H9b∂7•≤í∫ÚŒG5Åq®èI\n⁄œJ÷jŸø“–⁄ÂˆE˝?ﬂ[ﬂÑmxgKh˚òÚ#≈A˜C±m#»g∏mï≤Íó\'S®≠ë°‡6Àd™Ö‘Ïv\0nI$¸…\'ÁZº€%)§ﬂîí‡≥™dÖ\0PÓ€Œˆﬂ“„\\‹Z©mπ…kŒXº•˚J<MuûŒjN©ÙIˆ˝?É[üé¨Éˇ\0{ôu ÄA»# ¯ä˙J9V<Tê<P*@Ò@†\n\0†P\0±P≈\0bÑã\0X°%x¨RB§Åäê1B	PTÅäBw“§ˇ\0© ¨©∑c\"Ãó3aí‰™ù·˝¶O¿WÌ≠ﬁ°‰éóIÇUuyöäÁM©¬ø¢˘ö’‰ˇ\0»¡◊X\0PÈ5\0wb<A€k\n}≈˝è-‚œï¯{µh©ñX7˙∞»—Ø¯UkÏX6{ #/CçÀáE“GV*Ÿ\\x°ä‚Ä1@†P(≈\0bÄX°\"≈\0TbÄÆÄÃ:@TÅä:êHPÅ‘êsﬂ˚#„R(Asÿ≥èINæêØÚh£öüŸ\\7¥Q€)?4uL∑£cIZfY⁄q†ÄºÆC„|íY±ÖU≥…FI™v„Ÿm 5≠€\"RQ[≥ﬁãŸ}h∏d›ﬂ0◊AaÂ1q`µ±ØŸ€öﬁsK”í´ÀèÇ#˛ñÓÿGwo-ì≥iC8åƒÏy*Õ2dÙRA>W+F»°u|À”ˆ=√&Ì¡;Ó-N!\nÛ‹2ÍX`BÚÂ®éHπ€S<Í∂&ü~W¸k∑õ‡…e—á#3_®xTÿIÏö@<t˜ò?\0∆∂´ŸÎ„›Mo˜+ˇ\0W 1˝¢ªµñÍ)-˝KóÔVÍFé@QT§íƒ¿m¬Í«¨ô\0WY†<ò7]ﬁ_cS©™‹:¢x‚∫ìF:\0≈I@<P(äbÄ1P$X†(ä*∫´ôÜ*A	ßT∆rI8UEff>\n™	?*≈mı’©ΩëÓ∫ßc⁄+pi cºäHA8Vñ\'T,y.øg>YÕW£R∆∫]öﬂ»Õn’≠Â‹\nºT%R*H<o)9°}€Ÿπt^È,„Ö≤˜doÓ◊/Ì-;¬yv7∫5ü4>Ê¬∏Û|]˛è8J øÈ9Üßr¬ÿ6‚+pJáQı‰¡b‹Ùï9ÍpÒ£MkÕÚÕUˆ9À–ŸYﬁ≈:óÜTô-´Ä pÀï<¡Ê*ŸÑ/l„û6ÜdDÍUë∆C)Ê†3=Å·ÀfnÌ0ZXÓrfrZI†ëC¬Œ‰íJÆbˇ\0ïÁ^c≈m≤Ô…≠Ø@˘˜È+[®$Ω∂ñ9.¨üL∆7R¬Xöqæ√,‰…Ò¨¯ˆ:ÏL√}ju¥dÒ]°Päíä ÊtâKπ“£„ÃÏ\0rIÿŒºNqÑ\\§ˆG∏BS}1]œz√÷kY“?ÆcR1‚QX∏˘Æ›kWoSËS˝ã““Úz∂:ëÉ\0TÜdr<à≠≤ik⁄hx© 1PH±@®\"Ñã_ìå@˝µ_Ç∆≈ßd8LwÁæπ:‡%Ñqı[I∆©1ÌdÁ\nv∆:ö‚ı˝^Ë∑]=íÂùzÁ›ö>1Ÿxm–›X¬∞œR1Ñö!ªFWêbÃ7»»»ÆsQ≤Ÿ*ØñÒ~/¡¯?›ÂZá≈‹PvìÜÕ∑öh›pÀÜpQ∆F≠ ‡ÔÚ•ò9p∑ﬁW∫Ò„Ç]ï…lŸë≤ô5Is-¬≈&ïëX6∏»Ñë◊IÛS_J”rg~<eb⁄^(Â≥)Uÿ˙x:ÎbT†\\Ç<®ASäêrßE∏BØÒoR_£b<Fôjµh∆Ïk+\\ÆÊ«™ªc\'√5“Òf]¡A‹j2uáC R9cN|XWuÓ∫˜ÔŒﬁã±“ª_OásËﬂ£ŸNo>ÓGên1$?D„Àuœ¿äÈ·%(©/U%≥ÿÍÏóe-xT-¢≤£ dmnXÍ ~\0\0+—ÂÖ≤Ì4Kƒ/ùa∏üx`N‚ﬁGG0+ó˙\\¡#.Ï=ÉXÁl!Û4âQoÇ«˘IzAq¬úFJµ’ø~GŸçIR|ãä√˝m-ÏôÔ›HÀˆéNãû¨ºV@œçzåa≥;∫ìÍi◊\0Ôéµ∞«≠ŒƒëZ˘®A∂Rb∫Cü\0PO*≤‚¸å∂B $„`:ìF“[≤RmÏÖ¬“ÓyE¿≤y£E˙ºqùMùRïsœúl[∆∏≠sS¶Ô˙JÕ¢πÁπ“È∏r•u =Ÿwu≈5i¥é9-Øì\'’\ngàå£íJ® údìÀÕ◊Gwlöî>_ØäÛf—ÿ‰˙Wft€v‘∆åDÿŸ”Wz>—ó:≥◊sÒØZ»ÆÕ„\'€˙lD±™îvqE5¨Ö^Kwëeñ“Y\n·–ÄQ9Ë ’Ù≠+;˙Ãuc[?ryÿﬁ‚∆óN+dR\nbÄUäÄ*œ˙?‡–]<ì‹ î$ö!G\0¶TÚi;‘p3ÀOù|ˇ\0⁄}FËÕS[ixÏun4z=‰πf≥ãvi˜÷∫mÆÄÿ®ƒrcíLÉfkòËzW3èü(¸|QıÂzß˙xõ9W„Jà∏¨ºLã%’n<9\"@¿ïÙp√ó≤≈òt”èk5q„WáΩÔ‚ﬂ‰Ú˙˛ÀÒ‡Ò’Ô;~?±Æ∞∞ä≈¢(¿\n†l+S;-æ{∂€f^—Fk∑º2?GÙÿ—DÒ21u\0Åú,äƒ{C®g™äﬂ{7õeY^Ì∑≥)j∆u6g+È«(HPÇ1«<‘Ç∫_h„ñjACƒ,åÜ„Aƒ£K5h¬ï?`U©Îs€ü‡πUΩ\nÒ¸õi.¨$î.âÁsq¢6u*`$Ù⁄4˝µ¬Ydj»Qèg˙˛gOπVﬂãÔ˚æ=Õ¥Õ-®W\0”A#iWe\0kç¿:Ç(Èè©¨u”gx¯?/‡Û~?_ƒπ5I€HÄÌ≠‹/ı}Ip~¸:”Ò≠¥5Y-’ãÚ¸ NõÅ«ƒxÂ›“òÌ‚{éC\\O†KßØs\'ıü˙¶©ektV∂´‚óßÔ–À^4§˛.«=ã€¡¡”Îüâ$Û$‰ì‘öÂÆYIŒ{∂ÕÑb¢∂GÌe≠Øædó‹ä ZWa—nf<k6&ùëd”ä€‘Ûd„‹¬X$:‡ö7VûxÓûÂB›Ãù˙J±?—ÈÔ›qÅììä˙&ãeéŸ∆Kdª/Tº~Á=©∆>Ó->ÂΩtfê*@Ò@Vﬁ‹JègÛ4t∞âdÇ›dú(ä“ï>G@»ö‘Îw∫±$„ÀÏlt∫‘Ú˛“Ï.£à«í$ò;!#’%0Jj˙⁄I`:ÄﬁÚã·;:¶∏é€˝¸~ûZ‰ìÿ˜„<!n–\'≥*∂®dxÂË√ƒt#ëÉ^pÆïv§∏}öÛ_Ôõ\"öﬂ» €‹O≈∞$S∫Âr;ŸêÈî»√~Ï8*Æ	9»µùU`o∑yy˘/Ω|ﬂ‡xÜˆ≠ﬂùﬂd-Y6ÇA¥O∆åé>¶€Ï	+»ÄsUË÷2j≥ﬁC~‹Û«®∂äÏèLí3ˆ2≥ßÆ\0ëY„p9	crèè-JkÎx∑+Èçã≈nqw◊Ó¨pÚ=ÒYÃAP@\"*	ú·ÚH-d6âÌÔVp ∫òE&Ï·}ÌöPGP§uÆS¶1Ãj≈Õ5˛˝ˆ˚ùV˙±óO)üI‡\\|Oí`±∑ån$â«◊F‡¯0W!ïÇÎ≥¶æÎ◊≥^è¯6PñÎvR;ÛÈ∑Wp€Ω≈î≤™ÎÄ°~Ú4TylF§$`$Âÿ\"Ø›D5St˙dº¸ü5ÎÊaRiπEnã.‰‚m-™ƒˆ∂à¬;û¯Åq(eWÓï\"8ŸYrŸ‘A#sIJå)UÒJ\\?·øŸ¯∫≠{>…˝©≥2pÎ®¢MMËéo∞ÿ(UÉEó˝⁄úü˚πÎ!|8$°îÜRr ◊÷¢”[£éíiÏœQ^è$d\\„Ô\nêq^(∑h#<Ã©$v˙b4Û{ƒ€#Q\'VŸ\0\0I<ÖiımM`≈8√™rÏí/·b<èôÌj8\'haA‰7÷j∫–ëYp˙•ï«?™F:‡ÓΩY7◊[Ñ˘€√Ùk¸ù5[•≤{¢Œ>!∂gô¥∆™ryíN¡Tu$‡\09ìUßDÓ]]ŸíRQ[≥ÅÓoÔ∑Ô∆ 8Hï˛÷lßÏ¶1ıçlË”qË_Íóõ„Ïørªî•œbŸwJ«∆gñS˚dcW„>üïmÙIz\"/‰e¶1›®_\0ÿ>˙C¢>Eß\n‡–Zˇ\0C∆O2à´˘\nÛ) \\≤RKÑWÉ√tu∏1Œx∞%_\"yHøe≤>öå´)ñÒf+hÖãi#?kÏÖë-“MWæy{òe«Ω`\\˘ÌÄAçt+XÇÇ›w4ØKììŸˆ\'i1pu!ç’ŸI·ó#c‰G0A≠≠FË)ƒ÷›S™n,ˆ5îƒRR¬biÓ£tEπwË\\∆…›Ø÷#VOÜ1Œπ_hÛj˜^·=‰oÙ|i©{◊¡ÙY¨c∏µ	)*\0[KFËr≤#{§c?ûFkÁQ∂ud9Cª„oøÉ7ÛäíÓWpn!≈\'Ä:eGœus*J&1{≤µ≤˙öàﬂ€«™9V“À∞±Ï˘ZÂ.7Ò[ˇ\0x∆…Æ{}üºãÜ©∂º~ÊEv”,äDs!b¬Eìu[© Éù±ÉXs+ûcV“∫ìÂ.SÚkùºôíP]2%¬YÔûSË∞¡ Rch¢à,—´˙‰*)ÃççZ∞†^Â*ñ-k‚ìM˜›§º⁄ÌÙKèÁÑﬁ˝oÑSp≤Z3)R¶YeüIÊΩÙç(SÊÚØ©‡’Ó±·$r9sÎ∫LÎ´EaPëP‘bÄ €\\Ωº´q‘@“Ë?⁄DNHh«Ãu≠ßÄ≤ÍŸr∏6ÿ9^‚}¯f¶ar¢uÇ)˝bt3u‘º≥ûyÆ\"wdT˙öhÈT+öÍH‘p,+\0£`\0\0ÚÁZ¨Õ‹S~fS´ÜX§∏ïà-4·3ÄâDÉ„Ñ…˚ﬁU^˚î·.\"∂˚∂€¸œéÕø2…ÉëŒ∞◊d´íîy=4öŸò~’pnÕylÑ€1-<J2bcªMéhy≤é^–Î_@–µ∏Œ>Óo¯4y¯-¸q‰ßçÉ\0 AR29DÏOÉD÷ƒnòÑ$sØDï$±∫Ky\\ q4jå‡gªxÀïb<=søB¢π›w\n€znØªèÅπ“ÚaÎümÀû%ådGo*K+\"+ò7cÈ.BììπÁ∞ﬁπ<Ö|óT÷…qøØÇÛ7µ∏.—}…›°∏ΩXœÙp*æ:ârü∫†ü◊•Y¬áMN~/∑Ÿl{œo#Y\0B≤ûIP\0P	é>Ä éÿ¨¬ÓgB#∑päÄo!$™Ä›Yüéõµk˙vÂÆYÖ⁄ío»çÑ.™ZR“;K)ªŸ¶»{#»\nÏÒh˜5(ÆMﬁˆ«#ŒÚÎ™ÛÍj¡Ä≠≤µ{∆!	KppÚçãëÕ\"?õÙ‰7ÂÕÍ˙‹hN™ªÀÚ7Z~òÏ⁄Ào#e√8xaâBF£\0≤≠p7ﬁ˚ŒovŒô$ñ»øº±Y`{rJ£ƒ—íßî© ¯‡÷Æª•û)Ó$∑[Ò†U\n6\0\0>\0`V9I…∂…Kc—Fƒí@…$‡‚Mf««≤Èmƒ‰¢ªòæ–ÒÖæ˛mnseúÀ/!rA»ä?Ûª7&¿#5ÙAU’±?¡°‘uóD»Ê≈vg>T4°\"†\nÄd™±`Ù·◊∆Œ^¯g∏cÙ»9c˙–<WÆ9å¯\n“Îj»ØÆ‚F”OÃuÀ¢O≥>Éiq§¨äCà ÏT˘˘ä‡≠Ø©8≥§]Õ,RÜ‡ä‘J./f	Wê5bG:˜	 ÍãÓCI≠ôçÌfZ\"◊6Qñåí“€\'0NÊKq¯ò˙Û]ˆ=ﬁâØ©%]¨“Ái˝_y(bë%MJC!Í?Å€FJKt˚	E≈ÏŒYÌ4åÁ\"ΩzêwvWk©«C\'ÊQ˛U∆˚Oßtz,æ	/R”ÑÌ}8<Ãë7ÍBèÒ+Vª˛˝ˇ\03c/ùöäÙ@P\0P\\kã˙!åºe·v({øZA&2∏èõÆgågÕf¶ókÈè&;,U≠Â¡Ow«wº.ë	Ñ”<êº@î¢(pâm$ú`Á[≠7’jú÷…º¸ ›n0}ŸœƒAıÇ†≥Åèçtíj+vhRr{#õá∑ªıÂØ0ß+$√ÌuDÚÊ|á>CV◊π´˝Y—i˙VﬂøÅ±·ˆ:∞à\"Ä6\n@?Ì\\]◊(˜|õ‰∂4B®4®¿¸œâ≠\\ÊÊ˜`ÙØ\0í)\'ùd™πY%ë)$∑f\'¥ú@_KËËuX¬‰?Ö≈ ÏAÒçÌaˆw˙_≥˙DkÇ≤kÈ˚úÊßö˜Ëè>\'ñ+≠4!P@\"(Hà®4$TbÊ\'nG¯≈U,5 ≥ÏœÙw≤°sÙ,}«?ÏOëÊø1·\\Üπ¶tøZÌ‚tnoZ˜sÁ¿›p˚√¡›?/1\\çÙ˚≈Ín’`FA»5¨iß≥®•6ûËmπúÌf{Ê7•b∫;∫6—\\}¸{x8Á‘±÷hﬁ– ñ´∑ÉYôÅVÎì4Ÿ+E2$äAáCû£®=dÜæáèë„’swS*û“G¨Ê∑≥_Îr√\'˛£W#ÌGˆ˝â<b\'äDΩâKî]3\"å≥CùAîud98Í∫‚¥8W%Ωr|Òı˛M≈±24ñ7ëœÀáçÜASëWiÏÃiÓªı\0(+≈¢∂Y%€ÿç7íC‡ã˘ì∞ÍEe¶ô€.ò-œ[„’&gÀ;9ππ >í C‹™üyé¶ÎÄ9\nÎ∞0#çﬂÕ‚Œg71‰Ke¡_ƒ8†ŸW,Õ≤\"nÚ!·Á»u´YUQªbΩ8ˆ].ò£ØÖ≈fª√89HTÊ8œBﬂ÷?ôÿtÒÆT÷Ï nÌÃÍp¥ËP∑}Ÿ´±≤2úùì©ÒÚÕ]zØ∑â≤/bå(“£\0V≤Rr{∞J†‹Ó’Òf∞∑b≥2Éq*ù‡ÅΩ≈=$qú}Qñ˙πÓ=û—\\ﬂ\\◊◊ˆ4˙Ür™;.|\nhaTPà°Q@\n  +ËqääŸ´ìovO$\nÑäÄU\0FÑàäÄFÑîÓÅÜU,“FT‡‘êyM∫ïaêèë®î‚‚¯d∆N/thª5∆Kˇ\06ù≥:å£üˆ—éø|u>µ¡Í⁄c≈üT~VuX9j¯Ï˘F∑áﬁòŒË1\\ıÙu≠◊%‚ÒXë∏≠c[=ò\0P=°‡ﬂ îïAÕ“&zgﬁ_≤r>{÷œV…√ñ}ºô^ÏjÌ[I>∂ÏΩÁÛìÔö⁄Tç–πeúòïŸ¢fG√)Ó…#,@<´Ë§ÏÆ6æÉ4π0ÔŸ£õ≥úV!q+‚GÃQ†€œ#Vê≤êätëï»5S]å≤•u›$g“ˆ¢ÎÏ˜5Q^L¯ÓÏ.ﬂ<øõËœ˝FZ—≠.˜Œﬂâ≤yP%\'πœ{ma{c9\0æÖ±xd|n“Cﬂn~“È>ubúl⁄˛8 >⁄kÔ±ÇV÷ﬁÎtF;ﬁ\"≤,[D≥0%{ˆ∏∂◊éz2é¨@‹ÖrE{»í¢=vE•È≥˝Ba7\'≤ÿ∞èÖÒ•∏Ü—:ãdid˘I.p÷Æz≈+¥\"ﬂ◊∑Â˚ôΩ‘ﬂ/c1ƒbä ˛Í$Y¶a‹˙≈fûCòUà.8…\'aùÄÆ„G»Æ4πM§˜ˇ\0ÉP™…Õ(˜:ª/¬óâÃÔs˛ØÙwVWyHX€FÿÎz˝ÊÊ{œÇ~d‚b˚øä|˛E˝◊a`G3ÿe9!WT.9ÈxΩ—ü®GŒµ7”£”3c	∏=‚y•fõ—Óì—Á®&r≤†Ê?ææ<à»»Ãj8ˆbÆ•›?/©∞™¯œÍi’@\0xW>€ovf@\nØ¥\\d⁄\"§@=Ï†˜H‹ëGµ4ÉÍÆyu8vÈÙ=wÿ•%¸&ø7.5A≥1im›Ç5vbÓÔªI#{N«ƒ˛\0l+ÍQ\n`°ŸÖ÷ ŸπHˆ¨∆ ≈\0à°$j\0®H™\0ç	@)≈V,ëö √zPÇµîÉÉŒΩ≈´%Hdeˆï«&∆¸´ÙBË8Mvg∫≠ïRÍâ©Ï˜ÙÄbîπAÎ…◊êë<èQ–Ì·_?‘t˘‚Y∑ˆ¯3¨≈ ç›ri∏}˜vt∂È˘y÷í˙:÷Îí—xwä÷µ∞\nüàﬁ•º/<á∆åÏ~ åÌÁY)™VÕW[ÿÛ)t≠ÀƒpÜÇ…DÎãâôÆ\'§”ePiO‘Ùz´U¡Apñ∆ûR›ÓPÒÎ3¬ÓMÚmi3vª·O≤∑@t#!_≈p}⁄ˆg\nã$øÜ√‚è∆à2“§É%√≠∂πkÜc∑rz>)n›ÃrD}÷/Iü∑·^e%≥]òObªÑ›JKK¨»q®ÅÖñ&ˆ.}V¡»Ë¡áJ·µ]=‚Ÿº~W«Ïm(∑Æ=˘9$ñV‚ìY@JKp∂Úº∏ä›QíGÿπ–F˚∂pBöÎ∞U	î-Ì&]ˆ¶ÿAwiv´çdŸÀåníì„âHˇ\0|jÈç∂vÛ¸á˘‘l7‡∞ﬁ≈›Iï ÍéHŒô\"îrí6ËGÏ# Ç	Ñg-”	µ›[â£ë¨Ó.ëuQÑ∏á8F:n@d˜IÍ\'à’4◊ã.®¸èèOCeE›kg…cZí¡≈∆¯≤YD$eÔ&s¶A√I&3œ›QÃ∑AÚæ“4©‰Xõ_O›ï2rc\\[l»¡ñi¶~ˆÊBèåπ\"u8‚N‰ö˙¶1´Èè›ú~NLØûÔè¢≠ïÖ@††#Pz\0ç@	)ÖU,í Ú∏ÉP€⁄ØD∆∆ÄÚñ\"J∫1éT9G‘¸:É»éµ_\'∏M±Ôï3Íâ™‡l\\ÉÅ ]3±ª»œU?á#_?‘4˚1,ŸÒ‡ŒØ&«ti∏uˆèUΩè›ˇ\0Ú¥◊—◊ÒGí…vwÈZﬁ_Ø˙BÏAå⁄€:K9Ë˜zNô·˜çu:ﬂ˜˙/’˛Ö´±∫ÈäG?≥I„hùC+)êA ˘µèÏﬂhc≤ç∏}¬‹IqlÊ<≈e{>®≠≥∆å2c*O5jæˇ\0∂(\"ê√kzÛwm›©·úECK§È]MNN‘«g8o¢Y¡kúò†ç	ÒeP¸ŒOŒÄ‚ÌOkÄì¿U/!$∆ÕêÆççpHF˙æ˙X+`„æV42juœ«¸?3›spñËØÉ≤.÷ÃÚ»âºÇq:dàg@D(úâçî#mA§œ∂k›5*´P^J]Or´¥ù≠¥∏·Æ≤Õ<E4∑¢ôTÃ∑÷“™Y≥$`)«¨=k)‰˙úÄ|®@Rˆ´Çõ∏AàÑªâªÀw<Ñ†cCx£å´û`V+ÈÖ’∫Á√=FN/tfèh!é—o$VÀã\0¡ïÆA*–cÎ++y$ùÖròz-í»píﬂg€◊◊Ë]∑*1Ø´s4¢Iek´í·Ü0π—Y»ä,ÙÍO6;ûÄ}?O¿Ü,6\\¯≥ìÀÀïÚÙ=´`S\0®†\nÄT4$â®$â®°%8™•íB§Åäíã}[èkÛ°ÿÛ©î–íU—år° Hº‘ˇ\0‹†ÏkN5y∏M®ætÀ™&õÄqŒˇ\0Ëe;•*=ô{ÒìÃxécÒÆQ”lƒüú|’bÂ¬¯Óπ/m¯ÑÔ ±µ√\\:ÁSnñÒÚ3I‚9ÈOx˘däx⁄Z öúªEsÎËdæÓÖ≤‰˙\'·QŸ¿∞Eù+íY∑gëéßëœVf$ìÁ]db¢í^¨Ó©@S•£\'iîŸ™πﬂ‰26èôYõ˚æT≈\0P\0P£¸”äêﬂFsÀˆ›v˘º9ˇ\0À˘–Z\0†\n„ºB[âﬁKwà%\nß$™JQ}!cÜ\\Ds`AÂ[ç.•≥û›¯‹’j6=‘7=q[sV:\0†(@\0FÄâ†\"j	°\"®0™•¢B§Åäí	\nx^D\nñÍ*A^*Aœq,çÄ∫ö]ûLå.#U ñ]<º	Á µ˙Ü;≤;Ìæ‹¢Ó Ÿˆ‹˚f,-Ì·m\'|$˙FüPfôœæŒ9˘∞‰\0≠4b¢∂Kdmõoª5vw¡ΩVŸø^è;µ$\0P\0P\0PŒﬁ°fÂ§µë.ó\'∂©\0˚—wã˙‘Ü7ê@ ˘∆˛˙+xÃ≥ êƒºﬁFUQÛ4œ∏ˇ\0l%Ω-vˆ«g∏`RYÍ€©›˛±∞~®‰’v=ÁŸíéFlkÌÔ¸ˆ÷È—B¢å\0:\nﬂB\nhÆ∆öRr{≥÷§Ú@5 U\0FÄTMA$M	@)ÖU-$TêHPÅëùçH8g¥#u‹~\"§ı$‹6Ó{F/k1á\',ÑjÖœãG–˘©Œ©›Ö]ù◊fZß.uˆ}—™≤˝!ï∫≥aéojÀ\"„ƒ£ïe¯UÆ≥ÿxn_ÜerÙ57∑÷Ïä¡.§FPTé~r§deåÜÛ™Öìagp%Eê+ aê$Båöù«¿‘ê{P\0P\0P›†∑û[wé‹≈ﬁ2ëãÄÊ6R0»JÆA∆≠Ò‡hñŸváãƒ´√ßö;)°ÖSo™Y#@LíH∆7’N	¡¡´ÿ∏∞ªôwÚ)‰‰ŒÆ#˜<öÃ;âgy.¶û·ÃÖOÿSÍ«˙†V⁄¨J´Óó6jÌ ∂Œ_oC™≠ïÜ(P(\0–\nÄF§–\n†\nÄâ°$MA\"®0™•¢B§Åäí	\nHTÅäêE‡VÊ>u$“Ä	 §ÉßÄsƒ.;åFL5√DsXÒnæüZ‹ÏéïÓ„œâw◊/±ˆ~lÚ¬(∑ê≈j´.jO!@@@Gi{=ãªì*ÍuE*`IüYÊƒlk‘d‚˜è\'ôEIl¯>e¶Xe{Kïs	”ùƒs¶hÛÓúètÇ<Î°ƒ…WGø+ìEïéÍónµ[*åTÅ‘\0†\n\0†©45\0FÄâ®$â°\"®(™•¢b§Åäí(A1R*AÕy>ëœØê© ‰∂∂íyR⁄\0œú∫¢jFÚ\\¸…≠W…ΩU¸|¯Ù;eË}gÇ®¨·X\"®‹±ˆùŒÏÏzíküîúûÏ›≈(≠ë©±ãJπ˘‘ÜtPÄ†\n\0†\n\0†\n\0†3º‡w\0öõ^ù‡«ØLÙ¨î€*¶§åv‘¨ãã0Vó+*,âÏ∞»»¡Dt#ë\"∫äÊß%√9Ÿ¡¬N/¿ˆØgÅÊÄt@,–\nÄ*@#@D‘#BEP\nQUKDÖ%^à†$*H<Ó&–<˙TÇ™‚pä“9¬ÄI>B¢RQNLò≈…Ïè£vÄõXLÛ..ßúq«ÓB>\0‰˝¢|´û∫◊l‹ôΩ¶•\\zQ´Å50_¯u¨&CA^è!@@@@@|ü¥6>áƒeàC:õ®ºñ”pÉı ø¸„[ç2Ì”≠˝Q™‘jÓ¶æáçmçXTÅ–\0®†\nÄD–&Ñä†í&†	)EU,í u(ÇB§ÕI\\ÚÍlÙÈ†;{+√}2˙8ÿf@∏ó¿∞8Ö≈¡oÑ~uÆ‘-Ÿ(/π∞¡´ªõ>πZìdu≈Ãü\0 •\\TûBÄ(Ä(Ä(Ä(Äƒ~îÌ±Ω–ÿ√vä«˚+è°a÷—’´8ìË∫/Ì¯ïÚ°’TëóÆîÁÇÄt@*\0†hH®H™\0bÄX†)ES-TêJ•1R+…0∏Ò⁄Ñı ‹˛ã-\0∂ö‰èZkñ\0ˇ\0e—(˛Ú»Z¥3Í∂Lﬁc«¶¥ç•W3∑qA™I•Hê.Ì#™®ﬂƒÌRÉ+.H∂h;€÷ˇ\0¬¬Ïüı[L‚¨sæ∏|“Hò◊)päÈ{s{&–pÂA„st5r%oﬁ™S’(èõˇ\0}LÀoìÕ∏∑êÏˆ–ØÇ⁄ ƒ~≥ ?v©œ^©pøœdX~lx‚œÌq2üÓÌÌGÔ#UY{C∑=ˇ\0G1zÎ∆g˘Aaˇ\0”Xˇ\0˚ü˙\"§áõ+8ÌÌ˝ö)<ZÍWv¬$v÷LN¶càW$ú N’oWª\"Mt≈%Ào˘Ò1œÛ,†π‚•HxöNå°ï§∂ÅÉ+ÉÍhÿä«ˇ\0œ∏…∆pŸ¢V$Z›3’8ˇ\0àz⁄‹˝—<d¸™’zÌÂm˛˝è^ÈáÙÅ†‚Ôá‹A‚Òh∏AÚLI˛\nøV~=úKÒ1K»¯⁄K+›≠Æcïá4âÔFÿe˘ä∂û¸Jˇ\0“JgÖ]´x>Ùl⁄µÓ§è3[≈£	öÍŒ`3R4öfÑã4h6®$(§\0®\n(Áˆ[∑™=I:X÷u?[û7Gò¢í,ˆØgÅäí+ˆ‹*säêh˚\'€[K;m\nM-“#é([giòó}+åìæküuMÕ§ç„æ∏AJO∞qŸ_O¥Jñ)„¥”c‚FÑ?&´‡…¸œc_v´⁄µπD∂œ&nu]9˜ÁvvÏ‰˙ø≈\\Ü-Im±AÁﬂ)o’∑–≥[£‹œ¬b‡|°ÖW≥G√≥ªÅn∂Lªs∂˚¯Ü#∫çøﬂZ∆ V≤Ôeq,·…}ÀQ◊-_4Q“Ω£‚+Œ;Y~‚/˛uB~«W˝∂2ƒu’„—;[x=´õÓ^…¢V^«Y˝∂/√˘3-rØœ_Âî£üê˝Àãc˚≈kˆC+¬hˆµ¨wŒÁÖ˜i#∏]âfPrÜ≈Äoô>55˚1®T˜Æi}2’±eœ‰{Ølà\08\0`%ê\0ÉÈkˆO5Ω‹ë?¸∆7ü¯%¸±êÚ·Úèø5∞˝÷5Ì{ïˇ\0ºO/Z«^Åœ?jnüe∞ÑÌn…¸#˘’äΩèµ|÷ÌÙF9kï.(8•ú◊g2ò!«≤`Öå®|Rgl©¯\nﬂaË*éll•v≤Êª@˜∏ÌE‘p…¬ewΩähI^>˛##˜xc±ôpÁÜIbÃu£¯ÏM9 •9-∂-3]§hBBÄ(Ä(Ä(Ä(ì@T\n•‡[ÒI‰ê¢ØD7æ◊ Ä†9O˙⁄√…˚Ò’yÃæèÙ\"Ô¸wˇ\0È~•Öf|ö„“h}·˘‘…q^Ã·@BB•ê‰H\n2B§Ä®aø˛‹ßˇ\0}T_˘kÈ˚õ‚?©≤≠ôHF•5 (Ä(Ä(ÄT@D◊êˇŸ","image/jpeg");
INSERT INTO tbl_man_usuarios VALUES("2","1","2","LUIS","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=","richard.ordoez@yahoo.es","","A","OK","0","ADMIN","2017-03-14 00:00:00","LUIS","2017-11-05 00:00:00","http://localhost/inhgeomin/login/?q=260f10cbcffedec9f18d83455277e8c10ed4263aRC2-1507614824","0000-00-00 00:00:00","2018-01-17","ˇÿˇ‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ ‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ÷\0\0\0\0\0”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0Ã\0\0\0@gTRC\0\0Ã\0\0\0@bTRC\0\0Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ÷\0\0\0\0\0”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂œcurv\0\0\0\0\0\0\0\0\0\0À…cíkˆ?Q4!Ò)ê2;íFQw]Ìkpzâ±ö|¨iø}”√È0ˇˇˇ‡\0JFIF\0\0\0\0\0\0ˇÌ\0îPhotoshop 3.0\08BIM\0\0\0\0\0xg\083KQKFJ3aLvQqE4AJxiI(\0ZFBMD23000964010000220c0000440c0000960c0000ef330000884400000955000013680000107800003a910000ˇ€\0C\0\n\n\nˇ€\0C		ˇ¬\0€|\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ⁄\0\0\0\0ı∆µÖb|‚‹ïN¡	¯V∏FY\"êXrˇ\0ìUÛVF±-6˚.Y√ˆ\\ÊﬂÈø\'z¡Ïlä3lÕsl†T]jM{.$©HY\"¶XÇÑŸíÀÅBúDMÖí9#A†U#”ˇ\0œP≈ª±ZŸ∞“Y™I ÜD45∂±Óﬁ∑Òá”«iÉ,ö.$C[pYHÉÜ!‚ﬁ£0´[AD\0ª2∂	Å¡Å$Gå˙á…≈T…3\0Lx0F\0F¢`Äg}Á∂≥ãS∂Cï∞	8µ¨∏¿¬\09Å/Ç–ÿY2LLQÄI	‰ŸrbYÈ]!„1ÙÖ£Ê˛ó›-ü5hæ¢Áèü˙\\Íè ‡~±Ûì¡y§ôºzˇ\0 ˇ\0SÑcH¥2!r$‰`\0ß\\ï»»SâS¿QÑÚ}Wûü6zÙa€Ÿc	í2∞⁄§ÿÅmò&ª»–y◊∞S>Q–}c¿ûı_ ˛Œ{#∞Ö4‡≈å\\`Qä ] fA)f¡0Ú…ôJAÅ>mÈI·øGx7—»““Xìëê†$êØ\0*≠Ñ1uönå˜πå!Ä»	|å‡8—≥0·\'Ç‰⁄LÉFÙ:}„ŒX}Wè0`2PL*F@*h\n•jê¥®Ì8Y=`Lò5X°ê`Jöì\np≈‡èlHBxë9É1DD1gúz≥jeπ`R¨Ç¬¿Pâ‡m<IÆ≠≥§|ÛÔ7ÔÊ¿îa	¿$1ƒPxJKÉ^%ëêÿ12Aaë8›®„LmNKÕOs‘xœ¢∑ﬂ2z©ÈìÆ∂=IÁKzO9ÁOD„ØˆÂBÛûº–zøõ˙1\"‚0¬$Ñ8$ú,!<EÉ†ñ+]å+dâƒçÊ:≠h⁄ß1 o¯–y}9\'s…ÙÁ{≤^‘–˘Ô£xŸÀ§∏”“ÆÚ]1ËΩ?õzIW_º#ndêÅ¶.`X5A.âÅ\nW∏V]ƒºÃKH≈a\"·3â’l†‘nu{íçéâœU= Ó¢ßH∆L—s=∂î‡ı˚Ì÷⁄—uEMÉ†ÁwIŸêm¡yNKcTY2JÎ≤Ì&iÄ/åê≤»&c¡¬rU∫õe\n\"‘ÉJ±ÅR2l2$©NÂ1h∫Û^˚`TE∫\0[Më\'êàƒ±/9!¶d¢ Fïl.ŸMb…(√\0ÄÁ \\ ∆,¨ÓÔ+[:ˆñ5áYßtÿB‡Ø≠ÿ†≠{KlŸÂ6£ÿÈä›;Ä5-)[®ÄÉ&L	Iê˙É# µç\0X8D …Ä∏HúÆM;»/:úñSñÜ»pG£œûﬁ:ÇÚn†Èu€}qtœ-*áAa0ÜD<Sª^∏«5J‹{\nAÉV$Y<\0‘ √ãCçæQÁﬁõ¬m≠Àr:cÍ;>AÎÖã®õ∫‹ñƒG-ÿŸ+Ù-ﬁÎx{¯Nê[^k¨-DÅäj¥ANÃã\0¡,É∆¿˘¡Ìˇ\0í·Ë∆¶tGZl]Æ÷õñÚ{ë:°ÈK?@¸Î–Ó4Óë§ÍH·™Ô¯sß›Í:B›AÆ‡z\n=S∑¶üFŸ˘µ«–V>pÉÈp.†ıÍ66¿\"eRf`Äd˘ÕbÉ i.‘m¥Çh‹§Y[‡≥“,çmfÈkÙû˝¥ËËÏ^s\'∞AÃnùÑk6û\\p[6@‘Ü⁄wJ⁄çıEΩ–Ìˇ\0M …ÏùOŒWœ†U∆u÷öB	ÄNX|≈]ñE◊%öV(y~ãö\"’}ê;§lâQ†È9Û“—∆˚A—n>uYÏ∫?’ÏylÛ≠.–“Ô4]0kn^ëYä5∂¥68Lë∞◊…È˝œŒ˝ôËª*7Üì)ü7È˙$|^Ê˙-õ:ªrÎƒÃéõy™”∏V6™4˘Îõ˙ìX|ﬂ–˚cè)Á}ã…MwARŸôò-)V(≠ø”oÃÉ\n ,å\n&CÙO7QÙå$œû0$RÊà·]¢∂™ıRÊ⁄ñ»\"µØ:jÂ˙{%Ó~Ù≤kW$Sõö≥óÌΩqÖ8LØøH§j÷„Sµê#$Hú\n≥E“QVŸÚ∂ﬂFF‚ç ≈œ;“xYù\n9Ìπ¨OET—≈%›œ(AÎû%Ÿ˛¡ ìÁ~zz_ï¨E”Ø¶:õ|^ÃË0W)ïhﬁ¶mvnØÄ6ìÆ≤X%∏» \0”›w|èJ|·¶€†ÈØÉ≥—nMFcÖt:ç·ï¨P.	GU“Íäm&‡˙+∆Ù⁄!Ùˆz±®8Vˆ•[⁄Ê∑¢ÊdÈÈ‰î\0\\n&ÖAˆ®∞∞4™VΩ†ôH}ƒº±›˘Ëöº™”__cÆs¶€¢“nH»í3$öW´ıÜn≤Ì\nÀm(æ‘äñà*|:õ∫f∫¯∑.–Ñ€¢YF(õ|f¡4ãVÇ…e’iwG>Ë`™-x;=vƒÆpE´Í`Q–í’öÎK∞W\"c©‹\n…\0ñ.≠•ïñı≠‘∂£w£®¬Ê…*˙vÜLIﬂX”oÙõÉXT ΩØ∞◊]%ïˆ%ÿ$¢Uﬁ≤µï4ïú›ç;£20¡ò\0HS@Mkt ˆjÿ/È7öXÉ6ˆtù¸Ã%	—ñµÓpÛ≥ÜçSª4\"¿f´oµ[@≤ íSÑ-™+πL%[f%eÃAÜ9 AI^•⁄Ö+uló4€ùYHñeûÉAøC4DÌ]|ôà& N€éˆO4PãçΩùF‡¬iq&fA5-V¿–Äñ%68\"fë r+u O[zÕç6J-¶‚ïäªr¡(√ÇKı>–∏≥Ãúñ&•†¨	ñ¨‘∞.)j\nÀ*Ù&¨pFH¡\0c$Z›Çñ’ï∞å:ñ+îŸQ•◊V¡õ}¢‘°Éà` $û¡¢›Íèó◊°hs≤®·¢r&LÇF	∂Í8i	o¨4ÛÃ¿ıò≥&HZÏÅRlâL,,—òAtíc›U≈ó”∏8sì’7˘3YÁûÉ¡ÅyoÉ ZY‰p(Å`—ƒM+KŸD¡3ÄÃ…ë8@dÄ,*∞Éü˙zÓH4¨ÔS∂0`ÇPËèˇƒ\0.\0\0\0\0\0!1\" 2A#%03B4ˇ⁄\0\0˙uX-◊>ûÇÇ√Ag”©ÇÇÌZha∑S≈:˝2n˙d«ÖZh\'Rı∫ow^†vÚ∂É°u^Ç€jıl,óQª¢-zÜ˛’t~¶KöT7°·R´Eq‡˝59ÙË†”ß>ùgÖP*`∑Y‡]¬ä‡M¬Ä$€)f§≥¿≥¬Ä-5i±bπ›ôÍG„7Ö>Ê‹å|â‚ì˘)èÀêÀÍÆiéßΩ’ZáëÄÌò£tŒ~^CèPKzõ_£5µ¶‚mƒcéÃ3ÉûH, é‹ÇLœlïá÷q3ò¢mƒ˝˙Éò`‚=Q∆PŒ!Â≤¨1‘]GOO∑ºÆ˜≥„àiµf>*r∂ÿ Q™00˙ÿä[©Ã‡ÙgQ˝H˝gêºÁ~Slıí≥‹à\'ng®Loç5˘É7v›ìôªvO≤( !8Äô≠_ç?L∫π´qW090à[óRÙÈóÅ\0Ã&Sm§T¯ûJ±¶˝1¨y”[Ç[3‘≤LSí^g∂f33€Á!~1òM∏Éà≥;p_òõÉ0»ƒ∆\"åœ–˜∑¨µ k‘¸†8˚°U*~ÃÃ¿gE^}.¥‡T@rÄlÃå(<Ì‡∂\'ÓxÒ*€á°˙˜ï∆{qÅN‚Åß„‘Ø≈éüyxo/\'π∑úÒ\'aÄqúêπ/Lßo◊j5öÖ]*‰ﬂi‰é€s3<Ã¸H9òçò@%ﬂÅÃÚq∆\0õ>9Ã˝Ò7Ãb«∏≠∑∞Ç†/˝C’ïømÜ=µDj∂ï)T∂”ÍWj›=Q*jm[&(¬\nEÊìß=ÕÕ~î>´smZÅ€†Øﬁ‚Ã6ÄLOmÍf{?å‹Kc3–€1\n¡Ò0àK@&vÃÓä3çŸÇHi∏jbuN¥˙∆†¥MCßt´UZ]π≠4JV–È’Z:J—-b1[MﬂJ•Õ1“ã≥N—R⁄Wµ‹5ûõ2ˇ\0IØbJÒ€•ı_Ì:¬‰œ¿`„v&1æÊp	]–\n\"{õHõsŒÛÃoàS»\\Õ≤í‚~”‚Wôëû≠∏˙M\nt¶önÔÈ[%5Ò©â≤lõ!HmÄLF§ØßR≠5éå£p.Ùäk[5#:gP]GFπ»õ[h0	å∏…ı»õâãñÌÔ±ˆ[ ÕÓÕ*`∆>3n–πXõVu’¿]ÖZtΩ\nbÿwœÿ>œ—Ü]⁄ä≥]“V•É!¶ˇ\0”À±Lë√{cpØ¥É)ß¨ê¡9õs1ﬂ‹tmªÚFC„µN[è_Qw–tE„J¢¥,álÃˇ\0£t-¬x*Í_¶‘ß’?ÃmüΩ˚{`õã2ª¥\04Ú	ê¶—$¿x$ƒ*AÙxü&\\ÆﬂóaÄ8¡¯Œ´¢ı¥Ä≈∫Ï†Ωáÿ>√3fÌ’g¸ßÙ‚ëmHÍ¥éf8Ñ7&XGƒg»ÿı€GqŒ—ê¬ª†ZæJ~Cy*∞‹o-⁄µèK!aOÒ;è≥ı6àa0¥ÃÎ%ˇ\0)˝6°ã2I1ø/ Áqõ8ŒÈ∑ÄF‚fq133∆Ë0KE¯ñ`—ó0abù«i\0Âg c¢‘øãRN@`òòòòÌ˙ÏDh˘¥ÃÍ⁄üÂ∫ﬂ≈”ò$ƒ≈&zúπ\\œc`m ¢\'Ó*‚F \0B  Ê&≈1‹≥~+yb[≤uG†£$,≥˛ÇcÛ*¶\'±‘,+ﬂÙ¢’°”X-?dìÔäà\\†*ªÖû¡à‰Ãœdâ∫/1æ0àAÅ÷nâ˘{ÉòjÏoŒxq¨{à\'Î3|ﬂ7Õ¸ÕºﬂLC]#PbuU]RŒóˆ€wœ¬gÜÀF»Ä_k@´<k∏S√{ÜÀLõ!!†,¯‹-ÖjÅG\0N39h√Ø˘€c^*≥ÍÙ(µM^ﬁöˇ\0ıVˇ\0˙ Àpy&˘æ5\\KçVïπ~≠µWæÎ•.†Ø],:¶äö≤jv©W®*T‹ÕÈD™8¡¿‹–gnŒl Êy1=ìŸn6q1∂Y¶†∞∂i”;C;QaÒ9Ã¯¥3N‘ÍS‹íø\"ˆ—ö]iı≠≈Öo °Rì%E®‘iSm !n.Îô®ÔÆ…lÌRÀBGjvıh’ÈÍh˙:=:WIª©|ü ’¬c≤´Të‚\n€£dM∏fF¬∑ƒÃŸ∏7mô›i»Ä)¡É)∞Ú2∫∏c<m€N¥4™Ü ’ó˜kmLQæ’Ú ﬁ‹2Ö[[ôd‚§∂YX‡j∑û)_Rî.M√}=Õ@ont◊¥π˙âD`ˇ\0=ß=s´Üçâëì˘mòÖ¿Ü@⁄3æb§nfx0\0@^6Máj\'ŒoR™01µW.´Ü«ÙlﬂÕJ™‰j( ˙f±Ø‘◊tJ∫Êâ•6´x˙;ÿ]iˆŒµ,ÈÂM./áéïzïih’ÔÍNù–∆ªuÙzÜò∫ZRà»5ùÛ¶/À’Iøï«mø#Ç6™Éª>E§„\0˛Éaw3EmàFÿ2a8â[ú‰Ó\'∑˛p\0\\<¸f°ˇ\0Ê“8≤«C1ìaØ„∏•OÈ-È¥€∆Z‚∂•±1/©ÔCeO√m§⁄Ÿ÷ªÈM*Úµï•Æóo„\nYS¶Tbj4K]RCöë›Å-∞yÜ?(Í˚\nïF¢‰Å·	T’´≠jw)VS≥‹	ôƒß¬ôûAóÖ¸Q>PÖ‡Õ∆#’d,U®”Q¡\\ ¥∏π¥ÃvMûù∂\nqWV=,≠ÂÅb-ØÈµ\nW≠Rç£lŸµ]EZ˚pyô≤d$c∫sµ5OpP\nqë\"‘„í`∆n\\Vu€HÇ?!íßb√9õ™πàh´Mõ—ó±c√K1-°b˚•YàiL±i6ˆc(r 6œàõ[a˛]¸4#d0!©¿úr‘Ò=\0é≠E≥ïŒ„*}O#ºŒ⁄VdB€`…á›7Øü\"ò≥‹Y‰EÙeNÀ\0õf#Ì-ü‰s2	 ¥\n∆T´≤o›?0”¯®\'„9c @‰¬Íì$∂17∂<ecf*œqÇªlƒUŸÀ)c|ì¡z*#E0º,›∆Ïµ8=Òå¶˘Å¶{9‚ÂZ¢[ZjT†äŸéXSß∫¢Æ\'m`0o´Ãﬁ∏-πEGR¨I⁄Cf\'@@JÅ∑1sBEÀ\\˝BSP·¶–≤ßç0B0!ZÑÓçWh∂ﬂ”©»1‡LÉîe©êÆ&ÈU¯®Ç´ªI⁄<©P‘zt`.÷*ü(ıRã0x\01BS§8?ìïÉôÍœâ∂¿àÅ—„å“ß¸H1îß∞g`ÆÂœà,∑≠Â™≠7CÃƒ§vG©àï!™#◊\nòÚå≈VûiQ˜KvÁsTõ|q_pƒÚ®rE•ıtY>ûV≠NÖ=€ÅÁƒÕ≥cJk≤{`Y¶›–Ä`\0NläÍÜöÃü<¢ÓËævS;ÿ6#‘?P&Ó}≈L]À´ÈnñzïZ[Wß≤ˆˆÎSm“Ω:8‚†ÃŒ«ò[ç.çVä@]‘É28m≠<á\"U¶j%Ω/≈6JcÊ{èAÓe©∑0å®VÄ†äªè¿±m(’›?„√‘Uü2≠«é\\ı•´[uEπó∫Îﬁ\\[÷[äbgÅKÎ=;}öÀ]8R	Ol\"U+ìOs‘·™ÌynµÈªÍ‹¯æI*2ê˛3Jí\nóÂ7p‘—%≤∑âéŸR∞@éL/Û`ŸC\"eåE™Á%H~óO∑QQÖ[™v•Øï#wH6Ω™J˜775îpÁh≠u:V›ELÃ∏ªÈe’Zuv=EßñmIZSø¢CÎõùzµ9Fˇ\0\\‘eæçÙNè¡lõ5ÍÍä1Qwóm”vQ|ôÚ”X2	•LªÊ.‹8õÚ6‚n‘œ\0l8Ãd® êkVI*ım´´µ:ö•’T{™œMü1NK∫µÍ^[‘≥∏CÒª∏Â‘t≠˝¨Zﬁ%’ægèq©ßPe˛√b∆∑LSyOßÓi }?Fúßj±B“å®¸u§RèOı+Z˝Igx©{Aö•_π∏Æ\n\\3–?1¥Á‚>’_‚mÍ\"‚ëg$~—Z°E9_d®Œ≠’&ì÷Ω∏Ø≈‚nôô1jÓ;Ò+÷îˇ\0:’¸TÂÖ;ﬂ¯Ùé∞÷Ïèπi<Z†=B%ÂÒ†ß´Í˘,u\n∑*ï¯Œ„VjZÖ+7.Óqà◊™“Ω’RmzÇÔOTÍÌAÕóW0K-Fñ£IBöÖ•<ÁàT;ê)Ôe•ªm4©No\nw$30Ã≈õ—L5Fa	Ã°Ò.€⁄“€»“ˇ\0ãºj;Æó^f3ììR¡Í-^ï∫{€M)È™[Ïõq.k-’Wˇ\0W{d>8‡‰Jâô]1∂ö∏Q¨ÙÀ®Æmç∑QŸU˜îÓˇ\0Y1Y)B€NME	Ñ)8çÚüèf§DnÂœ∂„Zßôç©Jâw¶Å\\r‘‹”∏¨ÕNÁKΩ[Àuh\0Ößêkœ(Àø«™uo\0‘HÛY»Jüç/Qèê2∞¡±˚4˚ öm≈∑S€U£k}FÍﬂˇ\0-ÒT#.Õèﬁ˜ïjïõŸ·bê0$3ÕSœjì≥s[”⁄;VÂ‹m~óªOßÆızwQ”uj7¥öÌV]ı\nMW™®”Æ˝N’eNß”æÍƒ[ZuP{ìö∂´ä2ß·LÒòˇ\0âıYy≤˚≠/´ÿ∂ãÆy)=c±kU∂4€ πú¡piúQπk‚)MVn ú ß¯;ZèäR‰v1˘ïÜ÷∞Æi‘µjw÷w⁄m÷ÖXı-€£◊5U€æj-Ëöê‚ç/Œ≤/eá\" J≤’6§œ›•ı%[5°™[’§»sF@∆µ-·È≤XØ¢ÏeÃØ≈(µ;üL1.ñZS4äõU◊ öáKäœu”◊ñÉiäå∆«E´q©∂°S˛vî∑?sÄ?—æU`¢ïF†⁄/Q4âjaª2f*∆èÍõÀ£2ÇbÊ<ØÚ])-±mÚæ÷ÅÅ“(ö]$ÇÀ„[N›5@>≤Çl^Ì*4Sê“êÕa˜é‰‚)ŸGÚÓjx·´∏àÉ˘nLQòã`vÃde…d›4≥·æµ]‘’fŸ∂lû8S„Æ_ÆõkIK∏mQôM∞ÃeHˇ\0Ffeà®á¿33t®w‡ÉÕ)re9N∂Æiæ£cBV◊ÓùlÆã’dƒ	Ö5~öΩó(¢bbb~ÔÔ®ÿ—‘/TºQÅˆ‘é&¸ãq±pë[wl˝π €≤‘•≥2Ö—Xt2±¿ÚJ_Ò∏2è&ÖVÆßJÑ™’ÓüƒD€⁄ﬁ˜o¬≤Çù%|.¨lJµRà‘∫≤ç%ππ´{Sısu‡îo)‹1ˆUˆaîG≈c6¿≠π¿úèµå˝iG«§≠\\\nÙvKjÿÌPd(ﬁÕ¬÷<•e•+\\T∏ñtG”öqílçNä≈;∫µL›}¨±àY®ıv”®Vª/IÈ≥S¬Uæ¿òñ◊≠D#^’·ÙG4«ƒp+æH˘´à;ôùƒ	”óq•lFáV•‚4*ÓèÃ°∑…S¨>KNƒ∂∑0â∂lçJT]≠C˛‘ÿâ¢ÍÀ®ÿkZı÷°zk\\SèQÍ=+ö‘#39Ås<PÆ%*ÕA©UZÍeo≈ébèï8Ì¸Ö&ávZÆÿnåÛ’c@T&£‚RÖ˝≈ÉZı’J4%AπÏw≠Ñ§ˇ\0ÀPﬂíˆAäs∫OFó…RÍΩ≠-ºÌ\"ñ9€Ê-π0R⁄6JîÚƒV(i\\ä°óå \\µ≈o“®f7∞Æ–Ne:{•:`E‡‰t¡ÌY0TøËaˆ≥‹˝}µñT\\LQAWàõk?Õññã1i6ÃLB≤•>J‚zîÓ◊€Û∫ˇ\0¢OCÂLßO1DE¿/Êu¶Ê+@eaë)–ò= C‰`˚j˙uÃzX§∂·P*`mÄ}¶2¬ºÏõ1ZÀµ·=∂d	M1+W5Ö\nv¨Ï!´P7∏8ôû√pi~mﬁÄÀvœaŸ¶2XrrAÉÓ0∆ÍKo∆„öCàœë)å iâq[2⁄áâ{∏ûÎÊ1®%!œÎµ!µ;éÌ\0˘Ìõg®Ë>„Ÿªb<∑ıS–ÔoOäı6≠µ∂ﬂµ‹	Do∫ÃVû·ïbÃ¸O∫Cs˝Éªƒ¸«c*ÁŒüË0∆1•ø¶Ù‹9î∆J‹£\nTÚ{ΩM≤≠ŸÖãK!Ä’yŒ&¯jfD ÒÔò;òæˇ\0B∑á˙Z<2ﬂ”z≠≈Iªä+ñßÎµZ¡Tjëh;AhÊ-±ZJ!0˜<ì/∫¡›Ω\'„›jâ∫nôô˚ZTı˙£≠˘A7ahü„óú$‘6¥q1ˆ(Ëwu≠\\(h&e™Ûﬂ‹Qˆ4_¡yÓøì7aaçµ!â˙πÔE7ï‡WØ±y®‘(Qˆfh˙°∞◊ÔÎU0A⁄ò⁄¢b\0˚k=*Ã¬f‡˝&4>‘‚~Æ=S°π~ôD\\(Ã∏<€R«ŸôÔ∑òY⁄Í∂’mØ{“ˆµHu0}ı9áñÏÀêi¿∏±ˆfnû√œﬁ ı_“∑¿¥Sÿ%aﬂ3Ù„JÖøVYÖ∏àpEN<ÿûRÛyQN∂Ô≥0¥Œ‡Y`3á±ˆff{òû£CƒJ„Öiòº∆l-∞É∂`˚4•€oÆŸÊ æ◊\0ÒàΩ˜L√ÃŸ1≥1–/ö∂côû;ü∏√sé3*˙ôÃCÒ¢pπôãˆùı,5ªÑ±¥aÜˆ†¡êr ≥4⁄©o®i˙e÷ì©,oÃ}Üc∏ÌàD∆c	˚©¯ò\"ôW’?Pønü}V‚ﬁ“óˆª;ü˙ˆO[≥6Ê∂ﬂF}∞s∫xáon=}á∏X€˚MÏEïœb˝∫Nú‘l®oÍjV˛‘◊±É1`˚µwßÀ}ÿò˚ÿC ∑πRê•! ÉÿÏ;5@zı€1˛˚‘ˇ\0_j9ü°°ˆà;ø·o˛√ÿ√Òoqm©µÉD}ˆ°ƒf;øˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0êˇ⁄\0?4?ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0êˇ⁄\0?4?ˇƒ\0@\0\0\0\0!1A\"Qa 2q0Åë#@BR°¡br±$3PSÇí—·4C¢ˇ⁄\0\0?—hçñãE0¥^ïÈ√E.E¢—IÄ·ˇ\0≥^Á≈Yº∞°ıÍ<tsâDùP#‘Æ;#NáVù3cÃüNåKÌòÍZ|Uf∑≥  ⁄˘õ“†Ã≤Wc[Tt›KaÕwE¢∏^ïUƒ+	Z-0—h¥Zb9VãE9Vä„òh≥1(;.Rv>C	’ùS¬˛Œ™ˇ\0åKëƒØê°ÜS¢æ;É¨·ë∆XI˝0útÛYi‰µ’‘Ä¥GØ|ftS™21Êrï·”xw˚è√‹°ùÓ©ù‡PÿçVaØUŸcÚ4)’}J⁄a0â€E!ày5ø¸Àè©BÖl;y-Áú#»Ty,l§´≠1´\\¡tC}ˆEıôÁSÜ]±ôº!X]ì≈wÚvNn”8“ZE‰ ˜⁄≥G˜ÔÑMÌçøUlJæ1YkÊÌâ+≤ëèˇ\04Ä˜£Ê-ÿÏè¿c¢ùnS¢*U¸âÛJï◊¯⁄ç*‚UÙ_≤Ø]‡≈6ókŸW‚ÉQ≈–L«l\0¯ØÂmF{LÇ®qB>—Å÷˝U◊@èú^ÿ[¬¯Jå;¢æRÅüí0tT8&ÒπﬂÏ4ƒ(-7UëÕÇÄ U?fa‹¢◊4∆≤°vAΩê®*sÔ+.çnŒm≥≠Á>YâSßl4SçïÄÂ˚©Lz„∂ËcuîAèâ-ß‹©©b≥gÍsüç-¢ª\"4+0P.fÊxC√äOÏ,†€˘BF÷^#D9s≥í`9N4Íæ˛…˘∂≠m—_E—uWÚwS¢∫Åe|oÜÄ-°óP∂îTa’^›ëÖ≈;5À2€Ω∞¶‚9:®‚ˆá±5§·¥X´”!ΩQëá¸”U£+˝‘=–¡◊Ebπéb∫÷7¬À[´a*FûHÀ◊…—j≠d`ﬂE—d,œN•AyÙ´[t◊SnVÅ˝~>ä¨3ò7dZ·.+Öè¥t<*ÿ€›AâÏ•JÂ8œö∆Àº.`µ∫*#M˙´hÉÄëN´sG—1é*ò` ‹^ä§ÇOÖ™∂Ÿ∞“ /G≈-ûÀò¬⁄:´nπqå Ë≠d#aX£>ë∫é  #›qEéÃ2˙¢ßWvÍò:∏Ω∑Â\\UO¿⁄YOÃˇ\0·iò%_î˜¬Ê›∞Ó¢9∞∆1◊	¬ﬂ™ÇÎ G’zäˇ\04x}∫>!i;eú‚‚÷ã\")ÇÔ‚Ë´1ŒÃ\"B\'nà}≈–fG—qµws√>Éˇ\0*‡Ú{a”›∫-TbpÔè∫œñ}‘F™h†+ïÈ\'∫÷Q9åtG=◊N2Â®Ó^“á‹].öˇ\0˜^ÁOÈ˚)ôZ)≤ò è5∞Âø∫srüÀ¨(];©]∞øì,≠pò> al§ÄJ!Æ?5}‘ÎÏöÊ˝WIÃ⁄∞Ô˝˙}»ê Ã.9Ä8∑4Nƒ»+Ú´†˘®Ö©îZNª‡#öL-eÃ>òkåuW|ôÉß∫”ó©NP¶¡^}ñ\\∑D#P:~»ø_èÆ5\0€ÛT®äu*¯t√9bl¡éÀ∫ú;+›hÉ°wGò´ú{b≤¥|—µ˙Ö‘)ú£™öØkèVà\n‡ªÊ†˝Ó¨˘h‘ùTï?™Œ=>ÔÑuí≠ztù¨=‡\'Y∞5∫¸^~Ä ◊q-i=Væ^g	˜A¢];ÏV“\\4\'tsì◊2k{fŸfiêU7‘gä·Ú|’€.‹çô}’Æå:nkıÔ∏2≈Lì’~í⁄{´Â˘+!ÖıZ·3\nÎön¥±^nq*ﬂU»¡TùÁExaı`.ˆŸNä†åØiÇötoß.PSú?˛äÕΩTÓπÑJ..¸Ñ¢pPnÉ™®È%xaçÀ—P`‘¢◊u∑eEÉ0.va⁄VQ~ä¸ﬁÍL7≤Ùf]œ¯Ω’ÃŒ ⁄a`ë¢ùQ¬«∂7x…˘F£ìE(Ü	+6h:CÇæ•X_tHµïgı∂2ÌjtÖ*]jtGƒ˛⁄·ŸŸº«Ù)æKà•è—s)∞µ¿£îa7ÌÈP=j(•˝ß¡÷v‘ŸWò¶”‚Èö}6*◊¡’w8˛¢™x”7vZ9≥¥-@\\∂û®E9ä÷À+5‹≠€ŸõˆS°√¯Gí˙´\"∑˙´íÔuÈ∑U’ÀQÏ@ ∏ˇ\029§Ìd}—SÅ´‡æª∆åmÂO[˚øN_	ß”ﬁ7^ÂÙùzubŒM¶ŸÀÍ®·¯Zç |Js Tt≈»€KïU¥øüs”\nî‹˜Scòπ£ÙN·¯Üˇ\0|‡=3¨wÑZ«H⁄PLÃDñ|¬ßQ¢Ó\n–=◊3ΩÇú&I˜Qñ˝VüT\\ÿ‹†⁄ÑI–J6’w£ r´Îç›ì∑U◊€7˛•™hŸM∫¨†fÓÂsƒ∞m+1π—:¸›‰4™±ïiXÒ!dßIî)~Zbs*q4ﬁ_¢\04ƒÑÊ«¨AY€≈÷$uÑ˙Œw«∏…‹ ü¢8J^9ì&KΩñ¥8gè¬˙¬ß‘!,˜+(”∫3Èï LÙ¬[s¥£i@äŒ¶7.ã≥K˜zÕ!„Ûdˇ\0Ïu#ÈkÓfÍ¶LÏÀ˛„rÆgπﬂ”\0Kû‚yπ_ìŸ´ﬂ›Z2mî+ºNÕ‹£7];+€›eo—[(ß–uY]ÈuìÈ∏]ØÚ$#%Œ˜*‚<¶5D…®p›Æ_i·ÜˆÚ5üäî®’gﬂ†rïvŸjA˜F]nãùÕh6k·ïçÀÿ(∞€e%Æ\'Y& ˚≠∫≥◊UË>Õ›ÃÜ˛R¥P\n ]ò¢ËïJÂ9]’;<Ï7P∆Üç…WoÀœ1Á∫≥@Zy*∏zÑ4-3B“UöÔ}ÓØ=≠(hiëÛ[+jÂ#˛AY“N≤äÙ©ÃcÚl≤ÑA®›öäbUêÎ±Dûg’µS{.mT¢ŒÃU«Õo=;a;hèπf¸ƒªÍ§Gr†I=∆UÂÓ7[F¡ÍU¬2r4)«ÍUƒˇ\0*ÜµheYÀUÃ‹≠ÿ 6∫Ωî ËÆm›Yì*dOu.\"z©ÄaªE-&õø	L{¯Í/`<‘≈	˘ÊÚ\\ÅÒ\nsÒMŒv=P¶Ó7á≠M£‘⁄D;˙®˚@E…:,ŸY·Û]HÜßπÓsÍlegÚ⁄~™˘!Àöz©\0NÎòHjB6ŒÃîÂ<Ω—∫Ç≠ÑÁ∑}◊©Õìc7Y@iÊWâÏå«†Rf*<—ÓçÙ\\ˇ\0d4öñï\0éTÕ˙&Æ™¸±∫ÑbOò˘Yòåì\'0LoFì¯sÎsüî¸Ñ)sÙ‹&∫õd8H™¶£ù¬$Ø≥$ùâ›„ÙQ1IMká1∞√≤1\0$ÖyCó/∫πôÂﬂÕèß5Ï†\"	üuÆw¯~Îî»ÍÂ5ÿ¡Wú»öuC˙ìuÀº©~ö¶08å›à{üx∫‚·æ=Ì?|ßuÎë¯îü¢3ßE ,πØ—K8è˘7eìâc+ÕéV√O…i—:•Cïå‚ÉöÓCæ9æ(Ó¢T4üuÃd·Ã¶ ﬂDmó›]¡wÿhÖ·”Ä·hÄ6ùï˝;ÁTsCgî1±ıC- ·:º\\\'f9⁄€ÂÑÅ{»ŸSÍçÅÜuÛÑ„Î4ŒlØtÑ∆*∑WÏÓÎ‘>´\'ˇ\0\nò?ÊnSG]ıù¸G SÍVc∏pÍí÷fú˝ G5‡†	É∞v˛»ƒëecõ®ï¢˚L¥£dÊïèL¬€MÔ∞q©$˝TÂøI∫Õó›4(´#O∆}cöë∫˚7	ù^&ÀŸeïmÁÿØŸ˚#ï⁄Ëà‘ØGÃÆß≤í`˜6W9e‚VéÕaÊqAïK¡;6˘=—53SçL™_-7§úù[Ω”*0À\\$yãKd#À‰ÉÍSÄ§Lg≤j4\nÃ®.ÖÍ.vG/áRß·k¨§èí>®›9é`™«,Íö Lö4f∞•∑;¢5Ïú·‚¯ï-öé≠˙Ø∑¨xáãÖπg‰ÅÕ)WÃÒ¸XÓ¢ŸñR¢{†™Ù†ãsO±YVºΩ!>£èÅDzú≥ÚÜm=jé ’‚U¨ŒÚtÏ†ÒŒ:72b≠W@3ÈVZºEJç;L`\'O?ÂÛ3ÿˇ\0ÔÎÑ¢„\'Ÿd<Ki‘¸ÆêÉYƒ∂°:d∫Âl˚´—\"?âeim?ÊS@2ø≤ \n#?1i.˛®’wVΩcÍsŒß‚løæºµº#X)∏Œ3Ø≤ü«p†SÒ#ÙZ…ŸDºvv°òFë∫Õõ±F„&À≈ ∫OE˘{,≠sIÈ7WxÄ•	{&ËHZAZíΩK_í÷nËóiŸ?-Q÷ÎÏÈ8ûËè°ÁyNi™@uŒ[/’^ÊL¡*ÊTÉ™ö’MNÓ)û#räçÃﬁ„°∂‰™O§–]I·≈¬≈›D¶V¶eé13Bë&ÚZ%‹+ ˛^Rø√q¸G?%Npø˚˘«≥)˛´=G∫∑bu@5çhËëº%\'sø’ÏÄ‚OY˚πÓÃ\0ÿ≤áÒ·ÔÈvˇ\05ñüMÁ£\nZG}Vnà·®∂%Ã‚)„˙ŸSs£9≥BT	›	—7B“≥‰Î’6gnÑ˙\näp]–ØL{.˚Æw4*à∑\\|>+Ìwùó⁄qjo÷Úh¥∆0Å©√9Ó˝)‹+œŸõ∑ﬂß\\ôî˚¨ÉÜlù% keo`¨19›ÆíIV¬EäUÊ4ÊYùUÓvíJ…B©cfcUÕX:—BäÙÁ¯öWâIÌ\'H:Ñs;1Ïâht˜_Â˝S∫tV≤ú◊⁄S†√ó4fÏú“ˇ\0ÛÕo?|Nÿ ïò˙F1LfqT˙5∆ZÕ€Ãa›xû#ñ\"\\-oÅ.0kl∆ŸÉûõÀ‘#úÁi‹DÑÁ9∆ìµ!ÈÆeZuÌ2∫Víz£úë¸®g.Õ†≤ê≥ögÚî` ìÙVpQát‚/¥ﬂ»T!\0>h9ß)ùB•˝°Brπ¸ˇ\0ˆM{LèÈå\"∫bŒô˚Jöë∞V_<ò˘<Z^ƒuDV.eCŸ5Ù_‚louÃ‰¶Q7Z,À¸Üª∫∂ã\\°@±BÚ|ƒ·8ûÿ;á®÷∏ù∫˛ÒHÖ{Ω≤ÕI“\n’;úKQoØ36Ÿ]æ±T_Í∑T]Kô”eSàyÊ¶‡|«ÕöãÚˆŸ;˚’¥PB˚6í-ò¿TÕzdfÂp£ŒÍΩEë˘Ü™‰∏„ß2‘ñÙVå‚Ô+ª‡“6MÒX◊ŒŒ∫Ò(9Ó£≥áÓão◊tIﬂ…JÅ¶ ~Ö[ÌiNªÑÁ2£^=–x9Å∏+ñ‰l§Æ¯CÔﬂ\0¨£Á≤Ëú¡Y®úéËtD√jÅ˛Ÿï¢∞%fx ƒZvDû™~G¬ÕM≈ÆÍÅ≈<ó Á\'_Õ¢ç˛pP«DfìO…÷5≥ŸB)‘ô£Ø¡>µ@¡=Çún\'á¿Õ 	≈≠◊6ày‹ÎÜÕoUù◊;ü<|^3çPÛìÂÒ®ˇ\0ªRÕVÒ8ßN‹å˙Í≤”…√3•˛˙ßäŒ/s≈ú„$dAVT*˛G!ÊuJÆ:≥Ï?zÅ?F°4É å!◊∆U–=q.—£W-†œß˚Ø–{˚¨’\\ÍéÍ„‰ÀWOœ—fkÉ€’∏xd˝•.S˚y	{ÉGRãx_µ]ñzıœ}∞ À‘ﬂ¢èÚü–õ+˘∆• ﬂÜ ‹¸É	,ß∏Œ\\ÓËt\\∆ﬂîh;úíZH=êiÇôxßWïﬂ∂ã8Ff˛7hÉ¯öÜ	Â({KOuô÷oR≤“∑ÒÔéWs3ı3LåF#(.-?°—ˆG\'…Y¯[EæV˘ŸÓ•¶–¶÷≥]£áB™x<[Ë–o+Lñ»Íß∆’Ω≈Ô;∏ ˚:œgÚ∫∏óßÀ-˙)nªè>íπb°—Ú¬À‘§πF3A≠ÿ¶≤ß·ª]Öµ@‡qy¨ ´h‘-8uVW¯2,T=;¶!°\\´¨+|f¸Q–´¢vP4¯yO◊À3\n&|π[†‘¸!‰vèoåP>i+√bålazæ¸)\\çÅ©¯Á1í≤µ_’Âoø˙!L≈Yf´ÕÌπo =æ)¿·}\\ò˘yU {æ_~æ‚p8Bùºﬁú2Ê¯\0(¯\'ﬂ»„˜1áu{©>cƒñxT\0úÔ:ÆS#…õ„8¸qÂ∂´π]¸‘jb•W79s˝¥M·™•áôç6ûû\\ø	øtôÖÍ.˘B∂2uÛ≈\n-x¶ﬁ∞ú+{π„…=˛¸>%-Hãè‚Ê{ùïÃ;[HZ-˙?üV<G∆Å›ıå‘xoÔ‰ÍVë\\É[w\0ºA·Tphµˇ\0hﬂqÄ˚ÔŒkÌ’U·Õ∆TÙj;˘4¯\\=ZÇX◊ÇS?¥∏í√¬4öû(|Ã≠#Ôœ≠ rµøÜ •zø‚x™Ú¸áXDêMÚçø–O≈`Œ@7+ pÒ:nôVï0*s<~‚~‡qlñœ¬·ÿ{˘ï{ÏW¡fÛ[˝ÿ”®[/çQ¯ˇƒ\0\'\0\0\0\0\0\0!1AQaqÅë°±¡ —·Òˇ⁄\0\0?!∫‘›®ã 1∑îœ£ÿ¿⁄A‚\nåsZ®ñus+e¡‚U¶d!Ò\nf™Ò,\0ÆË´kÛsÔˆ»V+f†ò{íM≈˘MgÄ¶/é†`¿·ˇ\0∏Ì?Ås~µ—∑€ü‹µ©ﬁ ÒùÃOá0I%.«¬sU[ô∑dáà™0“nV°áPŒ]Méb+£.Våº¡Ó ’e¶CDÂ‘yMê¯AîøÃNı_-^&´âëY¶ÚVÕÁQ,‹pK*Æ†⁄¡.U€Y¶û~°ÇÅæs3ñs6ãÉÇÊÔ\\∆ùH–•îT±òËßd*Õfb<aì8üG.Û‹’Ÿ<Uı(Pô•0Wî÷Rª®∏©rcÍa`î1eÇÑ∂XX»ƒ‰√‹M´q‚ñjÍD¥@xà¡”2\0)®∞›14Fınu«qÃ≥®zw6iß0nsuW££„ÒZ70ÕV•Îká>Ÿy†´ƒ≈Ÿ‘w\n∂3qŸ¸Jßs–÷òËâõúB˚DnØƒ≈6`F∞@√&6#˙äÍ@eÍÊ[?âaE‹ó7qPƒ€öèƒlH¨·6WÍ*¿ƒ1ïõ3ePoàìˆç7®VÊ·UX˘ñ[4NfÕ w\\»+,ÎsËE„ˆé˚qÊkP@r∏Ê]J7ıó°{àÿ7[Û≈ÁÃ »{ïbS⁄ˆ®∑ì‚<CR=íödÀﬁØÚˇ\0pn‡R≥§Ç„ÃABº‚á‘:VâÇM¡k(˘ã®ÁíQ‹é•ÅâΩ[≈  %∆b,nKìC{\"ÙTrAuÜ∫T±„àxó»π»{3µœ<ç≠|∆Í€•$ØM¥âJGÉπkõ‘πuKœl0ªDÀƒ‹|ùŸñ∏¥≥+˘>‡0›ÍT”îÑç¥Ã%√i¯áüq6}L {ï√SªóèÄX=L≤c∏˛•nK¶o⁄}ôåÍ!~É.√\'©ÜÊ…CÄpÀΩ∞@-Î8,ÎO?ÓqT∞ããx(ól«Û#êå+‡‡àXà™äπî£l¿Ì‘2ƒïSˇ\0¨ô!πûX}7Äæ†7Ç\0)‘Uª›ƒògâπ®f¶d€âP¡òqy íÏ\"\\Üå„âl©ç\\f&‹òbj4HZJé4È87áSØ3Ö∂Q∏ÿ^∞≤⁄AqUº∆‡∞ı\0°OŒ~æ5Èp9yi,¬4ù∑4fZí@ÿ/s U-iQÂπE1ùÙE\\6TUZ£2ñ¬#≥2É!ß˜¸Ãç]≈@ ÍPC\\LÍ¶c”DÜ•”â≈Ó	cnP≤¯Ó!íõ˚Ö€ÎQiŒ`h[Åã⁄Ó+9≤ÍQ∂7f≠ÌØ%`$w)€Ã0∫√ÇaùT…+QÖiqùG/¨@\nìdj≠ø4BÓÚËäÆ™ÎuÓJ,DÈm%–ÇD`IÈíC±ØP∆ì|™¶ÿ*rŒ¬™∏û≈æIì6@ÊSs∏·¯™»l‡ô˙B\'˙A®™¥∏’ßµ∞]óløöR◊Ã¡Á©EªÆ]-Ω±Ì¯nxàì¥ÙÃY5ÓŸaïπ|~°My.1\nñ¿:Ä.ÇçöA∆˘s,bfUÂyôMÀÙäaÖ¿1î6¨‡˛`[, ∏Xì@gƒ(LA3ô`úJ€ä%:ÑËÜ·i∞DOíß–çœ«ô\nÓiÇJŸÙú≤Âo4‚∫Ü≠Ó‚°ï-¶Œ3Ã÷òÓQ]íª.]&±,Wé&ÖórÉ‘[<u‘«h8£h¨B°£ÇŸb—‘»—ú0•cÃ*€¬ŸŒ¯O‹ Êñê[&†,@ÁQ€n&çø’}¿íÄ…fΩ®9Ì ‹∆ ÇT∏JÉàrêM£}„îæ§bﬂ;¡i◊ÓX&x5§œÒ*ÁMG≥SÔÃJÀSÄ`3âµ⁄kƒÚg°QH´úE≤äpFÂh≈BÚ≤á1m]JE°[◊≥ƒ«‡‚^ﬂD f≤ŒÇ¥∂Åü‰í‚aîëW ‘0ôG,~	œ≈‚4¯∂L∆^Ÿ9l`Ö\0≤P|πãßÃû ∑®á wr¬∂Üà‡Å&\\¯†X<∏Å;A<√™∂€Ê[¨jkuqöbR\"™Û1ŸöåœíÚö>8ùÑ∏:Ÿ0øqœÂ\"A¿‹√5€ƒƒ÷ù£sr˘*eãlN°u!\'®\\øás.‚ƒTJGS,-ú:Œ∏U™=ñ	¸£Ω\'l∆A’p^úüπdı±c≥xJŒnhÖÜ¡AiÓu\0Aüy¡1h®≥	dWP™ª©o	†ÊTil±ÆSJ>ëf¢õ©LÀ◊zÇƒ¡‘≈œ9Ô®,€∞pñI˜*÷µ_Ú >R`¢øô¿£ø1~8‚0Êb.fΩ¸;çEYªøÃ!à”Õô¨\'øÍ¸¡Óiˆ@^#Ón›B—rÛ©ôê?)ÉÒ∂ïp◊•89ö≤¡Ã¥√¶4JŸ40%åe*éúcgUƒt?Bf–+EkçBª§q] √§`/pÚÀƒ≠@æViü†á!è—/ö]±\nÌ|Àë:ËÆ˙ÉËG1K¸wå(∫Ç˚ÜT2CQ%∆;Í?8çÊQ[Ptƒ!F≠∆dƒ≈:%—LDªÉ-¿Nﬂáâ,9√∏∫¿®`÷LÁg ^Ó\\Z§bÍá“äÀä·®›„Së\0¯çh≤ª ≠fı‚Ënc“ΩÓ˘Œ‚ÖØòÈrÎÑÀe◊_s“”Î˜Mä˝J‰#z·+Ù|`%‹0ó8ÜÂB•‹;®rõê,Û(P$yº∆	õ3¿±ºœÚ∏∏>Í(o<‚Z∂ ⁄èµ¡ª7S]!πñ’\0≠ﬁt1gà5.:\"Å)K¡ÓWeê«‹\0€rﬂÇﬁ£\"ÎVBáÕπã±WCπªMß≤*\nﬂ1FÉ≤3`øOqêﬁ∑≠Jôï≤)”ï˝˛¢ZLûêÅøÜ_‚òÅ¢u9é02óµ/∂(§çeiF:gÓRÎTÌ(f†c∏u1îÙÃNóﬁß˝œπw~D∆ı∫ñ0h†K‘ì~ÂíÒ».†	twãﬂí¬El¸4K¿bÔ˘ÃÕÑ\"“ˇ\0—)çhâıNë@^É[@N©òóÅxfºL(c∞jP˚pRêLbPV∫q;z%Ò	V≈£T0∫Ê“¿9⁄Æ!ô‹2]Îƒ≤à¢ﬂıB’nßÈ.`ŒÙ≠p¿¡bˆæá~·©T3<öÉ≈o>°Jh∞èpY≥ÑÉ—∆Ÿ≠:ˇ\0ŸÅ∞\0Bõ\"I|õ∑∞F*˜7Mœ_®√YVQÍﬂôj+>≥T–pˇ\0rÜ)Êôë‡}‚‘VY⁄¬PE|Ê@…ÍSÅ˙ƒ<ós_Eµ~Y:zèQ2*ü§ˇ\0Ô\"W !Ór÷:‚^#\ny:î®’ÕwπóÏ®SZÀ«_Q™\\Ùòll_πÉ,Ûybó≈∏ˆ‘3pS.”ƒ≠îØ32]†•∆õ\\üWØ*S⁄m¡)êJÙÅ3…!SÂ`8F$\"˚_◊ÚEçΩé¶-ñŒxÖ≈¿ı3U4#9ôÔpvÓá_çK.Y7´L[ó73+k¿´(\n`5p†úÃ\0q´©ãaPa†˛Ä3ˆ \\èWƒAm?pºπÀõÓ•Ó6ÎñSEk!GäbGx\0‚w¥lT&ô3,Ö4Ou€.;19GK∏Ê›£Ë@Ùâ´&iòµ_∑í7Óôƒ72ôh%-˜Àåπó3xº~É7∆YBÙg&?áŸ=Y’C2ûè∂xπÓ\0„˛Û5∑1µø˘AôS¯+[kZ3¿uxÅ´¡Û.–ÿMå›ùÀ•ˆK˝Å˝Ã®L~*.Â´`±E8¿î/ÓdãNÕf¢4sä]YR~»!mÅRòÄ!!(›Û3Ä∑l√µ«l˚{~·ë•äë’IçE≈ ó·Ll^ZÁÒ0†5…Ï“∏F”êÆ«ﬂQu∂^ÎßÃø0Q√¯îúµ/“Zº0Ph=D9r¢˜VñıÃ“>L≠„ü√5”ãt~?ôtLÿY®÷£Œ˙≤ùC˜ˇ\0…á≠|ÆÊ¿ª£+,\nJΩO´ƒv˙Æmôza{^áÈéV¸aÙπ¥‚õƒxî4À\'ÑBÈπk-ﬂ∏8⁄º.]JÿÃÇYkƒ4‘€W√‘[«ë‘¢à_+(§È*gT9*Ì∆ÂbÏ†[ï¯∏Ü Ó5©¨/¿≈ó%†/ü¡5yám”gÍ@”záfﬁ\"ó»|AÿπXørÎhrÂŒ‚∫◊kôrq‘˙!à:L\n—~ﬂÎèΩâ}œ∏|û^e—é@#Çè¯©`l=∆úÙ:âé}êÌÉû ^?©∂;<±ò~Í“Ò+4E“Ìë˙îKU~âl¯E˛µ≈öÖèPlïë¨¡Ø1∑Óçª¿ÊÿõTsRˆí¡h§\0y+ÄØ2πÑ6⁄“‚≠NÌN ¿U–8î<2ÉN=î#.¯+óSûù‘¡ı≈pqÿ—¿L¿òXòóBá\nbQÉoCB¶/ƒ‡EíÍ333Yb¬∆π@ÈK˛	õRçU∆≈’5Mï)À]\'p¯O‹AbŒò!ËÃ\nKuŒŒË\nÓe”ﬁbïõ1ÊpÂ¿#%√ÉDbÌ•»\':¢:Ü≠©t®˙âäÓdZºn%Ä»ZOB˛&3“√L\"”ì\0r∫Ä¿o¬Èb„^ﬁQ¬ù€8ílÒ,Î7ﬂ‹ïÃ≤È«•*ULπ§¯¬b$“&† ≠Ù“%å†ö∏VN∏ïNÊj%ùŸÓ*-3v(ı(¢•ê∏Ü[D—ä£˛•_b5PMdÛ‚x¶±≥’EË∂#¯çå/Çø{é⁄^h*™‘hΩ‹D≥w,ÚfT˝2Ùv∑£”à‰/tƒiPKµ´ß*SÜ52–Ÿò)*Q√òó{&›w[e>%(aºxzöNqj‚ƒ¡)†aVe„€ÉFÿZ©\\£@˜  y6!K|Ûq´A0dD∞2´‰=ÀF\0«Aã<KË°u‘°lwNé®æ*òó…¶Ê&gmFCgfâ\\ÏÂÕA„f^È∞Ä†t 7«í™Ñ√G‚G\'.¿u·%¥°ŒíÂ¢|!\\ÛQ:)k©M¿‰˚á<$§,˜©ì„¡q“◊∑‚1„∂¶£iõ||!|K∏0EE:∆1Na§0Õ\"a◊%˙Û(M”[èÉ\\##Í†mC√*ÜÅπ(2´l˝CX¡¯D∑à6ÂùäÒ•2tíÇß\\–2Ó	E*s(Íc˜VªΩ P†∞ÖÉûm˝AÖ”õîá\n&¿ŸQ&0õäÍÙï,û:Ã0ú$w?Ö”Ö¥Äö-Àâ≠Ø1¡XÃSˇ\0T=≥\n¨¨EtD’Òä¶¨5în°¬¬çÒ3î∏nQ≤_∫~¢-xdr¡ Î˜’njóó‰ãÀÜ‡qUÄ_ˇ\0 rì≤â¬k˛e¡lÅjß≥;y˛%!‹°!ˇ\0Qr8Ñ†¯s3\'.9K°9ÓYÑ&KøÃjÄ≥Õ⁄†•Puòhù≤,®Gy©;\"]cãœ∏¯ÜÿÏb”Pı.*;UR© ”sñã^hçõê≠Ø¶P`◊Ö,~kÍS+7S&°îyÜÓ\nnf[âÃÓŸâÌ+\\2¸bÇhJıè‚,¶ëbÙ¡§4a8˙åõ±q,l0Âı0 ù(∫xî˚B_Êi‡?∂Yïs⁄›Aë”ylÒ0≤xn8¬ôeÀ]^	Ÿ,Êdâø0x¨\\7Çs‹mÀ(Íc·¿;ÕçŸ@dä(„å˘ñÆﬁÂAP◊Ä•√cƒXK{ù@!¢>Œ_ƒm!lJ˜RÜbsînﬁíˆ≈iıàvfM*ﬂŸ¿íÿ(¢œ¸1ÎÛQc˙©¨•∫B,œ?è≥ªÕáØ˛ƒv≠À®–6u``UwåCkEáπA∑„m◊¥Õº‹,∂öƒl‡z∏ºπÜ«ÓZú\nï;§»˘äxV∂øñn{qB=√wñÌ„d\n™ñ(p+ì\\å6_©Ã[‰¸¬PT_∏rfU∫qÛºπÄ5=†à˛òÛ7©·S˛‹©¿d¥∆ùt4˛eZ+Mh_>£@e¨£õW®=BØ†õÒ‚X3*QEØLãKÇq∏_–ÓWãîÿ‚∏Ωö1]CH{3yÌ3Ödæ·^€Eø˜B‡~`é’tî´åEÄà\\√BÕ&÷¸}~.÷Cä\"™Ñ…Ω’ÒÓ)µµ:Äò[.üıq†`ÙÕG;¥_Só8É®aÛ¿yèxÈΩ/o0\0¿@¬¥£Í\0{`f\0Bö…˚Ò2ãßôçp∏ ûd®#1ÕvÜµâ`M∆R£|âqb†∂⁄¨%˜*á-mÒûzÃ¶læOH¨•ï\\Mö6‹*ƒ®n¶Œ{˝}«¸¬©\\0Úπà9ñÃŸü√nQ≈A¿µã∆nœì¥Ã–¿V˝ÃOº∑˛•ıΩ\00ü∫å≠Ÿœ=]‚5ÿr˜âΩ_¡r!ƒ™Î)íú∞PS€Öt√Ãt,ÿ\nΩcÇ#F˜Ã//¯ƒsä’ˆBò>8üg≠~ÂE™–∏XÕÛ˝Jcò\0)ˇ\0^m!≈ƒ(éz√oâÖZJ‰æòö}‰Î÷R¢ª¢ÖPçõÖSÔ3\'I˜œ»JeıFMﬁä	röe“◊ê6nÊp6Û»¸Gùá‚+€Om˚çÇ{3/∞9!g¡FQÎ&ª;%÷ó5ˆ¿ ’æ8™E˙M˛âWªOrıC:ZíY§˜uﬁô≠í^Ó’i˝ÀC§øa¥ 8∫^#—_%&ãÒ+;&q©NlÙuˇ\0∏üÎ•^CYãpÙÁâDºÿ?L≥°6zÅ√~§ø£.0f∫˝ÃDßJÀ%VÑ∏âéíùCe÷≥¸Ãßlv°Èˇ\0∏ó™a:›Ω [7ögÎP*!@„I–ÀÅÇR1>ê≤\'„`ÛMˆÊ›YKGq˛s\'G¡¢mäë<≈_ì?⁄ZÒö®‘À,3˜L«º∞≠\\,”™Öµ\\ª•\"7ÊpÆaÀÆYå~f[‹«Ç]N±—Ÿ&8xñVY*8á«?ï::àÒ2ôX©iœh5Í*Iµßsí“0>ôãµ¨-˙®m®◊ı&AÇ∞\'©\0˘JIÜ≥«—6Á	uπæ[~`2êA√7òõø„∏’7]<∆V\n’LÎoòr[Ïè\n@&!π¥\0ø :õ&$Ì≤o?2„å¿Ge*G&ªã)Gq∂Ö€a˘%˘ıpÓˇ\0âòM9%≈ﬁ•`‹†êÂ–É+a≈uàÇãF5ïT9ïÑÏ∂À€Ã Æf~rPf@ï–∞∑-BÂn@yåWÊ⁄8?π¿Ãù}‘\0¶g⁄d†h¶H0∂lSøSƒùs6áı¯.É\\—éX≤ı≈ÆÜ•bpÒ f(Á∞l=ÃSäTôõjÒ	⁄Ç—àl†åb0ªÜ¬RKúëF3 ˝êÚÍi¸ V2Gf\"\"™†˘A®<Cäjm±ˇ\0W®™Â √M¯Ç:§%Ÿ=•cÁ-:fcïë˘ J¶f¡Êˇ\0ôUvﬁÖ¡~P.Íp\'ﬁ%q‡]ë.f!b´∏pº∏µÇ∂am‹&»‹Õ#[Lò†Î„¿ê≥‘„Ûs†~by.P“≠˘é—∞pyáìà(˛vΩ¬p>ògÇ;∏k`Ω∏%é£UÅå%j¨´k˜-§kóÇ–û»‹ˆ¬˛œ©Pá\n‚ÎSßæof€y^»G+÷„	ﬂ‹∂µ√P»*…Œ%®kÎò˜Å»Ÿ·-è=IñìÓ1*ŒFqS¡¶^\'/ p‰s,g‡¢‹o≤]„¶ìvøÚ:^Ê ó√X/R≤Fz]Aóx◊§xv∂\\æcs(KÇuKLﬂìò’]JGDòô„ƒYGÍdâ Pw*aºyÇ&ï*Üø+≠˝∆˛3ÿòì«!æß(ƒ∏¶evñëGvA”´…ªï#¬†Kb˘L†ÅÈLsK^—Ï±ÁÜ9ê‡Àd˚åQª©ê-oâBs†ïi‚Ω≥/\n‚^˚“=◊√1bÖ(cùˇ\0ÑkPbBk„äºB⁄,UÎh/X≤*j´π≤ÆVT8ãr—‹¢Ö∆•>*f|5cF˙\nÒ0ÈôµQ·•¯±èR∂≈m ¿<LßSúÜH1Ó¯»ex¯Õõû\0î‚\\øç¬~‡v¸Tc‹≥€^fJU¬0Ÿhzeáò2ˆ4Kl„‡Vü_Ó>£Ç[ƒZ^ûeáπéçJ∆§ET´QpÏ^W˙ãYf”πDØçFYãrsGkÊ8g‡ï*à/‰≠Æòn+±n%§XXÒ◊Aƒ⁄w9	¨˜m?âÁ—4#‰dﬂ–â±˙j/µ¥£¶ûÔùFxÅ\0º≤Ø !–&eRùåÀk–Bù≥g’5ˇ\0$c)(√‡P_sHM∆˙ûÑπîπøÖ©ò´ ù tr=Àdje¥p√?MòBƒÚéØøçãØ◊Ω‚7PŸ˚Ω˛âYïGàÕiR†ÎØ$yÓÚ^≥˝üqÿ„7[§|fﬂÉı/	§ºµhÇ«‹{¯ÅËq\0 ™¡\"∞ìØ/Ò¸`Åø_˜¶På`ØyòÃWß‡.ß1uÆ/Ü^! °n⁄V´äbÊZÊDvcàÊl`‰µ)NçKƒ<¡ˆG8˘0z	tÖéf/ÅQfKîìœäUΩ¶_πYhúœÓXj¥fc˙ƒoÍIã¯?∏ÃãÅLj´ıàe–ﬁˇ\0˘|®˝Åƒ˝qÓ1‹UoäË¸ÊLOX‚ÃE÷\"À+Ó1ÖW¬®ËÃR÷{Cêjˇ\00 Øº√M…3+-Jv‹eºX¢¡\nÆ•ä©Uˇ\0∑πc9N¢ZÖ» ÉaƒFS⁄’øÆc¬Ûëñ‘ÁÓ<r¨G6£Ü\'Ó~⁄ÔÌºÌmïB\n3Ã∫û÷ô•√n»21[î•∆xò⁄îÂD«ı!⁄”ùe9r1ı,®Ò*ãl∫˛\0ã¢˝ì;j™cÒ¬ﬂ+úîc∏À+±*2´‚,l|cå<‚ZhÉ#‘I”Í:«óB	≠Ø©äÎ“«q\0î≠A\\K\0∫Iˇ\0≤hçﬁëﬁb˛c#•#/$÷√-˚AChª∑|LfÁë3Z¯É·iòYπõ·óq˚“»¡J¶ì6‚.qU*bπñ‚~ !5‰T8FÒMÀHA€¨ÃÏ ã\nG¥°zÅo¡›Î‚6ƒæYdœ´•X&aóﬁ(á‡É·\"ÃJ¯,f¨Ç·P¡j`1Û1ÓÒ7\'·L⁄˜\0I√fi)%|ôÉπÜ(îÖ”0a˘ûGu\\∞Oã\\¬1ÒN¸‚»C≥µï†Öå\n∏‡¬9l>`nV\'Æf\\_Äﬂ¯.xñ6	”Lm≠ÌôYØ≈J¯‘PŸ∫õ`\"ÀÑÔôå€3Kîæ\0´ôÍ¢÷ŸR¢‚\\1PFÇCZï7&9ÜÜÅ•¯b„‡@òí„˘ú£I\\KãM/X|w/¸\"…Wà—ô«úﬁ*r«ÕgL&Ã±Wß_7/ñÿVêsÄ‚YiJÄìØéB“%\\s/˛+‰@∞˝VÉfêx\nM3˛√üÅw0¯ÁÓL-0b∂ö2œ\"ı`Ò∏0µ1Û7S/OÑ1f$X3å¯D>n°36kÒsA>°ÒD +éa¢\\πxé£«0L32aŸqTk ‹t•\"“º>∑¨◊SNΩŒ¥Ñpõ÷˛ëKóo«d/j¿\0–F^\"¡ôßŒ˘ä˜78Ö{ÉÑ`ísãù†Œ&ì	ôÓ¸BaL7?.Ü}•ˇ\0\'Q±!Ñ‘Yr¢Ω v¡Ω}Dw∏∏o·§Àf∞B,`Zaö˘Xb√ªYŸƒ\nã3úYX±6é„¡èÜVDñ%˛öó∆Gä7[mÃ¿ÚÄ%∆-FÇ≤ﬁãÜâFÏˇ\0%U~cÚ]‡ï› ö|\"C¸P*rYÅ\0Téaò|ƒªó;ó3!ß·∞M¿ø¥œ3qWøCˇ\0Ià˜/ß?g5\0¡D0_°gµ≠  öÑw@K†ˇ\0+á_©ëKÅíe≤í0Ã¬2ß7-/‡U¡Bc9˝°aÍb¯ÓÜXèÅ.ô≤ÕKÉ∆Õø˝óa¯pøG¡[WÓ_π\\T*¿£à?zÇ´(∏….·â\n˛\0Fu2∂‘ j˘Åà∆Ã≤·¡ô3§ ˛‹sv-Wq¡ªÃ≤Ó_Ä¸2ó_ò«Î®k¿~°\0†#E–Ù™˝¸cjñdƒ\nTäÄj]Kå7ô*[5«zá2öYuË:CÙ¬2ñFÁ2æïLLM|`¯Ö/†¥^0{JÈﬁeT1Ñ´ÉR·@JJ<)ØÀ˙πD˚¯πç·à¡k‹tÊuERá·1!‹ È«~•B∏º&É∑3+v*QBÆ	Ñu¥#b[s7®êÿÜ„9Q4˚¯Fôñ+óârÓ2‚cÕ@¶?òDŒ`’äæø‹\nÂ-ÄÅÉçÅªóú¸EÓK-‘2,›ßKèá,>6A<Jî|àí®âà—≠6GQ1q5‡‘[¯Ô‡sîßcß&†Ó`°Tï`œ=ˇ\0Æ¨ò≈ƒwòmöÕ~≤Æ|@îAó-óÃ#©Á¸6ÄïâS	q1bı6B5nÜ|\\qµ=¸UÖNDÌ‚.#∫@41„lÊ5I’ï_Ã\\#Ü\\_ö|1ÇÓiF`ì®Ïg3à√‡¯>8¯·éìÙ&œç8∆N°¶`π¥y!œ◊¯aàŒÓˇ⁄\0\0\0\0\0\0r Äå<2Ä(√(£√(QÉ8—8¢H„∆(`@\"·¡(ëÕ<0N$Éâ¬(!¬<L D$Sã ìá\0ë¡,É… AN3F,2√8ÛÕ1â‚ÖFÚç(B√\0¬Dpä #à\0Q\0Òé$#¿$ÅÑ·<qsér2»ÕÅ…a	 0F8#ã ¿H$ìÑÛÜ3Ü¬@,2$≥I!c√”<pä‡,#«‚â‡√‡À\0êC08\"L$ÅG\0rÇ0—PG@$`ÚL<êC£å–è8\"»08É$≥4¿…AÀ°ÑÄ $qÉSå è8`«\0F sG$r¬<ÚK@4Q«<≥Cb,#àÇÄ\0\0\0†ƒPM¡8RO‚√\0£Ñ\0Aq\0¢Ç01MÄÕ$í\"\0¬@ ã Q“√4`$—0–Ç H<—∆CÇ24œÄ«$A4‚œ¬$âqN\0!é–àêÄ8”« œ$QrãSE4∞é<É”â,“âr\0ê»\0¢4rC,@Å„è\0L aMa	0Ç8\0¿4ÅK\0ç(”·	bå(ÒÕ$¡,‚Å±\nQ<Ú¿rŒ R„ÅPC$B Úé,ìã †$ ÄaÑPD(ÚÄˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0êˇ⁄\0?4?ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0êˇ⁄\0?4?ˇƒ\0&\0\0\0\0\0\0\0!1AQaqÅë°±¡—·Òˇ⁄\0\0?hÖ\'_ºD	\\ΩÇˇ\0yämåêj⁄∆<E‡µåD†Y£«¿AµÉ`Î#òG*ö’æ/^‡&Eh”√òÄ©ã◊πaEí⁄”*V.Áƒp™ÙLb6≈%;•ÎÇÑCE*<v∂4øXõÙKËuOÓ∑òç˝_0¨•®Ï…‚TÙAôìó5∫´º‚0¿ó´Q3óAt•¬·7Î◊’áZigÕ‚~òn2!+m\n°Y:~Å™É¬gY\" ¨mò¯6¨˘älµ‘rÑß‹mE óQS”^˜âüB¯‰ï=Ò*ΩL‚∫@hƒøQZX ¥ç~‚:\0S=@¥◊.∏àﬁÛ+43U∏}t∫icP«w7∏E6øàVÇ‘h;Ã∫äéÆ\"A0Ó89ΩƒYp√d5	ñ[¨ÊFÃÍ»Åç∞+‚ÎòÔﬂèÚ^}YkTËÏèq+8n\\ô.·ú‰Çê9:Åle‰∞s»<@¶”oÚ/§ªHÜ±Í:⁄í√ºÒ0°´Ç5”©ì4⁄ÙıòÁÄD™√˘òÏ6KﬁM∫ÓÃa˚‚≈BÈn8J∆ÍX3D]æjdÌ¯\"Ve€RŒe…í!™-ç_àNm^sç-éÇ∑UºG◊±üaX\0π’≈ås˚Ùùm∏å»ÉƒP\0Ô˙ä§Öƒ‘…œí´vôÜ*,≈Wã–?x…	)Ô?πñ£».T∫ëZô‚.Ò∂/@v˘˝&W4mUœı®LñÑæeÇNÔ·\0UŸ,mÄ´^ÅVåfZ†WR±›ˇ\05[<¯|JqAÂz¡_Ï4ä6ÕZ÷Øñƒ∏îdofw∫≥=˜	õïp´¶πÒƒWy,¨/»Vb!2mT6√X\n@ÁgÊ*†jJq]WÒ‹ä¬m5»’π6§nJ∂∑Yå5∂ı2‡*ÆKÅ|≈%Uyï°ë¿<CÄ~L-w∏¸ì˚E0p»LlºEO\'Ñ¿ì)õΩ≈¥Yﬂ1∂≠∫ã£ıπÎxH‘™ÇØÎ∫){  T‰ı01¥,«qqÈ5R ∏ºf7,|´Ã2–Èˇ\0©bThÌ|˝%ã¢ôMù‘{ï\'z›`>πÖS—j¬Á\\¡e†`IçhÅÕÛä\ná~e(U®{a´+XnV8“/O|@Dº—@∫ÿXŸ}=39›KÈª˘‘]ïÀn¸À∂´ü,ò+Î¿µ∂ÿG Ç„ƒƒäı?JÄd’≈:ÉlCHÊ˜àáU®åQ˙¯A◊t%˘âRÅéjï§hÈå[2–©†Î,1Ô*âB¡—æÂ	ybX√›Ò8Ç21êz!f2’èt\0ΩJúÕS’fêpıäKó©Pp∫I´h`;ñAgTº‹<aÇÓ	 ò∂à(åß7ôë  ∏É Û®\0»˝è¥mªUî†?bÂæcUÏœ0ÛÄ£‰Î/}¨	õÖ≈ƒ£rî≤ïíiùf]cêÇ,EZVs∏°|õ‚#¬ç°|Ã•Ö¥~ŸÄ-.ö∑ÅÕP{˜ãG%éÈƒJXi√\0mY`Ω(‰’ÅËUÂ42ÚÅ•|ÃaÖQ„‘y-$ú8Aág¢Q≠9´.◊K·ç:ÉbÒøÚ∂w∏Øó\\Ê◊©Uä„á79zLo0‹Ù?î8[·r‰L00bŸF8‰¡2+=@ΩÀ~€KÅï†Mùõ?|A∞Ô;Ò‚ö@\'L+\0“ê±õ\nå•Äƒ≤¶ZÃÍ<®I.Cà*êª_¸ÛÍåí;FNØôÃó‚#éà™ÄÚÅ®óì-‘N`‘OEywÏ¯CbÌ{¿Äwcq\0ïR*XQZû¯å{DÊÜJûeˆŸqPêh:óE£ñ˛b7E¨ Úº˚Éó¡‹`\\ÛÓ≠J^…j@∂\n∞M¿éœD´Q-0\"Ä8ΩJB⁄˝†0Ö	Êˇ\0àd„ÜOõÂ‹Ω•k≥ı0Ò…2Æc&UÁ©n2O`∏T•∞Ê ≤7Ã“æ\0ú0ŸºüYv#~ÚtŸW%8r•¯f‡‹!”mkRê¯Î……åûf»—íù6b#p\0Ë¯ÜQ)¡¸GöD6¥_©≤íÓº«·ê+à“ﬁão∆kÎ1 :æÚ>áÌO .›xƒInó˚óB<ïÆn*b∂«:´ê7¨v≈P&ﬁ‚„∂ÄòÅA\"®·Çç\nb˝∆à«S*¿ﬂ,D1’73]√KuòrLg5xè…•[è€ó∞J)˛Í\n“aßõÜWªXÛ‹6Å≤Ó83\'.l\\	ªy„ØõÑÑÅ¬¢HÛ:¸C.Q:àabÍÊ qZ‘Ω¨YOÓ‡∞+E¡Uãﬂpç\0´ÀôKa6¯ÉtÓt˘∑ó0öOPoH—^U~Èr®-~ÃcÌ∆\0Vj˜ãô„:›ÿ›\'Ø8NY∫ƒ•>AÒÃ8â∞)We<WÒX	@ÓæëÑ§Ê^ˇ\0SîDQ‘mWj¬ΩÇw‡¢j“N“-û˘{á™ñ4\n^ûÃFÂÃ:T*õ^ò—I„˜ä\\°°∞WY0\\@™ˇ\0∆≥Tà-K`)€eÆ2mÖ¶Od\\∞÷˚zø§mC*lP´¯ñ¬ä,™‘Hu5K‡¡¡aÆÜ˙äD+)©X∂\0–9≤+≥¢Ω√3‘ó‹+u°ıAD◊˘çó(O¢*îF%£X)îñHè4≤æ£˛.÷ÉÀÙãPÜæ‚ÊC)ã:áê™∞∫‚•J›â≤æB^\"¡Åeˇ\0#Il˘nóu2™`⁄l?àõö∂áèŸÉ&Æ™ˇ\0q=ê‰)Ô7ë“$÷Æ∫Ä\0àr’Ω k\\dÔr–†/Q7aQ¢ÆµÓ;Å\nÆú04!‡ó+Kç[ÉáPΩ≠9˝èı’:Î∞kŸÁ¡bM ≤v5ù|Y,πräÅ_çJÚ&0T·h}1H3ÖEÔ?àáa+e¯É\"¡Eç~\"S≈ra}AÏ»–.}GpG19¥»0-+ﬁ``∂)‘RÄZxï°åPÂªªâ≠[ì`Ön∏Êÿœ7œòVúÔ˝çÒ¨ƒV∑$iS\0∑â àq^%àYQ~Ú˘VêcZÓE¢ËΩÆJ√vú‘\0¯‘Mî’mxÜÃâ –Ñ$~ã˜ƒDTl)l/¡EÃ çqwâ@ÛDilîîœÔÓeÜ&ÏD¢ajq\\C~Ínæî¿î˝m¬ ≠∑XçŸ‹u&…^*¢MÖh«>Ÿ¢€:>>üIzŒipJñòn†˘dyÃjeÖ-˘éà.¿˘òÖGÃµrËV¶í\"è!4ÀÑMé•›F¯Í{‘P±^ùöD›íÌ7j«æÂÙöÆ&çS/ê^F_éq∏:ZE·„Ôk\0]Ôq9º(VıÙñ$±réF\n\0\0◊a*ª‘uD∫/?ƒπ\'ª,\'’zÚu,ÇµVsˆ˝“≥ªW_ΩCA‘Lâv€Ö;ƒµóàîk1D†4Tx^ ©ÇJU)ÇîÍÁñq(@éiÂ„Ô/r©Õ©nﬁ˚Å–e•uü%>˚Ç‘^QK«wÃ≤H»+u¬±a^ä∏’∏ÈÀ¶1ÆZÄ©B8£îõrrH+MÒ◊Ì0ß0úv˛£˜®>◊#ÇµUÇ^‰{JÖX,7\0!sÀ	hm~eB¥Tw6√…Êtıuö:nÉP¢ã[9óù˚õàÊ∑-˙Æn;\0Mµys≥ÈIk+”Á‚Qjπøà)\0Yyèâër-;=KE9âyJµ,S¬Sä∫ïì˝_ÃÌJzÍIV√4\\-˙‚-oâ`ı,_ÃW¬[!u2ûπóÏ—¸«E|˝eÔe„}f,#Ésu)†Q(QÊˇ\0ØQï\'çÚ≈(h67∏9@(‡ﬂÃHWÏ:∫scüáπnF–£€˚ƒHRÉ ;’cFao}]Â˘Í%%ÏÁÊci°X£«òvJ!≤Íà5û˚ór4∑àêWÀp¥“\\F‹U“K0ó#ÇD…’3úû‡+ﬁ⁄\\>ÒÓdé <˚∏â6a]°ÒôGÊüf#n˚ó√≈ﬂ<A0wTÉwcwúb± 7ò’sàË\0,†jQuC®´ÇÊbŒû§ΩÄLñh{1_JÑk‘Œ<@\nleÅòFec®†Ÿ«ÊìÊQ3à¢ˆW w-◊˛e±∑∏Ö…ıñ”Ò∞ª	otÖB√–?Óì⁄ÆMÉ◊r◊O5πœ0T±øQÙ‚_ãf⁄˝ı∞÷k*¯®·\nl≤…‘øSúD¢Eêøøh⁄‘¿ﬂ.v éµ»Q«âRﬂ(Aœ¿.%a[Ó[im∆˘õy{7)YwCüåÄùDRW·ãªÚC\n%ña•d_•Ó6Õøa‚Ï®6bj•iA;ªœƒw ¡‘ıç\0˜T∫Âã—˜˘ó(÷<∆x˚`\'q=√π,SU\n€‹¬ﬂH)‚#›Ê_l“%é›CmøSq∏Õa∞\n¨)hÒ5∞lÃ§Ïn¶vk‚¢,z¥“ßËcÍÁâû9˜‚!Q§küQ≈ÄNîÁ›‘Q)k	˚QKN≠K=Àt_πNÙÅ∞^= ÁP@PiFûÆ,éh2ÒRﬁ≤]0=*·Ó_\\€)∂%ïu_\\œHdÁq	PÀ∏∆ÿ%B≈µ8õâK±£‹Wå∏ úY9áÂy∂ —^S¢˚äºöù€~3ê˛=ÕÅõV<DnÎG§g„¸ñuFÎv´Õ7à8f-Nm€%cÓÛ?xèΩÙAå≥3¶+\\≈R®®+π≤J-`÷1ùÓP›Gf≥zeˆQwé*\0ÜÄ‘F¢ÛgâF»\ns–§P\"…Ê√≈G{:\\\"⁄ï≈ÊòRª‰kjıLU…ÁƒHmF◊çq/ª&˜»ˇ\0™V^µÏî»ÿ—~ô{h™‹tø?‘Êñ\0◊ÌìΩÒãº∆«nπÖÒ∞KEû7*CYÁΩ*\"F+vKFKii£ß®ﬁú≤∞”ª6⁄.‚»h≠s˚Q˘‚pS_Œb!¡b7˚‚P© ¨Ùpr#&∏E¸Fî1Ãç]ƒUÙr´∫ØºJ(Ï•À\"‹PH±eYﬂÕF’Ø≤/Ïk˘≤êÛå`ﬂp@ÀπWä‘F—•ÙÛrØõ‚Pç’j˝»v·Ò2≠	˘Å{A7\nRb\0äÌTP_◊¿L§®KsT^≥˜{ÑAK-MôMAï=πﬁS‘ZP∂ñøSnA≈†Uk9¶qœ⁄ ∏≥ìÉ;gò∞\nΩ9{„‹L<8∫;ﬂè¨î—ó∆yô…î¨®(˜~Ê ÅAÄRr9#îº\\D·-lqâuÄ∑ü§Í∫\"K´Â5âº˘˛Ω¬f,¥∂õwÃETÈ¿ÓÍ\'ù˙˘f<∏xO™ﬂ⁄1±W–˝‹~¡Bœ(*z4d:Øu´⁄ö‹ÂÔYƒB£≤yÛ)=±»ØôBÜÑµ∑|„Ò1_ÎN„ á3õr™¿;«πr!¸É3=˝àk±Õ≈‰π·Q¶”Chî¥\\°ŸU4≥9Kzb.—∫XP%“≈Y%0¥ﬂ<KÜ™g!lP∆~√Éló@¡}‰ƒ†\nõtF’å?úÒEê#`n∂<]:n†ç¡;”6M©å<ÄÜ92æ,î2´j€€¯î≤ÉÄS^I}W€Ÿ7ñı]F‚π§∑áL.˜Az±õÛ—§√)£6„¿6|\',+dŒúq¸E;√!.ﬂŸ[“ÍÅï∏Úº«$Ösgàp(´süƒ•Fiº≈2o“!E’;6º_Ôﬁ%-\0çäÖÖW™©aÆ ñ€≈ùj]l‘0’£∆u\0ÍÒQUË`‰m‡¨oËê\nN ØãUb[Mm∫Ê5	ÖN,≠◊X\0\" †]l„r˚qLa;Y/ 8cCîkÙ˜hÍüpõ3îçé»≤ÇleY˝˙)±pñnÌ∑Áû†∂!¿”p®Jç˜)XÓ§õ6’›uÎBá%b‚≥`>+2§[Na´´MÛüÚWÜ¶úñhÒ¢\"BwE˝¯ÄFëÜñb˙[˙}c\0»Õ˚¨ T˜nv›~Ë Î–~SÈiŸF@˛ädÂ^¶t,um’±&#ä-zs©π7£Y◊ÆO£Q≥†∂¥¿.ZÜäd*Gb£ΩZüKÛ“Qf∑kŒW˜∏Ñ\0Ö+N;´ØÚb[Ø0åmEbè>e’Rƒ(¥Ôà ∞ Á_˜Ì,¿Nm«ﬁ#≥®ùõúoº∞A°Ø	‹yº(©vŸO÷w«)§¢°ÕçªnP&¥ñ\\vﬂ≠ !ï°x3Y\"4ì∫ŸÀçDt©Èo7òÑú$xËıÅ2*∞¬˛ˇ\0&lú\0oﬂ’óÁQùqc¬}‚±KÌ~ÆX“ÈáàA√^Êd¥Mnv÷ÓØPÑL)>e›Qdd&®µ¡áóR–U›&ù@Ì∏™∞Û¸JhÅÖï;†?∏∫Ÿú|¬®Ö¯øÓ?V∂Íÿ-çb#åÿ5∫äç© ¥ÄUπ¢àÄd\0¥D˚ŸcÃ>÷⁄«ÊT--l„\0≥ú—QÉ\niàˆVÖ\\¢ŒCù°Ü0¥Bﬁ≠\'˚™ãQ‘\\q‘yï›éo\\WË,V6X≥…Õyè†	Kª¨@‹YWë`Òƒj @˜Áv:^6nÆàà‰∫A‡ıÇÉn´Ê!pKû`E—Fq\\D	/\n∏s\nZ4Q«˝ö≥ò=¡´n¶/ÖãÃ--cæ »Ï±…_KªJ˜øfa0G&Énˇ\0AòJÁÜU‚qÍÂ¬∫æ J\0Ω_\'ÊÄ®Ä[Á€Ù .6¢Ww˛£B5mıG˝aô¡pÅ∏ﬁ+\0œñgC«\0h\nmw@÷úNøPw\"Ã5AÜ2tJâe°N[§ƒ£Ùî’‡p—t-¥Eˆı˙€@∑RﬁÊöàı\0ºS8÷=+ßŒ_¨Ë´¬I¸¶YØàC†Í©a%¸ò∞Œ≠902©’µdXâ™SÈErﬂπM3O#„ÛÄ2 r¶V˘ø†ä“Ê–1}1˜çíÈ©Á:ﬁ~#AKoﬁl%ÿŸ^·ò9dË†˚Æà∫∑¥]-È’˙ÇXb#Á∏ùΩ¥Q÷B≥·ﬂÍHá+ÀØW	8klRÔÈR∂ı√ZÊ·»¬¡ë∆:ÇAW04óJ∂¶›úzÄL§ô∫]ªﬂ—çy5™[Yﬂòïµ[ı85åàß=èˆ+T‚’ø®:ÊºV2R∑´æ¶π‘¿“pá∫ïzCI„Ê\n“ﬂÕÍ6t’<5~•∫0EΩhT’Õóªê“õñV≈j1\0€æ·ì“&çä	b_∏Ω9„˘îËœà‰	ø^´-mXÍäL`d‘˚C}`4<íæ¿€‘GÕ‰°QXxiòÜ⁄âlª\n∏ÔKy—H2yUÀ\\∑PŸ5À˜ô=PZ%•æ}KH|GÒ-ä˝¸F©∑	`|]øpD©Åº[ÛD»CV*&QO\\vMõ≈¨*”…¸≈√Y¿+ÆnCÑzK®ÿ”M—Xqé®∞-T¶Õ&/(#Á0…#ü\nﬁ€„ò‡ºX∆ÍƒìÓ#^)¶Ñ^;?X˝(¡oP„Î‘®Z¡ûÚ¡ªqßc∂¯¨¢ﬁ©”v)[r·≠À¬\nŸ¨\\3≠bUU dN#í†\nØ*øØTO9ù⁄∞.’eJb±itöÌ≠⁄új±‹&Trg…,ÖYµbyÅÊ)¬øNß/+\0x∏DWR∑Oly£°Yw+}q∏‚d®e1;ÑÓT	«>ÿäfr^ŸôM¡*Ó2Ö˛–øÿÿ8]‡∫æ˜ƒà\0<D∑“_é•\"ª°ÄÎ1àºøcÈÙj>ŒË•oáü3≥gìB·∏∆{≈íÍÑÁø¨“&#Ö±WSò\0O¶èleAP≥Ãº∫GkƒQÄã•J∫/ºÛ65iJ1ÅãN €(≥~&Ö+¢⁄F˜œ÷Z∞ÙÔ„cÈ,—∑Âø‚\n≈–m @VZ0)Õ}‡6p†¬™¥k1@=KË´=_ƒjc≤x7zÒù¬¯Vhùñ¸M˙*Ù±≥øpm°èüˆ0æ∂˛ÛEkÂ’ÄY§ΩíÌﬁ¯ùœ•ÓB¡\nG.¨0“”Fj	cW0~Á‚x•)WNZ±Õ^Æ„Ñ%˘|UC<PAhqW≈@@ãiBiC≥é¶å±À√mbˇ\0ÙaRx˝˛\'À‚·Ÿ±\n‚BqPÍû ‹∫«˜/Fµ,	ƒÃâŸ§%(´˜-(Ò+√RÚî`6å0∑∆“ö≤?¨C–AqµyœÃL	†π-≥‘$Ï®Â¥¨›u\0¡w{˙Ó∏p.îvå‘¸iY¬ÁÉ™≈yÇˆÿOÂÔ\0äª63ƒ<T ΩŸ8≥?‰ΩÛÿc8BSÊ ›Va*c	zv	ƒ(%–´≈Ÿ›Ê›‚±ÃπuXøƒ4P=v6∂œ©ÔI`+G4°ÀÊ9™œù˚s2-ÊïFZÔò‰{«É¬ΩDC∞∞¥ÚuË7¡Nÿè-ÁX-‚•k‰c’Ó†BËÿâ‚õ„Ã(“<4˜3∫R≈Ú=è˘8Õ\0ä≥Üøu/{îS¢~¨∏’yà’qVÆ$÷•ªf∑⁄¨Õ”IRÒ29~≤µ0∫ñêm`€ºCW1µàU∫˛„s{zóI7@[AÍ®à\nå ‚¯˛e”eîY“√xàbÕSeÒˆÅ¿Tœ^+—õî‘÷¡∫.¯ï6ØD„	”Á∏ÜH(—vlo8˙J\\™à-‡M◊Ó ó&YÎ˝ñyÇø+°Âk0Qî(X{N6Ã	O‹ªñä ’Ä5øAlÆ`µ|º∆≠ùˆ˝bïÉ∫⁄:´ ïîZ‰ÅS…«÷8Éà	Ÿ‚5∞©ı+Xñ∏ﬂîiåC rË=‘o \nÁ|Eå≤Pπq~;äåæÌñP¨ÖÛÔh8ú4øv}\"ﬂÅï\nÕVöu¨‡ó:!âA”ÓEƒÒ.Pïa™ﬁè16lJ∏ÆLu/©HÊS$¡w/⁄5-ô1¢œ0‹KVﬁË|≈&ÒôÊU˝¬rÀ⁄IAn¨∫´ÃmEhd™ÏŸ6¶¥ï¥Ï∞ÌºZ·@™ÓY)Doîë€*™ùÇ†≤º	˚∂.‘ü\\C¬bÖC®ß/<Ò,ú¶•<ó¿Êl√‡]¶˘≈˘bA&ªﬁ‡J\0¶lvvV%⁄¢·»wüﬂ‡∂z*ÓÌÁÍEcE€Üπ‹†Í´qtﬂã`r5\0kôz!(–DpU{é…,∆…mUZ/¯ÁÈ≈A≤t9ßçMÿÉvbçn˘Ï3ÅDaÙ[GÃøqDIın˝¡#VsÔé¶8í!|1d±—ú,;UGiUU)¿ñÈh.≥*RtÇù	∆üà⁄D¥∂ØÏ˜+π+Õ˚ ˙¥´˘mı+H0•~`/ÜÍtD-·.™/ÔÌ≈Ñ“£Ã§‡ÇéÌñ”_òîª%€Óh8a”Y3-Ê≠^‡œÂäπ/f40!¶xJ(4Ø°cä†u·Ωt*\npb—B—hÄÂtA∞ce0#ê›á	sá¢^9;yñ˙6%^£A°u‚¸ù«£`Z´¿Nú∆;xá\"w\\^`“SP∂3ÚÉG¿ ÀÒ›UªÑÚöW8}¢ÿ°,çqm∆MC?à®Ì,o8J’Y°Ö¸ÃZ®;%Ω\0ﬁw^WΩÎR‘yé»ÏÌ W¯è4÷n±πkhΩµi\'Ã•b§lŒíWª=ëå, .Gkr∫ù¨/l5É¨Di∞‘tÔ8¯äP‹UWÉ<kıÉ+Ju¡ˇ\0S–≤ö€{à*Ã9ºΩî5UÊ‚Ö*%ôÁ®ﬂÃ¶B∆u‹∞íØw.‡ß8`¨n•xät[.≤ÑÜW,ª3	îï-w\nSjK q…Ê„4FS3πZ§Q]CG]CY|◊~®Ω¢=\nÌÖ` ^ù˛ˇ\0ÜÈ∫YB∫r∑…‹NE⁄ûQT∆®≤A„áqÀ˙®„ï	M4\n«X>—•:»Ä–\\\n\\t_-7Û	0¡º£€SFi-aÛ[¯ã¿W˚ÁÒ<¡V;≠ﬂÍ}.Oå L–mÜ“o=+‹f,rπ·H>˜-¢Ïª≥xıúzØ¸AÔ0@Ñ∑m„Î+3lQGìöáÇÆU\0†™8˚C;–NW˙ô¬ùLr/∏+∞QÑµ7êÿ∆.,*ÿøàMÑ Á\0cº	+¶Uq´PŒqx…H&\\¿älÆÒÏU‘®¶¬ä™;’et∏¶GK\\K6“ZåéBZ∂»—´ê|0U¬4heîfËràÑ7ŒàÍüíîá>Z!ÏE`®.P9≥jÙ\nä™ƒ§¥∂	ÛZåÇ˝«≈∏∂Ìvøpâ¢+õ@‘.\0º‡rÜ¬sVﬁà\"h\\^Sã∞Z˘ r;BÊˆ6„.\"ﬁ9òz:÷Ûñª*‚∫ìö 1¢’˙√	Qˇ\0ì\n!∞6:≠¡º™Fôµ+√ı\0¢eæ÷7œq$g™©ÒñΩ P∞Zò7º¿KÀ`´9Ø˚Ò4Aû2Â5BõÊcªÃ&ÿB”J5MB©Uß∏%∏Y©zˇ\0!”†)`7r¸ÒRÿÚ€y‚+VX•Æ¥◊âùŸåö°§M≈ZB@õ=SÆúêìÉl0‡DVx¥‡b”ﬂ6ÒzÓáV÷ñã]îﬁ_ˆQ∏1ŒqÊ[Àuîpµï| Pﬁh hÈÇÛ‚(»‡ÁPHa“ô(˚(pë≥ﬂ˜agÊzzâ¡É|Dq◊Ãúyäÿ◊ëô±1xOπˆîí˙ñ∂*YW˝º¶∆Î(\"h©j~Aä1öÓ.l¨∫3±bg|A≥x*Ûçí¶\0%π-ÅªXÙ¢õT´Õ’Ï*ârò7Ÿ’ÈÃ«[eπ8≥∏}m(“cë¸G¡ÜãÇ;Ë{~`\0¨!Ø[®ü¥`*⁄Lµb‘ªxˇ\0\"\nàlÒfKhO°´\"ÙÖ\nK¿doH@jÙyî•1!{20´7xAÕ≤_5¸G™˙ Àâu}›Ò©P9/\n∏|Ãd\"‘aı˛≈`_í—+*ˇ\0X0Ïe¿hÃ~°ü•Xjæ§iÖ‹ä-úõ3≥º∞UÒ¸FÄ„-YÂã-ÜãY\'ë£,7Mº_¿ãî∞RÍ›_À‰_géÜÎÎqﬂ IBˆ‰É„_«¢ª—MXΩR°ó¬¿¥‰ E>b±\0îíK≥_>!côvTî}íŒãçÅ™≥∫a&4/1ΩP’µ\"lcs£ÅÈ∞>fÖV´±KõM‘ÄBÛúP~bMÄFZ2SÁÌ‰àt—{\"\\aXELï ¨‹10·†≈®°Z1-+YÃb{(V-^*“ì\0ÛA™nRÏË)i-¿enY¿F(æ~ë,√Gry:XäË¿∞∂≤YúAf´,YT9g®-É¡y7ΩVba\\\0LŸ*∂p(§[o∆ªç5⁄È∫âü⁄µ{«È7Z∂Uã∫—fD∂z¶∏™√Wî°‡˝0œÀ`Z¢.2<µÖ°\"#;’é,Áé‚\'â;n˜u*c+ß/“)\0ﬁ/b»‘aHﬂ~≥êá\"ÍRÜ∂ä.s¡R°’¥∏⁄¿®Ë-%VÂ≈Åi‹.îÖ·ææ{Ô∏GjŒÉt∆b3¢–º∂œ®ÇÓïœÃ@jëôLÈ‹n:˛‚)N¬Qÿ„s(‘lHL¿!õ¢˝Ëå:XAZ•„ÍÍªÅveü?à‹%ﬁÂ0Ööœ˝˝√ìÁ W\\ıãï≤≤∏4—;ˇ\0e¸^]¨ı ﬂÓ∑ltl,ôgZõ8⁄^}J!Ée˛Ó  ≤ÚcÌ{œ˘0*CŸ	kÔ•…ãºaÙA4Æû¿ŒãW-\0#@”e„EØm‚,•‡(∆˘1˘Ü∂©’˚cª;¯>í4WîkQŒl∏ƒ>ﬂCÆm)ÿ^‹VZÄlc0æ)¸¡b3ê§aÕ’(_a™]}|¬›Ôúˇ\0Ω ≠\0—áaın,n@‡’Á¢√uÓU»)kWüŒæ®-.œCÙ˙÷ !πÒ.ÿÍ\\<öæ&,åÉUµ Óªz˙& ∞\\∆W|¬™ﬂ+c≈ !d–Tf⁄<€J“fF—†¨Qé¢UÁÊEWÃ.ÉlzµΩ‡cï∆≠Hg∑JÂ…ïl/ÛÃ≤Ô ^¨vFJeµ_q’ëev·ÙE¿ä˛≥\0@ï§ﬁ0_r†”ì¥»–Zœñ<ƒµÙøËPÚÚ\0∑WuI¿WòêúÓÁk◊13 \0›£v≠c—≥å`«)kπsìfg`+õ›t]ƒù•πË∑ÉÒ0F°À˜Ó3å¿˘#\nÔkÎ”å≈ÌÅ µZMóò¶ßö™ã\0Æ<Ll¥ô^ïg„Ã•w∂Vr/€YÉâ∞Wù»qL,›U√^q!¢ÚXâï¬%]1Œ®î@eqZª®ªõÖªg©à‘Í∏à6«@©{QI*◊íé3äHÿå+«ol(zä≈Mh(∫∫⁄±Õ\0µá%=s^fG\"q0Ü-ZäZ\\fâ¥Î0 ◊5œ©ú`%ÈSmâ-Eei[YKç{ÇU^¢jà*“Î‘ƒı˚˛BÙ?òv>8¢º°¯Çhú¸8˝å@*“:ªç—aÙûP£Å—Ÿi¿îÃëb∑b:mÌ‹¥pÂØ?à‡ƒÂ‚/}.™)˜qQ[+æ,˙√ÎP≠ç¶®†#≈L€ø∑öÕ˛bZTg&Ñ•˘◊àmË¥‹¢íò†≈@aPÆõ∫^Ê’UT∫ŸÑpéüPkCÉtyõ.≠õÁ∑ôó@h’Çèz%∂ÔÇ∂ﬂΩLd≈ôR]SÜVN¿[YÉµ zñ#T°kß;™ò¡Á {àcékÃ`4a©I¢ì«ŒÒo\nìS¢0¥Kg˝	r˛ÛN\\Q\n∑ÁrÅz∫Ä5÷f0õ≈∂x\n?ü¥…Fx#b=éf_Ñ¿R˝√¬>Ö÷Õ.ö®Ü≠9è∂sà	pKs0@[-±∫KÈ+ı[g›@;€®X®8¢”éÏã{ñ©¬√ïÍa,ø¬c]Ó;ﬁ√ÌçDMˇ\0∞ÿ¬ò~#≤j_·SŸÙæ ù¿±b¡Ú9òty)á%Xb˘≠Dy™Ôä@<$‹∂¡d9Í7Ü2£úsI:5’üiBñµä≥ó˝ñ\n4¨ ?ÏBé6üX3d=_,Ãå4⁄wt7#‚ƒØàa,7˚‘òj•∫yÑ2—[û`‡˜ˇ\0óâÆ1‘¶WòÊù\'Ü0¨≥∆ﬂäé±KïÎ‡ê–Ê´ÔÓ=ü(ˆMx≤ì´Ú≈9Uê9Î§®\\$◊®≥©“≥«ÛΩ™‰LÓÔ‚ª¿E≠+jÔı˚ZäÑßH€Æ}K8ÓLo-G¸ê√P›âÒµcÁ$<F¨[W_X µl€Û¿ƒ,q+»}!òF¶‹Ÿˆå`}cº≤U‹y¬≠r{Ò)Ób!,\n-ã¥!T	7K@!6 ¶\'ed»	n0L…U–_÷•FÇ)„¢˘à Ùã¸ÃSØY¯óG.>7`≠º˜wƒ§–ËOò‘›é˘é⁄Qÿ.T¸ˇ\0ë.~f†ñ–˚B[:çF¬Ã6IgèÒ1Åµ«Ò∞)©`6äh¨>9Ûƒ(”.\0≥à∆-›í¶x8ÆUˆºÔ¶˚)€Ô3X;Øp#›à‡Ÿ(Æá˜Ò Z/Ì~Ò∫d-Û84P¿∑\'$ßëd=^>’Œ9ÚéÅ¬Je”Z≠úw3¥ƒ3§<[=Ñ;KVeWw¸¬{M–\nz!ΩÂºgê¬ôãl[*«=EøY9W—îLèÑxo«ùUhï	™”Û+˜¥JõäúBæ\"hT9 ∫É∏ôê^¬…#7ƒ[¨±ÊbX‘πufÛU®Òü1¨®,t/>ıu\"eçŸ\0ZíËN˙9ÛI‡p\nd\'§akb#ΩΩ~ë5m∫hÊ∑Y?Fu⁄É\'wä˘¯°p∂ñø|Õêj*∏rÜ·+°jQó		c’iÓV%aïá˚à´”¶”áÃ∞ı+H˜/ƒ2∑É©òiïr4óQ9X17uqCÄEÚ‡)p®{=ü0˝=[ñ)W	ƒ‹ k…\n÷7òzT5˚Ùï}c}F[5Qñnôä¨n\0‡€ÙàrÀµŸA£v∏øÚπ*~˛˝ç£Kît*ìè⁄é ®ño«ÊCv7OL<¡kOñnØó11µkœ¸≤»R›gâB.êk∑‚	\"Ÿ´©0∞rørƒ:à´HJ÷Kà\nöW˛Ó%œÊhó•‘mÆÇoƒ¿ƒ¢»´ª,Wõä0IÄOò(6.‹ûßà,oRœéÜ§xøÑ*D ≠yó˝‰Û	∞4n˘Ñäiï•F\'¥B·ﬁ¶lúˆù¸DRÒ®p-Jm…|ö¯—0Ö j ¥·∫ãÅUfhäúqp2\n‚_ï—†⁄]”+…∑\nrøyFÉî∫óÚˇ\0≤®◊0Æ7\'—ÂSf.ƒ901ﬁ 32(¯Ñ3∏’õ∞∆ﬂõ0›Ãl#q™\\ã^¶ª«∏∏¿±„π®„h+çŒZ•ß(KÒ˙«µÕì*›¿õOÈ…≥Ñ-¯ƒ°≠‘ +≈ã8wg&‡FÆDókGãÈƒCÖπ–çcUR·ÙçÊ…KµR⁄‹ÎiEü ¿BΩ∞ÈÎ;ïûπ`≠jYfîôEjb]˚\0CKäı‚&L†Váo+‹6˝¿8ÛîﬂÔ1‹#&~Õ‚iÈ%ùiXı\nZ<5\nÕË!ñÊ2/ﬂêãlÍ~` ⁄ô}êi˙ Zc∂›¿Ù∂‘T–	≤dpLSø1ÄsÓ Zj¯É@hLÖuJÒ¿óÔ˜®/)Të∞_ØÆ#ö\0PÛoçJ:`]¿¢ºCõ≥W	1^Óf4é£ Œ\'‡Æfãè\0â©êΩ^?òAo3õ·xR,Íªî…f•,˝|Jâ$r€)çÈ¥˘∑:Ôs4îÇ´∏–=‹ƒe8uö“ﬁÆÀ/&ÂHø–„0Ù≠ü/ñTmêÍjƒ\"2Ò≠¯«F`b”Óë^yK´≠ª«Qwmx?}V~!†‘∏.Ê–CÀ‘4πj‡˛ﬂ,∂[S·ÊlÖ~ì*úèM$æ¯pÃ˜¿}„\n\0ˇ\0íŸ•5Ú∆Ò@⁄ü0ãÒ[s(\n#∂_·ó/+e#L––|TÃ2è%f8ÖÛ`¬Ê:L?≠§ÔÎ-˙»b˛ü2Ω»tïUâ‚Ûx√Øº¿p€Óˇ\0“XË)Éªm8 J™#ú Nj≤Úung-√ﬂA4‚Sû´•›YÆ„·ÈÇï§¨®Í 5ôUs<¿\n¥™ˇ\0√ˆÇTjˆ]ta≥$t  bÈ˚ƒÃd≠∫öÑ6óEÖF,Oôm ôM£ã5n’ø¯dê¶Î&¨ÜUóáSG®áXj¿∞t–>úÑçÌE!¶&]ôtıàêƒí™¥!—)_Ü`⁄ØÂà‚= Aníq¶ *uâ`áwUq0‚	tU’F¢¢ÏóC\'ÁÃbî6?à‹ú◊ÿC√±·\nç\"‘æÖ`Ã=ReÍ˜åO_úRµ7®zfÓ≤⁄„ß1ÿÂ¢ﬁ’Ü=Lçáqceb1ÓÆ5∞\'	˚˜à∞∫©Ï;:c±ù‹7¶‚\0pTCqs\0H\0-crÍî¿ÚAä√‹<º≈Öﬂn}a2øÔ3ÃJF›1˜ñIˆÎ©f!úynÊ»2Î3=rgYƒ0mDÚƒá’ñm2CÆ•,x\'ÖHNÜVxéM‘¸Õ◊qõ¶∑0\n∏Ì˝\\∞âGXV©c1Ü«à8*•ê\0√AÍQq§T\':iK)Û9Æ	m~‘p%˝ëÃ‹∑Ì Al&Õ®`ÅZ	è\":£$›ÕE\'˘‚®8ºyü‘\0ƒpî#Åà°ñq‰.PPo;æÂôbn∆?~“»í≤®ØqÉ[-›ÔqıeÊ!pÜÜ˘é±´lp©áÑC±∏TX\0∞(î’¶Z¶d®™‹‘^1”VJÜæﬂ¯U£Ü·¨8	≥˘óTÉÈ\0.¢3åÃêhäúŒ•HπÉñe ¢˛<A§Ü¸«LWómj∑#(Í:\0ÌP8\nï¨D”◊PíìÀVg~¢Ë‰Lâƒ.E◊Wôf7◊à˙¯)?}D!≥_ât‹¡°Äæ\0∏Õ√,πØÄ ÊK≈\nS\\¸«≥Í“ı˘˙@FÆXÚ Æ‚”S°]ﬁ\"“≠KÈ∆Xë*ZÊ˙ïçK?|†µh&qs#süÍ^X6xûxà·øˆ{B‡!∫Ò.‰g–3ô˜œ? _Bï0â¯á”ƒ›pò50.ge´≤¶¢»ØÓSS¬	‹>¸ää∆Äúãèuˇ\0ô› ≠≥P «Ç\"µXìåﬂ˝ñ‹.\\¡7\0]Í‹9©{ìÔ‚\\Ç∆}ƒ-b_*dù‹#9ô›Î˜Òﬂ≥0Ñ∞π§5âÈÍlÛ*<¡‘∞º@õŒ ó	K)	kÇ¯‚r≤l•<pnéß#7®å±¬ÂVaøL¨Yg›ﬁ&?|ı	j01é•	‡`K\0=Sˇ\0b(q‹#∑{X.r›BÂºàÎ¡∑nW¶[Ê≥£˜¸(ˇ\0„0ÉÁsª°Ô1¬.BŸopÑ˛`Àí@.F†.º1*ÛúEû• ÏpÆqá0‘8‚5f!˘Üa”X[,§§ÌãC®#“üàk„R`V+\n∏∂1X˘é>%´1µ‚ÂîŒÙGGã‘√òπ∂1º¡®˜íÙ∫∂\"\n‡πa∏_w∏f»3\"D¨ÆYûHÖ◊Ì¬6 ÿ‡ÕÀ¥®ãƒ31÷‹.ó:©H{[©Vrk≤jËÅ|@®j¯à/⁄tøÿôÖÄF$°ıò4QÀ_Ha`f‚aÍsMËoòhúãìQÖeJ¯ô)&\"¯ñÍa@R¡/^‚}^N|Jd°ÄZ\n≤iˇ\0 Ö°j†Ck=ëuUÀl¢T˘\"ÆúD†‘,ùCkGâX’ŒBXº«4«ï=1,„é ´7\0\\UKsîº\\añ{ÄGÂ.‡∆`ÊÛπW/,^òë`j6Rˆã)‚q⁄éewbS LR8õcO⁄lƒ.am;aŒ-Û‘°ƒX®µ∏‡¡ﬁÂ]ìÑ∫kõ§ÁG∂2-…\\EÀò SàCWˇ\0ã—ƒtºê&l∞H⁄ ADƒ&ÊJ∏!‘KÜË¯Ç⁄Ò?!R·R¬s9:úG\0¯πb‹•˜õÍ^Y®dÇ+øqW∏⁄¯â\\j>RÍME®lªbû Æúf\n7¸ôÑ≥-E¢Y—.F≈∂`)xäAMU1Ò/Éf8êõ…*PpK-D∞æ#îŒn8ÄT≤–ß0óJ*,ÙCqÄ¡nzñ_åGïwÙç,‚rïà˛R]¿§ª\'&^∑ﬁWÒó‘Äò|Ë!s)¡—âx«à%)÷¢å®Ø˚Nƒ Ê»B’÷\"•ã<¿√y?òéÖRòÛˇ\0#∂q\n5®y7^`çµﬂS1µ∏l¶a~ÍN˚n	Ç°õ6πâìÚËÇ3K÷áj_´2õ™¨ë¨!∫_H&Ã—äe ‡ò!6`øU˚À∑ßò≠Ÿï.ıAné\"˘ıøÊ`£aÊ+©Ú∆W+üq7˜0®îŸ)¡πM\'&!cYÜDwj%√ªÖQƒ&E-3s√~`\n¿∫ªŸ&]˘_⁄âëL©Ó∂W¶¨UfV¥ãJ„çAof0ÄHábà.i¬kÇ=0@a~Z_í6 i[è|+∑PAn\\@Àà/\00mjw/öKà(f¡Ûî†«“\05-uÚZÇ¥•Û∏ ™ÚÑÙT\0àSlWw*–ó‡™Ñ-≈∆‡cπ`JÕ∆ÒYöÆs›∏†¥#‡ ˙˚ÀR.ÊJn“?)hô9Í0Q^°j9éç¬Ò˜óã‚j9Ò\n˝Ó.–ﬁç˜råú£*∑†\nÆ|„N\"ä∞™GÑFπçç•î™s	Ç6◊Q–∑¡ä6u\n¢∂fFÊh}Êe∑Gr⁄(≠/ucú√V/©TÊ_í™/\n‹ˇ\0peBÍUgd…H#!T8ÉLbÌŒ†∂6¿db∑∆±a≈˝¶˜ÜæÒÿ}∆Bq‹qVçŸZÓÍ	´\0#C.Û;ë%\\≥à!qÇﬁN*ÿ™\\(›‹Nä∂s¢‹&A–∫\nr˘ñÀ j[	`ä¬åjÂmqUÀ@+≤mT^çˇ\0P(ÜÄ9V¶€¢’3Ü»≈ŸvÕt“rèÑô≤á»Ä—s%b…SÂ7.´\'âîS∏®d+∆ÍxH¢ÏÀ °‹a´-=;Ø7Ì”p√‘¶¬l¶‚K≥‘\nCRì´ΩgæN•F˜A±ªÒUPv√BçÄº4˚è:◊ÉåLˆ¬Äv<±ag	hÆ∏â8ÇZqÚC±ÛπSF9ñ	µ◊àÿ:>rßc1?•Ä!…ÅFjÊ√ÅqH`∏á‚QπëÍZ%L◊ƒ]EwÕB-π¢≈h·<wx¬ørÄ!≤‚Û,„u2e”y0Ô˛êŸzÖG|¬±ƒŒB•`£s¿\\≠‰É`{n÷ˇ\0pE⁄5¨_í>¬Ÿ–vU¿‡5QÇªÇ ;\nÇü0EÍ1i°≈ƒ\"√w)mø÷Äe®Ü÷Û,I¿ ¡ﬁ‡+µ7\0Év£]N]Ãçﬂ\0°¶UàÜÂŸAÀ-h¬™îàƒƒ^WUB_pX\nu/pj«â±ÃΩå|Œòs\"€Æ%ôr∆Ó(ƒ5åëE‚]«Jﬁ¨2÷8ÚÃ°¯“)Kπ‚%˘¬ñ&¨K¬Î5jƒµ¶‡©ZÆ†AUAP\nƒ\"Ì‹@m‹£N{Ç8¢:©é! ÁÔ‹p)àb	πïÀ6Eõ˘ã	>—4Ù%TCàÉ*¨@]êÿ∆ñÍ8TC8˙ PÖ¥1¶\0Âıv\\;Ñ&¥\0P∫˙ Œ*=ﬂi~\\?ò÷Ñ∏›!~Ò£f†áÛñ^a©åTVUÍ;ê†^´§¡°Ë§|[Î\nÿ˝ÃC√S±Ç+î+•„˘òÉÃ„˚Ã’Éö„˛ˇ\0„Ä¨^fø¯pãTmí%ÜÚ˛Y¬sãƒ“;õ?˘§4«ııéß‡õ3Fn˝ÓhyœΩ0∆†Ãµ3UuÀç\nÇlâøØÃ-§ÜèèÊ<T8\"ÀQ°f¸œˇŸ","image/jpeg");
INSERT INTO tbl_man_usuarios VALUES("3","1","3","LRAMIREZ","5jW53OtH62YGci1zIoP2hNhsDf05FurAXKsbtM4uYAw=","leymargareth@yahoo.com","","A","OK","0","ADMIN","2017-03-17 13:23:01","LUIS","2017-11-04 00:00:00","http://localhost/inhgeomin/login/?q=2621ec3a9ffdc684772600aec9b715f09f9d82f9RC3-1507348498","","2018-08-15","","");
INSERT INTO tbl_man_usuarios VALUES("4","1","4","JREYES","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","julior_sk8@hotmail.es","1507620147","A","OK","0","ADMIN","2017-03-17 13:13:55","ADMIN","2017-10-22 00:00:00","http://localhost/inhgeomin/login/?q=881932524dc3fea080fbd680ba61a2abb71d6074RC4-1507620147","","2018-03-17","","");
INSERT INTO tbl_man_usuarios VALUES("5","1","5","BIZCOA","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","ale.izcoa1993@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:15:13","ADMIN","2017-11-05 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f0a481e69f3cfcc75cb4166c13d3bf07ac7bc8b0RC5-1499273528","","2018-11-05","","");
INSERT INTO tbl_man_usuarios VALUES("6","1","6","JESCOTO","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","josescoto9@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:16:36","ADMIN","2017-11-04 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f118b7d70e8c807a515f73e5d9fe91f8b509564fRC6-1499635734","","2018-01-26","ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ‚†ICC_PROFILE\0\0\0êlcms0\0\0mntrRGB XYZ ‡\0\0\0\0\0\0 acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ÷\0\0\0\0\0”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\08cprt\0\0@\0\0\0Nwtpt\0\0ê\0\0\0chad\0\0§\0\0\0,rXYZ\0\0–\0\0\0bXYZ\0\0‰\0\0\0gXYZ\0\0¯\0\0\0rTRC\0\0\0\0\0 gTRC\0\0,\0\0\0 bTRC\0\0L\0\0\0 chrm\0\0l\0\0\0$mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0\0\0\0\0s\0R\0G\0B\0 \0b\0u\0i\0l\0t\0-\0i\0n\0\0mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\02\0\0\0\0N\0o\0 \0c\0o\0p\0y\0r\0i\0g\0h\0t\0,\0 \0u\0s\0e\0 \0f\0r\0e\0e\0l\0y\0\0\0\0XYZ \0\0\0\0\0\0ˆ÷\0\0\0\0\0”-sf32\0\0\0\0\0J\0\0„ˇˇÛ*\0\0õ\0\0˝áˇˇ˚¢ˇˇ˝£\0\0ÿ\0\0¿îXYZ \0\0\0\0\0\0oî\0\08Ó\0\0êXYZ \0\0\0\0\0\0$ù\0\0É\0\0∂æXYZ \0\0\0\0\0\0b•\0\0∑ê\0\0ﬁpara\0\0\0\0\0\0\0\0ff\0\0Úß\0\0Y\0\0–\0\0\n[para\0\0\0\0\0\0\0\0ff\0\0Úß\0\0Y\0\0–\0\0\n[para\0\0\0\0\0\0\0\0ff\0\0Úß\0\0Y\0\0–\0\0\n[chrm\0\0\0\0\0\0\0\0\0£◊\0\0T{\0\0LÕ\0\0ôö\0\0&f\0\0\\ˇ€\0C\0	!\"$\"$ˇ€\0Cˇ¬\0ê\0·\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ⁄\0\0\0\0¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˙»ëë \0\0\0\0\0\0\0\0(≈Áå£3ä‡öΩ|Ú}|Áa\0\0\0\0\0\0\0“?#z˘D<‹Ó£Ú>#ki ˇ\0éÈ)\0wtÄ\0\0\0\0\0\0,™Ó|t@¨⁄Ã€H#˚Ú«ÖI°G?2Xa∞Çœ`Aœ\0\0\0\0\0\0Ã√˙3˜Û∫‰ëA∂üf¶K›í›KTo\"ˇ\0Y‚!ºÈ#? \0\0\0\0\0bm+9	Ø≤™ÎÑ¨∞Ω!Á#a%¬Ù¶†}7LM~Q≈ÔË\0\0\0\0\0\0ΩCÍÊ¶\'Â«œùINª®Ì¢˜ΩeIü∏ä\0\0\0\0\0\0\0ØTXFU±”ÿ|¡,\\É‚µ∞jB1ÁÄ\0\0\0\0\0\0\0ƒ¨æ≥©ÀXÕÿjÍ√•ó≈å`\0\0\0\0\0\0Œ€Wî6˙.ÇÁé@‰&˚käô˝;]	¥‘Ì∞Lp\0\0\0\0\0\06Òóó’÷M•ª[´!ﬁÑèîã+∑ƒÕ«Íö&\0\0\0\0\0\0\0wÙr\\˜%à˛£*¨Óç~ü^V>º?Ÿ\0\0\0\0\0\0\0ª”Oı∂§nÔ>≠>OiÆ∆ÁÄ\0\0\0\0\0\0\0\0ÔÙöo\"”Ûá¢º∏hπ‡\0\0\0\0\0\0\0\0\0, œzzo ◊}\nuÄ\0\0\0\0\0\0\0\0\0Øê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ˇƒ\0-\0\0\0\0\0\0\0\0@!\"#14$%&Ä02Aˇ⁄\0\0˛•«f˜ÕÖ˚wlA‚3≈&D–®$k«√´/95<…#ˇ\0qG<RÆQ&3Bg z∏s|ﬁ›√Xëƒâÿ˙ıkp≠tÎ¸$≠¯»ö-Ω\\A6Ã ú§îã„VhÌﬂ]ëG˜é7\\[”J&≤V8dÈ—ß≤°l>¨uVæcT;¯NEèëZä—]∂œ)Ω!7qU»ÖæUïV?zü¬ÜN<BÈr[Ê5÷÷Ÿ:◊Í@Ëƒc&tS¡îg´„#∑∞ÅVî´æ-Z˘Ö!¸t6ûrsoì`™y≤<$hb›•_+˛∂•àWx¥78E|J }Z∑f©›Ùn‚¥*¶≥îı\"‘áÛr$h=RÃêŸe§±G5‡Æé⁄Î π5§®wÇY;pqJ\"M‘ööÈÔBXc´2sJ0û.åc∏lÔ{–∂1Lí¯¡±®XÂÅmè¿˜°÷±∫œÅ¥)›®ÆvÍRtXÌ∫ˇ\0¥mVUUI⁄πÌsû<fª›µzUÒaúŸ\nt‘U‘ïA©WxÌ¬˜E\'(ä˜ΩÚ§∆≠Ü<∫AÏl™+&»·äæwW≠Å:ï>=cS64±ÿZ¬´ãUô9´cÄ°¥YŸG%$⁄ıqQ∞Ådbä=<h™ Ë¸çÆY~GF•!≈èDÎbÚZîœÚO#\n\"Î<µG»UÚΩTuı	2ã»dò‘WEÿ(∑˘1dí˙≠ïê‹\'¥}Fåq“IJGP€™TˆR€√Ö{kH‚N≥…$\nŒTk	fù*9û8X·tëU-Súœ‰&ÑGçl-}|?|îuﬁu5T≠W*o0ûÙ¢9öx^”âD,w‘660‚°$s‚ßÿÊ6t’èÆw(z`T¢|MÉ}≤¯à:ˇ\0>+Z9’bıBªKÇìi˝ô±∏ÍÂ|±„¶÷ ˇ\0n∂.^;ﬂf~O•4jBºƒ·g‘z˝˙µ$€bo≥r€	»∫*|Øﬁ∆ıÄ˝°™~¯zΩ&Î®Ek5È^ΩÜΩPxâ˘kéªArˇ\0’ˆ∞˘è7ÒmåÂõ⁄¡dq ≥vÿñù⁄§îë\'ŸYmÑÂW;˙_ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\"0`pˇ⁄\0?˚JF“\"à*v=⁄u‘v‰≥TœõÂÔøˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0!01`pˇ⁄\0?ˆícyﬁlÆ¬í wﬂˇƒ\0=\0	\0\0\0\0\0!1AQ\"2@RaqBë°±#SbÅ¡—·Crs3cÄÇ‚Òˇ⁄\0\0?ˇ\0âzˆT\\–ùF±X?Áﬂ\"àˆÊaõ“±X”jô¸[◊ı¢ñÙËøv…ªXüpøDCÒ\nÉÕM.&;ı≥o#Fu?oOèCÅΩH=⁄G{¡©º∫æú)[ñµÖ~!¨Œ.ã\'\\sRl~u6_Èõ∆«ä’ùGŸ∂ÍŸümH°(‹€¸èuÜNs˚Ò®§cv	≥cÊD‚öVÈXá€EÕÊºiÚã‚ —◊∆øΩFóæ∫õ≈ı_Z(€«t¬_O¥R}ı0‚≥üéΩàP>v¨U˝ïò|Ë«{+‹TÇRüQ{fè„záÇ∆T÷ÒkàÓjºÕlé‚∫Põ€1Ÿˇ\0πãtCo∫=Mb„Ò™¸ ßÀπeÛ„˙÷ˇ\0Ó˙…˜ørH§|äÊŸπSaÒ	íD®±iΩ5?≠∫£kRßÉ_ £>≠\"jﬁ#?Õk\"Ív1í+^‘éI˘–â8iRfiXu#5s‹c≈}g,[ç©∞òç›[uèÖG0` ¬œRƒ}EHæu~\'Û˝k3‰Jñf#™ß(ÁMâ~;™\\öÊ\"4ÛÁKÔcØürë¨à{H‹Em qâªIÈÃRaÔû€ØºyR·dâOW¨m≠ÈÇ–∞˚7˝)«;|ÍNJR?v˙8Ã]◊˚óåü≈l$¬Cí÷[MÙ`≥]ÕÕO:[Ôµîrí>∂]4†BxwÎ˘äªu£<xèZV^ŒpmF‚Õo}}^que∑ßù6Q÷F∑≠Gﬂf÷cÂ¿~t@\n4\0taq[<≈„*=A˛h¢0y§ﬁWpÖ0vQwqª“ã∂Û‹πé5•@ï˛5∞m«≤j?§·^º]WÙ·Qƒ’n¥áœ°EÕåfﬁ˙ä(I)\0!Æ-÷æø*≤Ò°áSÊÁœ∫¨XÀ[v”˜•≥o‹oV~ÿÌ)£Fƒvü√¸—ñw…{œÓi2a@√_].ﬁµ<ÆmÜ≤<Äo,€óÛ®◊„fkÿÎ«ª<8ïÕ¥Î‹PÉm∫æ§ÏqfóMEE2L•ÏW÷≥≥Ì]…*ã⁄cMè˙JR çÚ§)†©å¨qÉëBé¸ﬁ•Ñ¶hegoïè∏T•[2GˆhyÅ«ªMõ[0–Í=‘ìGt>Z[›RM™ √≠%ÆHﬁi±\"∆”jÓ;Mz ;ˆ≈K~÷A≤âTqm)ÿcõÈ)ñ”7‹˘>Ó—9∞îXz”ßÑ’ñïN˚‘´  ç˜€Ö¸˙#¡a§7ÑÊvSÌr´ûÏ_) 8÷#πƒ¿ˇ\0Èè,X∆±›õ≈¸“Õ9a¬B´hÈ∞€;nØ®}òÊ9vä5oÌ¨ ï…∆…vî_p·BB:ßèu?Y¯G˚–⁄~CÄ≠¨}dm9◊÷!√Ï¶m6âÏüƒ)∞3†ëSr…√–Ú≠ã0áZLΩïœ:Ypò8¢ŒΩKı•o2xSb1ô⁄¥‘Íw˙∆≥Ì/áπ‹o◊>liüüE’à°#õt=IWÄ‚(`p∞«em!ﬁ\\ÛËå\"*ùäË4∫$âàD∂µë≈èsë≤gÕ ∂Z;≠F8∆±{^.tèáƒ5ôA∂K’é1Ò;Xö !H€Å≠”Y/≈k?Ù„–zQxéçØF…˙¿vO.Ë“˚}ï˝Ë/“îr[{èK7-ièd≠X˜dnF¶É√!¯ˇ\0Û•«·?+ïÕg<j˝›áUnïãƒ *K6*(r5÷=Qø“¥Óÿ)<Kê“∑1~å<_åö≈Kc#lûUR?ZŸ∞À›„ìÓ••Ú”†π˛ú%ΩÙ·õ!mœk⁄≥¶\"6∑‚Ôúì˚˛îÁíö«ASΩÑøg2˛µ\'•bìÅóÂﬁ›ÎÜ˝)øï?˘Áﬁ“FÏ´zV÷WR®:∂ˆç;Œø√ˇƒ\0(\0\0\0\0\0\0\0!1AQa@qÅë±¡°—·ÄÒˇ⁄\0\0?!ˇ\0ã»!1~1∂CójË-Åø<bqZ‰UBÄ≠a‘Çˇ\0IÅ∑Ih]CC·Ÿü4	:†√πîéñA\\È~ëÛÄ…BtmüÉY‰i˘\n6 † ´_§ekÏŸÚ√Æ≥dÅ⁄	ƒVâP∆—Ib	Kl{º+S:¨u/J∫¿áΩå-n%Ωé”^ÒMU\\GíQáPB sﬂ˘∫2< ü–ÿŸå)Å‡€ÿ|—ŒS–Hø–˛† †£]=K*Á“ éÅ<q‘ﬁ”Éw\" 7ÖmF‹…’üL@`ò—Aw\0ßò){`= 6rP@ë ØﬂÉ¿W2|ÚÑEµ‹mc7B–)¥Æó‹çC2Ú∏˜ÇW%\n`˜/Œ€ˇ\0%PüòﬁDæˆ=sSz@zÅ¿Ñ%√¿Iàê£bÔlÙ1=»H^À˚74;¿’xéò¿D’g±ó•áÓ\'Õ|W∏Ûö¢•q0á%Åü≥Ùd6_Ç@–ƒÖ3ˆﬁbIÇ^’1H“ß6q#VÒ˚Åv=ÏLÎ0”´è9†»>DãGƒM$kRÛ≤\"`]\\√+Ñı˜1® DW∂_–\'é““-»\' 1Í÷∏‰ÖÉxæNÈe¡Î≤ÎÛπ·˝@\nß¬rfä§(G2à¿#f∞∑U|—ñkf@‹Az∑#≠ó3§h¢åë´π]`DÈÛ‹t∑¡ÀÅ§≠¸0°Ùñ≤ôÄúH¶Œéú `πTkAB9#Ö;:%TÔ1Ísí\nàŸ,ö¡Tı^ÏBπZÕ ≤≠Ç‡#U∏g/S∞hÑdZ\0t¸ÑÅF´ZÚ˜L)ç—ÿRæ˙6„ ‘êÛn»/•ºµ— é∞®ˇ\0∏ñz»õrÇy!ÅøR	˙ jKàxù,›=≠ÿfÛ(C\nOπ=\"∫{`Ä⁄É√UœŸŒGøÒÉ°äLâCR:(¯—vJ!–xBínO\0ˆ§Ø˝ˆ\nÕﬂ¥e—?ˇ\0é/òîDTFÊyDÑÏtêcúπt)\'ôFO@®·oN-\0&;Q£A˝ÑçPAO˙XNT_!YØ–Ó4‰ó±¡¥,ﬂ†4Ö4”H{y¯0Ÿëé\'.ªL¬	®4¯ÆNÖ\n≠4∫®»îæjzëÑçÀïø\\(ø‹ Çàèç™¶v<\0ÖŒÔÉ\0!À¸3P8ùQ¥\\p.DØäó˘â»ï∆‡ãÇáÅ@X$sÒCÔâs·p‘t•`î}Do‘ˇ\03Ø…ïF˙cˇ\0\0,a®ì◊ÜŸ‹∆·—l!4∏æê7|Li¬ïXíπ>GA£~øO…»Á˝S\n„Æb¶WÿÇœHF√5Z@ÜÓ?&›ˇ\0§‰˚Æñ\'TfJ™fä¶ï<¯rh˘ËkÍõAòm‹ˆ[Ë∫Ù9ÉIô·¬¨§f%ì‘&Ò7Ã}B9ÒyÙH˙{Üß†£Ù‚‹DÚ\'R	ü_3ã•òTˆ\\àtYü Nüßˇ⁄\0\0\0\0\0\0Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Û<Ûœ<Ûœ<Ûœ,!M<Ûœ<Ûœ<ÛåM<Ûœ<Ûœ<£@<”œ<Ûœ<ÛŒ1ƒ(3œ<Ûœ<Û¡S Sœ<Ûœ<Ûœ—<Ûœ<Ûœ<ÛÇ\0Aœ<Ûœ<Ûœ<—(Ûœ<Ûœ<Û»,Ã<Ûœ<Ûœ<Û∆<2=¸Ûœ<Ûœ<Úè<JØ<Ûœ<Ûœ<ç,Ûœ<Ûœ<Ûœ< <Ûœ<Ûœ<Ûœ,cœ<Ûœ<Ûœ<ÛœÛœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ<Ûœ?ˇƒ\0\0	\0\0\0\0\0\0\0\0\0\0\0\0!0A`apq±ˇ⁄\0?ﬁò‚.î‡!/ÖŸbŒ}›s˜ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\001`pˇ⁄\0?ˆíŸK3BòÔøˇƒ\0(\0\0\0\0\0\0!1AQa@qÅë°±¡—ÒÄ·ˇ⁄\0\0?ˇ\0≈Á§$ÍuìÄ»;<∞y´tàÔO∏|=XKb5Kˇ\0∆{÷8xÇÁ›≠>È‡t\'∆OAê]∫aŒûBd~Ü}*Ê÷«TÁÍ°œ1‡¶G (≥â{Ëü_Ï⁄,‹˝–#	J[ûc!Äèâ°Tî∫ﬂΩœ#Cç˝ﬂÙ©∫%|Õ\nÕ∑ñ¯©CDôtÒ0Û⁄ÜLæ3oŸ«¯È∆$~®	∑•bÌ(ßKãê/níÅï¸ äS/∏EZ?‘¥Ôø(˚äDäÕÏ {o\nëAS∏,√≠ç©î ¡è¸¨∏Ã–ÿÎéR≠ë≥§äÈ∆\"Eüuıgòææ1	˛e´/°ˇ\03L…Å¯vÉªbﬂÔW\0Âoz?urÏ-9…†#3≤£ƒè/FE¿⁄Ú–Xﬂ“RI5\\¶ÔsÚ6ÙÛIÕO≤†÷O‡èÓôë;0)È(≠àˆäπ6 ºJ4®ÖÒÉƒ˚¸Q!4ËIìD¥|û&†∏u\\6´#PêÚ´T˜c˛n+RLÖ˝#Rùﬁˇ\0ûµ≤kåwü›NÀ∫/ÛßÊì&ÓUÆ_â{ ø›Ë]òC∫ÀÒ˙£!`ú\\ïñ≥Ê-ﬁ”u(´œ@f“2P£•ÇV±GÃy´Êî‘§7Ÿ—©¢lÖ‚ˇ\0IMõ3»îŒ?ñﬁMÓ•…<8∑ıV«#pg’’∑∆NñƒßÈ¶B]ß^\nŒ«˛ﬂ«∫ZQå:G£Â‚˜/p®T·—…q!•*âQ3WaSSb…7\0›1@LM◊ëòıVOâ%ä`é6≈C-jRËÓ˙ÚÔ5îJîEŒR7çSÇÆCëdÇ R6Ã-∂îc)D≠19÷º≠◊ê•µ/‰⁄˙<P£íÚzN›∫0îëç™?ñ\0√¡è	ìÕ\'d≠ëD¯‘˚Í°Rﬂ&œ∞%]]d°∏ ùÍ[ä;\\Óˇ\0»Æ’Uò2\0h¡ cCõ˚äl%):ˆ≠:$f	π±µ,ÈÆ6:+<.ˆ¥_2¶Â3æÚ∆÷˙h°ˆ∫y˜“ê—∑ºgáƒ;PÛÅ®@œc≥øƒòÜ[Y„ê}T•%zcÌ§Ç4œI˝RÜoCˆèæëÄ0ó(»∞á‡¡d‰≈1(¢Ó€ì°ãÇ<õGêÜ•ı/Jz‰Ωâ áaí˙Tóó-‚≥bBœÄ˜Q$<âX,ùåEB&Z÷≥“ﬂPx(3Aìä3	fúTãã<RfB\0…ŒG|<™rÆ\0K1∂Öl“)å«JHKÇó≥{(éhƒhªÆcH“nÌﬁù%˚˜§rC˜#”?+MLcrY[9£ı2öV$ESF“‰LÊŸ©mïÚâ7@ÆÉYÛÅX`˝ZëXDjÄKQI—≈¸ªX…û,∏\nJ´ó¶ Å©∞“z©•º#`ˇ\0•ûhY0[z!f™í«bf-?\nrB#îó1ﬁõ´ %]ﬁõT*v\\¯¨v†SΩ›ó€Iö|—‚-À&ñ∞pπ\0≈Á1SòŒ±lß±–§R≈õkáæ—ö¢\\ìÿùY⁄ôM”º\na·È†∫QVÄÇÙÌHéﬁ‘åA•™ƒÇ≥¿—•®MÃMrX±íiêdH-≈◊Y2^‘¬p/Í¨ÿf◊Lµ˛:z*œè◊¡`ö(Ç·d9?u{≤2ˇ\0≥˚∑D àCD††“’„wÍÆXn√C¡ƒ◊Ü]	5$®…äãYëõêó≥;—7ùj—”8/§Ö A7µNQÛ¢û¡Y)§Y4t»∞«S£4qÜ;0MòäÜNÇ3∏D©B,ÜÀƒcäµ˜j¡[≥x•Gnx≈\0e%ÖﬁYG7¬%&6ãÍûuo°x©}Ãûﬁ˛hæµ38Jxéß$«Á◊œÈ9hïºû£Ó*ÕTìíb=înH]øÕ˚£Ïªóøth∞·⁄û¿f)È?Áåî0L¿}Øê_0ãÚ–„í/Â≠£√Ä`TÄ≤èõØKï¥v?œœq‘	˝‰*4É‘ NçÎÇ`‹«Q9¢nñ‹Ër”h,`È°˘ÙnΩÏl|é)∂O≈GLÚ/€3,Fò®3õ-††kí6t˜∂Ω\"¸™Œ3?≤O¶î[‡¢∫æÉI£7Ê*˙Ë5øi∆¥Ã¶ÔN[é_EItÚ_å‰˛MãLü5	ÍÁŸ$·\'‰§õôG´≤Îë?∂Í‡≈L˝)Oˇ\0∞œˇ\0*ÁÃπÍÁ∆n/—∞“†ÿﬁÎb⁄KRúµ›2ıãîëÇqˇ\0Ö?ˇŸ                                                                                                                                                                                           ","image/jpeg");





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

INSERT INTO tbl_man_vehiculos VALUES("1","1","PICKUP","5","MAN-1234","NISSAN","FRONTIER","AZUL","ASIGNADO","LUIS","2017-04-22","JESCOTO","2017-10-17","0");
INSERT INTO tbl_man_vehiculos VALUES("2","2","PICKUP","5","RJ-45","NISSAN","FRONTIER","ROJO","ASIGNADO","LUIS","2017-04-22","","","78565");
INSERT INTO tbl_man_vehiculos VALUES("3","3","PICKUP","5","LRO-1234","NISSAN","FRONTIER","ROJO","DISPONIBLE","LUIS","2017-04-22","LRAMIREZ","2017-11-05","333333");
INSERT INTO tbl_man_vehiculos VALUES("4","4","TURISMO","53","1234","TOYOTA","TOYOTA ","AZUL","DISPONIBLE","ADMIN","2017-10-10","LRAMIREZ","2017-11-05","999999");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_roles_objetos VALUES("1","1","1","1","1","1","A","ADMIN","2017-04-07","ADMIN","2017");
INSERT INTO tbl_roles_objetos VALUES("2","1","2","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("3","1","3","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("4","1","4","1","1","1","A","ADMIN","2017-04-07","LUIS","2017");
INSERT INTO tbl_roles_objetos VALUES("5","1","5","1","1","1","A","ADMIN","2017-04-07","","");
INSERT INTO tbl_roles_objetos VALUES("6","1","7","1","1","1","A","JESCOTO","2017-11-05","","");
INSERT INTO tbl_roles_objetos VALUES("7","1","6","1","1","1","A","LUIS","2017-11-05","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO tbl_servicios_generales VALUES("1","1","6","2017-10-26","2017-10-28","YORO  EL PROGRESO","2017-10-26","LUIS","CANCELADO","26102017281020171","");
INSERT INTO tbl_servicios_generales VALUES("2","2","6","2017-10-26","2017-10-28","YORO  EL PROGRESO","2017-10-26","LUIS","APR","26102017281020171","");
INSERT INTO tbl_servicios_generales VALUES("3","3","6","2017-10-26","2017-10-28","VALLE AMAPALA","2017-10-26","LUIS","DGL","26102017281020171","");
INSERT INTO tbl_servicios_generales VALUES("4","4","6","2017-10-28","2017-10-30","YORO  EL PROGRESO","2017-10-26","LUIS","CANCELADO","28102017301020171","");
INSERT INTO tbl_servicios_generales VALUES("5","5","6","2017-10-27","2017-10-31","SANTA BARBARA SANTA BARBARA","2017-10-26","LUIS","CANCELADO","27102017311020171","");
INSERT INTO tbl_servicios_generales VALUES("6","6","6","2017-10-27","2017-10-28","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-10-26","LUIS","CANCELADO","27102017281020171","LLLLLLLLLLLLLLLLLLLL");
INSERT INTO tbl_servicios_generales VALUES("7","7","7","2017-10-26","2017-10-28","VALLE AMAPALA","2017-10-26","ADMIN","APR","26102017281020171","");
INSERT INTO tbl_servicios_generales VALUES("8","9","8","2017-11-05","2017-11-05","CORTES SAN PEDRO SULA","2017-11-05","LRAMIREZ","CANCELADO","5112017051120171","NO");
INSERT INTO tbl_servicios_generales VALUES("9","10","9","2017-11-06","2017-11-10","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","6112017101120171","NOOO");
INSERT INTO tbl_servicios_generales VALUES("10","12","5","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("11","13","5","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("12","8","5","2017-11-07","2017-11-11","OLANCHO JUTICALPA","2017-11-05","LRAMIREZ","APR","9112017111120171","PPPPPPPPPPPPPPP");
INSERT INTO tbl_servicios_generales VALUES("13","6","6","2017-11-11","2017-11-08","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-05","LRAMIREZ","CANCELADO","27102017281020171","LLLLLLLLLLLLLLLLLLLL");
INSERT INTO tbl_servicios_generales VALUES("14","11","6","2017-11-10","2017-11-05","CHOLUTECA CHOLUTECA","2017-11-05","LRAMIREZ","CANCELADO","5112017171120171","MMMMMMMMMMMM");
INSERT INTO tbl_servicios_generales VALUES("15","12","5","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("16","13","5","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("17","6","46","2017-11-05","2017-11-11","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-05","LRAMIREZ","CANCELADO","27102017281020171","LLLLLLLLLLLLLLLLLLLL");
INSERT INTO tbl_servicios_generales VALUES("18","8","48","2017-11-09","2017-11-11","OLANCHO JUTICALPA","2017-11-05","LRAMIREZ","CANCELADO","9112017111120171","PPPPPPPPPPPPPPP");
INSERT INTO tbl_servicios_generales VALUES("19","6","46","2017-11-06","2017-11-10","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-05","LRAMIREZ","CANCELADO","27102017281020171","LLLLLLLLLLLLLLLLLLLL");
INSERT INTO tbl_servicios_generales VALUES("20","8","4","2017-11-09","2017-11-11","OLANCHO JUTICALPA","2017-11-05","LRAMIREZ","CANCELADO","9112017111120171","PPPPPPPPPPPPPPP");
INSERT INTO tbl_servicios_generales VALUES("21","12","46","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("22","13","46","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("23","8","44","2017-11-09","2017-11-11","OLANCHO JUTICALPA","2017-11-05","LRAMIREZ","SERVIGE","9112017111120171","");
INSERT INTO tbl_servicios_generales VALUES("24","11","4","2017-11-05","2017-11-17","CHOLUTECA CHOLUTECA","2017-11-05","LRAMIREZ","CANCELADO","5112017171120171","NNNN");
INSERT INTO tbl_servicios_generales VALUES("25","12","6","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("26","13","6","2017-11-11","2017-11-12","OLANCHO CATACAMAS","2017-11-05","LRAMIREZ","CANCELADO","11112017121120171","DDDDDDDDD");
INSERT INTO tbl_servicios_generales VALUES("27","15","5","2017-11-06","2017-11-11","GRACIAS A DIOS PUERTO LEMPIRA","2017-11-05","LRAMIREZ","CANCELADO","6112017111120171","FFFFFFFFFFFFFFFFFFF");
INSERT INTO tbl_servicios_generales VALUES("28","16","5","2017-11-06","2017-11-11","GRACIAS A DIOS PUERTO LEMPIRA","2017-11-05","LRAMIREZ","CANCELADO","6112017111120171","FFFFFFFFFFFFFFFFFFF");
INSERT INTO tbl_servicios_generales VALUES("29","18","4","2017-11-06","2017-11-11","YORO  EL PROGRESO","2017-11-05","LRAMIREZ","CANCELADO","6112017111120171","FFFFFFFFFFFFFFFFFFF");
INSERT INTO tbl_servicios_generales VALUES("30","19","3","2017-11-06","2017-11-11","YORO  OLANCHITO","2017-11-05","LRAMIREZ","CANCELADO","6112017111120171","FFFFFFFFFFFFFFFFFFF");
INSERT INTO tbl_servicios_generales VALUES("31","14","14","2017-11-06","2017-11-07","GRACIAS A DIOS PUERTO LEMPIRA","2017-11-05","LRAMIREZ","CANCELADO","6112017071120171","MALO");
INSERT INTO tbl_servicios_generales VALUES("32","20","26","2017-11-13","2017-11-15","YORO  EL PROGRESO","2017-11-05","LRAMIREZ","CANCELADO","13112017151120171","SE ASIGNO A OTRA GIRA ");
INSERT INTO tbl_servicios_generales VALUES("33","21","26","2017-11-13","2017-11-15","YORO  EL PROGRESO","2017-11-05","LRAMIREZ","SERVIGE","13112017151120171","SE ASIGNO A OTRA GIRA ");
INSERT INTO tbl_servicios_generales VALUES("34","14","5","2017-11-24","2017-11-07","GRACIAS A DIOS PUERTO LEMPIRA","2017-11-05","LUIS","SERVIGE","6112017071120171","");
INSERT INTO tbl_servicios_generales VALUES("35","22","28","2017-11-05","2017-11-06","LEMPIRA GRACIAS","2017-11-05","LRAMIREZ","SERVIGE","5112017061120171","");
INSERT INTO tbl_servicios_generales VALUES("36","20","1","2017-11-13","2017-11-15","YORO  EL PROGRESO","2017-11-05","ADMIN","SERVIGE","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("37","21","1","2017-11-13","2017-11-15","YORO  EL PROGRESO","2017-11-05","ADMIN","SERVIGE","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("38","23","1","2017-11-13","2017-11-15","SANTA BARBARA SANTA BARBARA","2017-11-05","ADMIN","APR","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("39","24","1","2017-11-13","2017-11-15","VALLE AMAPALA","2017-11-05","ADMIN","SERVIGE","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("40","25","1","2017-11-13","2017-11-15","YORO  EL PROGRESO","2017-11-05","ADMIN","APR","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("41","26","2","2017-11-17","2017-11-15","YORO  EL PROGRESO","2017-11-05","BIZCOA","SERVIGE","13112017151120171","");
INSERT INTO tbl_servicios_generales VALUES("42","27","2","2017-11-17","2017-11-15","YORO  EL PROGRESO","2017-11-05","BIZCOA","SERVIGE","13112017151120171","");





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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO tbl_unidad_solicitante VALUES("1","1","8","2017-10-26","2017-10-28","YORO  EL PROGRESO","ADFG","20.00","2375.00","4750.00","CANCELADO","000001","26102017281020171","2017-10-26","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("2","1","2","2017-10-26","2017-10-28","YORO  EL PROGRESO","ASDASD","20.00","2375.00","4750.00","APR","000002","26102017281020171","2017-10-26","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("3","1","8","2017-10-26","2017-10-28","VALLE AMAPALA","SDFSDF","20.00","2375.00","4750.00","DGL","000003","26102017281020171","2017-10-26","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("4","1","8","2017-10-28","2017-10-30","YORO  EL PROGRESO","SDF","2.00","2375.00","4750.00","CANCELADO","000004","28102017301020171","2017-10-26","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("5","1","8","2017-10-27","2017-10-31","SANTA BARBARA SANTA BARBARA","ASD","4.00","2375.00","9785.00","CANCELADO","000005","27102017311020171","2017-10-26","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("6","1","8","2017-10-27","2017-10-28","OCOTEPEQUE NUEVA OCOTEPEQUE","SEDRFTGYHU","1.12","2375.00","2660.00","CANCELADO","000006","27102017281020171","2017-10-26","LUIS","LLLLLLLLLLLLLLLLLLLL");
INSERT INTO tbl_unidad_solicitante VALUES("7","1","27","2017-10-26","2017-10-28","VALLE AMAPALA","JHGF","2.00","2375.00","4750.00","APR","000007","26102017281020171","2017-10-26","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("8","1","11","2017-11-09","2017-11-11","OLANCHO JUTICALPA","INSPECCION \n","2.00","2375.00","4750.00","APR","000008","9112017111120171","2017-11-05","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("9","1","34","2017-11-05","2017-11-05","CORTES SAN PEDRO SULA","INSPECCION ","0.12","1125.00","135.00","CANCELADO","000009","5112017051120171","2017-11-05","LRAMIREZ","NO");
INSERT INTO tbl_unidad_solicitante VALUES("10","1","32","2017-11-06","2017-11-10","OLANCHO CATACAMAS","KKKK","4.00","2375.00","9500.00","CANCELADO","000010","6112017101120171","2017-11-05","LRAMIREZ","NOOO");
INSERT INTO tbl_unidad_solicitante VALUES("11","1","9","2017-11-05","2017-11-17","CHOLUTECA CHOLUTECA","INSPECCION ","12.00","1750.00","21000.00","CANCELADO","000011","5112017171120171","2017-11-05","JUANCITO","NNNN");
INSERT INTO tbl_unidad_solicitante VALUES("12","1","30","2017-11-11","2017-11-12","OLANCHO CATACAMAS","INSECCION\n","1.00","2375.00","2375.00","CANCELADO","000012","11112017121120171","2017-11-05","LRAMIREZ","DDDDDDDDD");
INSERT INTO tbl_unidad_solicitante VALUES("13","1","31","2017-11-11","2017-11-12","OLANCHO CATACAMAS","INSPECCION","1.00","2375.00","2375.00","CANCELADO","000013","11112017121120171","2017-11-05","LRAMIREZ","SE MURIO ");
INSERT INTO tbl_unidad_solicitante VALUES("14","1","29","2017-11-06","2017-11-07","GRACIAS A DIOS PUERTO LEMPIRA","INSPECCION","1.00","2063.50","2064.00","CANCELADO","000014","6112017071120171","2017-11-05","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("15","1","31","2017-11-06","2017-11-11","GRACIAS A DIOS PUERTO LEMPIRA","INSPE","5.00","2375.00","11875.00","CANCELADO","000015","6112017111120171","2017-11-05","LRAMIREZ","SE MURIO ");
INSERT INTO tbl_unidad_solicitante VALUES("16","1","31","2017-11-06","2017-11-11","GRACIAS A DIOS PUERTO LEMPIRA","INSPE","5.00","2375.00","11875.00","CANCELADO","000016","6112017111120171","2017-11-05","LRAMIREZ","SE MURIO ");
INSERT INTO tbl_unidad_solicitante VALUES("17","1","6","2017-11-07","2017-11-11","YORO  EL PROGRESO","REVISION","4.00","1437.50","5752.00","CANCELADO","000017","7112017111120171","2017-11-05","LRAMIREZ","SE ENFERMO");
INSERT INTO tbl_unidad_solicitante VALUES("18","1","6","2017-11-06","2017-11-11","YORO  EL PROGRESO","REVISION","5.00","1437.50","7190.00","CANCELADO","000018","6112017111120171","2017-11-05","LRAMIREZ","SE ENFERMO");
INSERT INTO tbl_unidad_solicitante VALUES("19","1","6","2017-11-06","2017-11-11","YORO  OLANCHITO","REVISION","5.00","1437.50","7190.00","CANCELADO","000019","6112017111120171","2017-11-05","LRAMIREZ","SE ENFERMO");
INSERT INTO tbl_unidad_solicitante VALUES("20","1","32","2017-11-13","2017-11-15","YORO  EL PROGRESO","INS","2.00","2375.00","4750.00","SERVIGE","000020","13112017151120171","2017-11-05","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("21","1","28","2017-11-13","2017-11-15","YORO  EL PROGRESO","INS","2.00","2375.00","4750.00","SERVIGE","000021","13112017151120171","2017-11-05","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("22","1","34","2017-11-05","2017-11-06","LEMPIRA GRACIAS","INS","1.00","1125.00","1125.00","SERVIGE","000022","5112017061120171","2017-11-05","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("23","1","1","2017-11-13","2017-11-15","SANTA BARBARA SANTA BARBARA","QWERTY","2.00","1437.50","2876.00","APR","000023","13112017151120171","2017-11-05","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("24","1","3","2017-11-13","2017-11-15","VALLE AMAPALA","QWE","2.00","2375.00","4750.00","SERVIGE","000024","13112017151120171","2017-11-05","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("25","1","6","2017-11-13","2017-11-15","YORO  EL PROGRESO","QWERTY","2.00","1437.50","2876.00","APR","000025","13112017151120171","2017-11-05","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("26","1","30","2017-11-13","2017-11-15","YORO  EL PROGRESO","DFFF","2.00","2375.00","4750.00","SERVIGE","000026","13112017151120171","2017-11-05","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("27","1","8","2017-11-13","2017-11-15","YORO  EL PROGRESO","WE","2.00","2375.00","4750.00","SERVIGE","000027","13112017151120171","2017-11-05","LUIS","");
INSERT INTO tbl_unidad_solicitante VALUES("28","1","5","2017-11-05","2017-11-05","SANTA BARBARA SANTA BARBARA","HOLA","0.15","1750.00","262.50","UNISOL","000028","5112017051120171","2017-11-05","BIZCOA","");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_apro_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) where (`tbl_cate_zonas`.`id_categoria_fk` = `tbl_cate`.`id_categoria`);

INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","1","2017-10-26","2017-10-28","YORO  EL PROGRESO","CANCELADO","20.00","2375.00","4750.00","000001","26102017281020171");
INSERT INTO v_apro_solicitud VALUES("LUIS ORDONEZ","2","12345678","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","2","2017-10-26","2017-10-28","YORO  EL PROGRESO","APR","20.00","2375.00","4750.00","000002","26102017281020171");
INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","3","2017-10-26","2017-10-28","VALLE AMAPALA","DGL","20.00","2375.00","4750.00","000003","26102017281020171");
INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","4","2017-10-28","2017-10-30","YORO  EL PROGRESO","CANCELADO","2.00","2375.00","4750.00","000004","28102017301020171");
INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","5","2017-10-27","2017-10-31","SANTA BARBARA SANTA BARBARA","CANCELADO","4.00","2375.00","9785.00","000005","27102017311020171");
INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","6","2017-10-27","2017-10-28","OCOTEPEQUE NUEVA OCOTEPEQUE","CANCELADO","1.12","2375.00","2660.00","000006","27102017281020171");
INSERT INTO v_apro_solicitud VALUES("SAID ROJAS","11","23456","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","1","I","8","2017-11-09","2017-11-11","OLANCHO JUTICALPA","APR","2.00","2375.00","4750.00","000008","9112017111120171");
INSERT INTO v_apro_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","1","I","24","2017-11-13","2017-11-15","VALLE AMAPALA","SERVIGE","2.00","2375.00","4750.00","000024","13112017151120171");
INSERT INTO v_apro_solicitud VALUES("JUAN BONILLA","8","5421542658541","1","ZONA 1","2375.00","2275.00","2","FISCALIZACION","1","I","27","2017-11-13","2017-11-15","YORO  EL PROGRESO","SERVIGE","2.00","2375.00","4750.00","000027","13112017151120171");
INSERT INTO v_apro_solicitud VALUES("PEDRO FUNEZ","9","987654321","1","ZONA 1","1750.00","1675.00","3","CATASTRAL","3","III","11","2017-11-05","2017-11-17","CHOLUTECA CHOLUTECA","CANCELADO","12.00","1750.00","21000.00","000011","5112017171120171");
INSERT INTO v_apro_solicitud VALUES("BRIAN IZCOA","5","35214523012401","1","ZONA 1","1750.00","1675.00","5","CONTABILIDAD","3","III","28","2017-11-05","2017-11-05","SANTA BARBARA SANTA BARBARA","UNISOL","0.15","1750.00","262.50","000028","5112017051120171");
INSERT INTO v_apro_solicitud VALUES("JOSE ESCOTO","6","5426854210324","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","17","2017-11-07","2017-11-11","YORO  EL PROGRESO","CANCELADO","4.00","1437.50","5752.00","000017","7112017111120171");
INSERT INTO v_apro_solicitud VALUES("JOSE ESCOTO","6","5426854210324","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","18","2017-11-06","2017-11-11","YORO  EL PROGRESO","CANCELADO","5.00","1437.50","7190.00","000018","6112017111120171");
INSERT INTO v_apro_solicitud VALUES("JOSE ESCOTO","6","5426854210324","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","19","2017-11-06","2017-11-11","YORO  OLANCHITO","CANCELADO","5.00","1437.50","7190.00","000019","6112017111120171");
INSERT INTO v_apro_solicitud VALUES("ANA VASQUEZ","1","524512456235","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","23","2017-11-13","2017-11-15","SANTA BARBARA SANTA BARBARA","APR","2.00","1437.50","2876.00","000023","13112017151120171");
INSERT INTO v_apro_solicitud VALUES("JOSE ESCOTO","6","5426854210324","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","25","2017-11-13","2017-11-15","YORO  EL PROGRESO","APR","2.00","1437.50","2876.00","000025","13112017151120171");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_desglose` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cargo` AS `cargo`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_zonas`.`nombre_zona` AS `nombre_zona`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`lugar_gira` AS `lgira`,`tbl_usoli`.`proposito` AS `pgira`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`estado` AS `estado`,`tbl_sgenerales`.`id_vehiculo_fk` AS `id_vehiculo`,`tbl_sgenerales`.`id_sgenerales` AS `id_sgenerales`,`tbl_apro`.`anticipo` AS `anticipo`,`tbl_apro`.`id_aprobacion` AS `id_aprobacion`,`tbl_apro`.`num_transaccion` AS `num_transaccion`,`tbl_apro`.`tipo_transaccion` AS `tipo_transaccion` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_servicios_generales` `tbl_sgenerales` on((`tbl_usoli`.`id_usoli` = `tbl_sgenerales`.`id_usoli_fk`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_aprobacion` `tbl_apro` on((`tbl_usoli`.`id_usoli` = `tbl_apro`.`id_usoli_fk`)));

INSERT INTO v_desglose VALUES("LUIS ORDONEZ","2","PROGRAMADOR SFSSDF SFSDF","I","1","ZONA 1","1","2","20.00","2375.00","4750.00","000002","YORO  EL PROGRESO","ASDASD","2017-10-26","2017-10-28","APR","6","2","5000","1","123","CHEQUE");
INSERT INTO v_desglose VALUES("LUIS ORDONEZ","2","PROGRAMADOR SFSSDF SFSDF","I","1","ZONA 1","1","2","20.00","2375.00","4750.00","000002","YORO  EL PROGRESO","ASDASD","2017-10-26","2017-10-28","APR","6","2","50000","2","23456","CHEQUE");
INSERT INTO v_desglose VALUES("LUIS ORDONEZ","2","PROGRAMADOR SFSSDF SFSDF","I","1","ZONA 1","1","2","20.00","2375.00","4750.00","000002","YORO  EL PROGRESO","ASDASD","2017-10-26","2017-10-28","APR","6","2","5000","3","234","DEPOSITO");
INSERT INTO v_desglose VALUES("LUIS ORDONEZ","2","PROGRAMADOR SFSSDF SFSDF","I","1","ZONA 1","1","2","20.00","2375.00","4750.00","000002","YORO  EL PROGRESO","ASDASD","2017-10-26","2017-10-28","APR","6","2","234234","4","2","DEPOSITO");
INSERT INTO v_desglose VALUES("JUAN BONILLA","8","PROGRAMADOR","I","1","ZONA 1","1","3","20.00","2375.00","4750.00","000003","VALLE AMAPALA","SDFSDF","2017-10-26","2017-10-28","DGL","6","3","4800","5","213","DEPOSITO");
INSERT INTO v_desglose VALUES("JUAN BONILLA","8","PROGRAMADOR","I","1","ZONA 1","1","3","20.00","2375.00","4750.00","000003","VALLE AMAPALA","SDFSDF","2017-10-26","2017-10-28","DGL","6","3","4800","6","34","DEPOSITO");
INSERT INTO v_desglose VALUES("JUAN BONILLA","8","PROGRAMADOR","I","1","ZONA 1","1","3","20.00","2375.00","4750.00","000003","VALLE AMAPALA","SDFSDF","2017-10-26","2017-10-28","DGL","6","3","4800","7","234","DEPOSITO");
INSERT INTO v_desglose VALUES("LUIS ORDONEZ","2","PROGRAMADOR SFSSDF SFSDF","I","1","ZONA 1","1","2","20.00","2375.00","4750.00","000002","YORO  EL PROGRESO","ASDASD","2017-10-26","2017-10-28","APR","6","2","4800","8","6789","DEPOSITO");
INSERT INTO v_desglose VALUES("SAID ROJAS","11","CONSERJE","I","1","ZONA 1","1","8","2.00","2375.00","4750.00","000008","OLANCHO JUTICALPA","INSPECCION \n","2017-11-09","2017-11-11","APR","5","12","23","10","566","DEPOSITO");
INSERT INTO v_desglose VALUES("SAID ROJAS","11","CONSERJE","I","1","ZONA 1","1","8","2.00","2375.00","4750.00","000008","OLANCHO JUTICALPA","INSPECCION \n","2017-11-09","2017-11-11","APR","48","18","23","10","566","DEPOSITO");
INSERT INTO v_desglose VALUES("SAID ROJAS","11","CONSERJE","I","1","ZONA 1","1","8","2.00","2375.00","4750.00","000008","OLANCHO JUTICALPA","INSPECCION \n","2017-11-09","2017-11-11","APR","4","20","23","10","566","DEPOSITO");
INSERT INTO v_desglose VALUES("SAID ROJAS","11","CONSERJE","I","1","ZONA 1","1","8","2.00","2375.00","4750.00","000008","OLANCHO JUTICALPA","INSPECCION \n","2017-11-09","2017-11-11","APR","44","23","23","10","566","DEPOSITO");
INSERT INTO v_desglose VALUES("ANA VASQUEZ","1","CONDUCTOR","IV","4","ZONA 1","1","23","2.00","1437.50","2876.00","000023","SANTA BARBARA SANTA BARBARA","QWERTY","2017-11-13","2017-11-15","APR","1","38","5000","12","2","DEPOSITO");
INSERT INTO v_desglose VALUES("JOSE ESCOTO","6","CONDUCTOR","IV","4","ZONA 1","1","25","2.00","1437.50","2876.00","000025","YORO  EL PROGRESO","QWERTY","2017-11-13","2017-11-15","APR","1","40","2500","13","22222","CHEQUE");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_empleados` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,(select if((unix_timestamp(now()) > unix_timestamp(`tbl_man_conductor`.`fecha_vencimiento`)),'VENCIDA','VIGENTE') from `tbl_man_conductor` where (`tbl_man_conductor`.`id_empleado_fk` = `tbl_emp`.`id_empleado`)) AS `estado_lic`,`tbl_emp`.`estado` AS `estado`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`reloj_marcador` AS `reloj`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`estado_gira` AS `estado_gira`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia` from ((`tbl_man_empleados` `tbl_emp` join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`)));

INSERT INTO v_empleados VALUES("LUIS ORDONEZ","","ACTIVO","2","12345678","0801-1995-05807","1234","PROGRAMADOR SFSSDF SFSDF","EN GIRA","I","1","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("LEYDY RAMIREZ","","ACTIVO","3","548754652125","0814-1986-00238","5383","AUDITOR","SERVIGE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JUAN BONILLA","","ACTIVO","8","5421542658541","0801-1995-05809","1","PROGRAMADOR","SERVIGE","I","1","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("SAID ROJAS","","ACTIVO","11","23456","4444-4444-44444","2342","CONSERJE","EN GIRA","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("PEDRO ZELAYA","","ACTIVO","17","23222222222222222222","6666-6666-66666","65465","CONDUCTOR","EN GIRA","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("KARLA GARCIA","","ACTIVO","18","0801198106359","0801-1981-06359","10527","GERENTE","SERVIGE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("GUILLERMO DOLORES","","ACTIVO","20","67890","1234-2134-12412","23412","DFGHJ","UNISOL","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("HAROLD BETANCOUR","","ACTIVO","21","09876543","9999-9999-99999","2000","CONDUCTOR","DISPONIBLE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("QUIMBERLIN MUNOZ","","ACTIVO","22","7777777777","7777-7777-77777","7777","CONDUCTOR","SERVIGE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JULIO REYES","","ACTIVO","4","6524587562124","0801-1987-16541","5754","CONDUCTOR","DISPONIBLE","II","2","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("JUANITO GARCIA","","ACTIVO","15","0258","0777-7777-77777","25","CONDUCTOR","DISPONIBLE","II","2","CATASTRAL","3");
INSERT INTO v_empleados VALUES("SONIASSSSSS MATUTE","","ACTIVO","16","0257","0888-8888-88888","3","OBRERO","DISPONIBLE","II","2","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("TATIANA BUQUE","","ACTIVO","19","98765","1213-2412-34123","1234","PRUEBAN","DISPONIBLE","II","2","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("LOUIS SDF","","ACTIVO","25","45534","0000-0000-00001","2345","DFD","DISPONIBLE","II","2","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("BRIAN IZCOA","","ACTIVO","5","35214523012401","0801-1994-00395","6377","ANALISTA","UNISOL","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("ADAN RAMIREZ","","ACTIVO","7","8457853045215","2222-2222-22222","4567","CONSERJE","DISPONIBLE","III","3","SECRETARIA LEGAL","10");
INSERT INTO v_empleados VALUES("PEDRO FUNEZ","","ACTIVO","9","987654321","5555-5555-55555","2","CATRASTOFICO","DISPONIBLE","III","3","CATASTRAL","3");
INSERT INTO v_empleados VALUES("CRISTIAN RIVERA","","ACTIVO","10","987654321","3333-3333-33333","9999","PROGRAMADOR","DISPONIBLE","III","3","INFORMATICA","6");
INSERT INTO v_empleados VALUES("MARTHA LOPEZ","","ACTIVO","12","1111-1111-1111-1111","1111-1111-11111","900","GERENTE DE RECURSOS HUMANOS","DISPONIBLE","III","3","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("LOURDES ORELLANA","","ACTIVO","14","123654798","0801-1993-01402","555","ASESORA","DISPONIBLE","III","3","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("KAREN PEREZ","","ACTIVO","23","1587","0000-0000-00000","110","CONDUCTOR","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("ANA VASQUEZ","VENCIDA","ACTIVO","1","524512456235","1709-1996-00602","1234","CONDUCTOR","EN GIRA","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JOSE ESCOTO","VIGENTE","ACTIVO","6","5426854210324","0801-2008-11111","5648","CONDUCTOR","EN GIRA","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("MARITZA FLORES","","INACTIVO","13","243234","8888-8888-88888","234","CONDUCTOR","DISPONIBLE","IV","4","CATASTRAL","3");
INSERT INTO v_empleados VALUES("WALTER CARCAMO","","ACTIVO","24","30145","0111-1111-11111","300","CONDUCTOR","SERVIGE","V","5","SERVICIOS GENERALES","1");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_traer_empleados` AS select `tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_emp`.`telefono` AS `telefono`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`nombre1` AS `nombre1`,`tbl_emp`.`nombre2` AS `nombre2`,`tbl_emp`.`apellido1` AS `apellido1`,`tbl_emp`.`apellido2` AS `apellido2`,`tbl_emp`.`reloj_marcador` AS `reloj_marcador`,`tbl_emp`.`estado_civil` AS `estado_civil`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`salario` AS `salario`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`estado` AS `estado`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_muni`.`municipio` AS `municipio`,`tbl_dire`.`id_municipio_fk` AS `id_municipio_fk`,`tbl_dire`.`direccion_detalle` AS `direccion` from ((((`tbl_man_empleados` `tbl_emp` join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_direcciones_empleados` `tbl_dire` on((`tbl_emp`.`id_empleado` = `tbl_dire`.`id_empleado_fk`))) join `tbl_man_municipios` `tbl_muni` on((`tbl_dire`.`id_municipio_fk` = `tbl_muni`.`id_municipio`)));

INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","1111-111","1709-1996-00602","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","VIUDO","CONDUCTOR","2000.00","524512456235","ACTIVO","IV","4","JUTIAPA","4","LA ARBELOA");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05807","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","12345678","ACTIVO","I","1","LA CEIBA","1","LA TRAVESIA");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","8862-4608","0814-1986-00238","3","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","CASADO","AUDITOR","10000.00","548754652125","ACTIVO","I","1","TEGUCIGALPA D.C","110","COL RESIDENCIAL PLAZA ");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","4444-4444","0801-1987-16541","4","JULIO","JOSUE","REYES","POSADAS","5754","default","CONDUCTOR","10000.00","6524587562124","ACTIVO","II","2","LA CEIBA","1"," LA PRADERA");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","5555-5555","0801-1994-00395","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","CASADO","ANALISTA","10000.00","35214523012401","ACTIVO","III","3","LA CEIBA","1","PRADOS UNIVERSITARION");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","6666-6666","0801-2008-11111","6","JOSE","RAMON","ESCOTO","FLORES","5648","SOLTERO","CONDUCTOR","10000.00","5426854210324","ACTIVO","IV","4","JUTIAPA","4","LOMAS DEL TONCONTIN");
INSERT INTO v_traer_empleados VALUES("SECRETARIA LEGAL","10","7777-7777","2222-2222-22222","7","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","CASADO","CONSERJE","9500.00","8457853045215","ACTIVO","III","3","LA CEIBA","1","ZAMBO CRECK");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05809","8","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","SOLTERO","PROGRAMADOR","9999.00","5421542658541","ACTIVO","I","1","TEGUCIGALPA D.C","110","LA KENNEDY");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","5555-5555","5555-5555-55555","9","PEDRO","ANTONIO","FUNEZ","SUNIGA","2","SOLTERO","CATRASTOFICO","10000.00","987654321","ACTIVO","III","3","LA CEIBA","1","SDFSDF");
INSERT INTO v_traer_empleados VALUES("INFORMATICA","6","2222-2222","3333-3333-33333","10","CRISTIAN","JOSUE","RIVERA","RAMIREZ","9999","SOLTERO","PROGRAMADOR","20000.00","987654321","ACTIVO","III","3","TEGUCIGALPA D.C","110","LA CANADA");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2323-4234","4444-4444-44444","11","SAID","JOSE","ROJAS","GONZALEZ","2342","DIVORCIADO","CONSERJE","345.00","23456","ACTIVO","I","1","JUTIAPA","4","ADASDASD");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","1111-1111","1111-1111-11111","12","MARTHA","CAROLINA","LOPEZ","GARCIA","900","DIVORCIADO","GERENTE DE RECURSOS HUMANOS","12000.00","1111-1111-1111-1111","ACTIVO","III","3","LA CEIBA","1","CUALQUEIR");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","2342-34","8888-8888-88888","13","MARITZA","IRIANA","FLORES","SALGADO","234","default","CONDUCTOR","0.00","243234","INACTIVO","IV","4","EL PORVENIR","2","CERCA DE OTRA CASA");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","9678-4094","0801-1993-01402","14","LOURDES","SUYAPA","ORELLANA","VILLAFRANCA","555","CASADO","ASESORA","0.00","123654798","ACTIVO","III","3","SAN FRANCISCO","6","111111111111111111");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","12345","0777-7777-77777","15","JUANITO","JAIME","GARCIA","GARCIA","25","SOLTERO","CONDUCTOR","20000.00","0258","ACTIVO","II","2","SANTA ROSA DE COPAN","40","RES DEL TABLON");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","369","0888-8888-88888","16","SONIASSSSSS","ALEJANDRA","MATUTE","CAMOTE","3","SOLTERO","OBRERO","60000.00","0257","ACTIVO","II","2","SAN ANTONIO","153","PRUEBAN");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","9999-9999","6666-6666-66666","17","PEDRO","ALBEIRO","ZELAYA","MARTINEZ","65465","SOLTERO","CONDUCTOR","2147483648.00","23222222222222222222","ACTIVO","I","1","LA CEIBA","1","DFGHJK");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","9966-0186","0801-1981-06359","18","KARLA","MELISA","GARCIA","PINEDA","10527","CASADO","GERENTE","30000.00","0801198106359","ACTIVO","I","1","LA CEIBA","1","PRUEBAC");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2321-3421","1213-2412-34123","19","TATIANA","ENRIQUETA","BUQUE","PRUEBAN","1234","SOLTERO","PRUEBAN","87654356.00","98765","ACTIVO","II","2","LA CEIBA","1","DFGHJK");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","5435-6754","1234-2134-12412","20","GUILLERMO","FRANCISCO","DOLORES","ZURDO","23412","SOLTERO","DFGHJ","678.00","67890","ACTIVO","I","1","LA CEIBA","1","ASDFGBN");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","PRUEBAC","9999-9999-99999","21","HAROLD","MAXIMO","BETANCOUR","CACIQUE","2000","SOLTERO","CONDUCTOR","12345.00","09876543","ACTIVO","I","1","LA CEIBA","1","SDFSDF");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","7777-7777","7777-7777-77777","22","QUIMBERLIN","VALENTINA","MUNOZ","RAMIREZ","7777","SOLTERO","CONDUCTOR","7777.00","7777777777","ACTIVO","I","1","ESPARTA","3","ASDFGHJK");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","2222","0000-0000-00000","23","KAREN","MARCELA","PEREZ","MENCIA","110","SOLTERO","CONDUCTOR","9500.00","1587","ACTIVO","III","3","TELA","7","SDFGHJ5");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","234","0111-1111-11111","24","WALTER","ANTONIO","CARCAMO","NU√±EZ","300","SOLTERO","CONDUCTOR","7500.00","30145","ACTIVO","V","5","SAN FRANCISCO","6","HGNGFDVSDC");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","34","0000-0000-00001","25","LOUIS","SDFSD","SDF","DFGFDF","2345","SOLTERO","DFD","345.00","45534","ACTIVO","II","2","LA CEIBA","1","SDFSDF");




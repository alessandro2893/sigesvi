

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
INSERT INTO tbl_bitacora VALUES("4","ACTUALIZAR","tbl_man_empleados","apellido2","POSADAS rs_por_a�ors_por_a�ors_por_a�ors_por_","POSADAS","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 19:14:05");
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
INSERT INTO tbl_bitacora VALUES("55","ACTUALIZAR","tbl_man_empleados","apellido1","CONDUC","MU�OZ","2373032_sigesvi","fdb16.runhosting.com","2017-11-05 20:06:26");
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
INSERT INTO tbl_man_empleados VALUES("24","5","1","WALTER","ANTONIO","CARCAMO","NUñEZ","300","0111-1111-11111","SOLTERO","CONDUCTOR","7500.00","234","30145","ACTIVO","JESCOTO","2017-10-21","","0000-00-00","SERVIGE","");
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

INSERT INTO tbl_man_usuarios VALUES("1","1","1","ADMIN","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","juan@hola.com","","A","OK","0","ADMIN","2017-03-14 00:00:00","ADMIN","2017-10-10 00:00:00","","0000-00-00 00:00:00","2017-12-31","����\0JFIF\0\0\0\0\0\0��\0�\0	( %!1!%)-1..384-7(-.7\n\n\n-% %/-+-+--/--.-------------+-------------------------��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0K\0\0\0\0!1AQa\"2Bq�#Rbr������$3Sc���4Cst���d������5��\0\0\0\0\0\0\0\0\0\0\0\0\0��\07\0\0\0\0\01!AQa\"2q������B��3#$4Rr��\0\0\0?\0���H%@1R@P t b�u t u;Ѐ��(@��u (�(@�\n\0�\nP@(�q\n�d��I�$H�H����� ếb�� 1�f��m��ʱ�M˦<�FH�m�.�.��.d\0��B8���B�N>y�SS��R{���#4zzz�{xy��!����ud���4��#a|�|+Uq��O]�\0C�L���6:��8��],���b:�f:�yA�:ʬ��\\����1�I��v�غ��dP�r��ը�In����ٞ���\0�@b�x�P��\0b�1@�\"�\0P*\0��X��&Q��:�@0*A*1@1R�y��]hA�4��H��R\n���=�yܠ��^y `�U�}�.���*�fj��MG��fތsN_*H��wf �T�����J��X�h���AB��OR�?�����>=q��m�5�G �\n�l���-$��fR�Ē��$Ea����A�5�a�>L��a��k\'6rs�=���S�x��E�{G}Q���N�]�t���֮��u<dBsϓ+{�z7���\\L�dî��T�fz� x��\0b�1B�\0�\0b�1BE��,P(H�@*�p��eI���@�H�%�p�;M�H9b�7������G5�q��I\n��J�jٿ�����E�?�[߄mxgKh���#�A�C�m#�g�m���\'S�����6�d����v\0nI$��\'�Z��%)����೪d�\0P��������\\�Z�m��k�X����J<Mu��jN��I��?�[�����\0{�u �A�# ���J9V<T�<P*@�@�\n\0�P\0�P�\0b��\0X�%x�RB����1B	PT��BwҤ�\0� ���c\"̗3a�䪝���O�W��ޡ䎗I�Uuy���M�¿������\0���X\0P�5\0wb<A�k\n}���-�ϕ��{�h��X7���ѯ�Uk�X6{�#/C�ˇE�GV*�\\x���1@�P(�\0b�X�\"�\0Tb����:@T��:�HP�Ԑs��#�R(Asس�IN����h����\\7�Q�)?4uL��cIZfY�q����C�|�Y��U��FI�v��m�5��\"RQ[����}h�d��0�Aa�1q�`����ۚ�sKӒ�ˏ�#����Gwo-��iC8���y*�2d�RA>W+Fȡu|���=�&��;�-N!\n��2�X`B�娎H��S<�&�~W�k����eч#3_�xT��I�@<t��?\0ƶ�����Mo�+�\0W�1������)-�K��V�F�@QT����m��Ǭ�\0WY�<�7]�_cS���:�x⺓F:\0�I@<P(�b�1P$X�(�*����*A	�T�rI8UEff>\n�	?*�m�����c�+pi�c��HA8V�\'T,y.�g>Y�W�Rƺ]����nխ��\n�T%R*H<o)�9�}�ٹt^�,ㅲ�do��/�-;�yv7�5�4>�¸�|]��8Jʿ�9��r��6�+pJ�Q���b���9�p�Mk���U�9���Y��:��T�-���p˕<��*ل/l�6�dD�U��C)��3=���fn�0ZX�rfrZI��C���J�b�\0��^c�m��ɭ�@���+[�$���9.��L�7R�X�q��,�����:�L�}ju�d�]�P�����t�K�ң���\0rI�μNq�\\��G�BS}1]�z��kY�?�cR1�QX����kWoS�S�����z�:��\0T�dr<���i�k�hx� 1PH�@�\"��_��@��_��ŧd8Lw羹:�%�q�[IƩ1�d�\nv�:����^�]=��z�ݚ>1�xm��X°�R1��!�FW�b�7��ȮsQ��*���~/��?��Z���Pv�����h�pˆpQ�F� ���9p��W���]��lّ��5Is-��&��X6�����I�S_J�rg~<eb�^(�)U��x:�bT�\\�<�AS��r�E�B��oR_�b<F�j�h��k+\\�����c\'�5��f]�A�j2u�C R9cN|XWu����ދ�һ_O�s�ߣ�No>�G�n1$?D��u�����%(�/U%����e-xT-����dmnX� ~\0\0+�����4K�/�a��x`N��GG0+��\\�#.�=�X�l!�4�Qo���IzAqFJ�տ~GٍIR|����m-���H���N����V@ύz�a�;���i�\0�ǭ�đZ��A�Rb�C�\0PO*�����B $�`:�F�[�Rm����yE��y�E��q�M�R�s��l[Ƹ�sS���J͢����r�u�=�wu�5i��9-��\'�\ng����J� �d����Gwl��>_���f����Wft�v���D���Wz>ї:��s�ZȮ��\'���lD���vqE5��^Kw�e��Y\n�ЀQ�9�����+;��uc[?ry���ƗN+dR\nb�U��*��?��]<�� �$�!G\0�T�i;�p3�O�|�\0�}F��S[ix�un4z=�f��vi�ֺm��ب�rc�L�fk��zW3��(�|Q��z��x�9W�J����L�%�n<9\"@���p×�Řtӏk5q�W���������������;~?�������(�\n�l+S;-�{��f^�Fk��2?G���D�21u\0��,��{C�g���{7�eY^��)j�u6g+��(HP�1�<Ԃ�_h�jAC�,���AģK5h?`U��s۟�U�\n���i.�$�.��sq�6u*`$��4���Ydj�Q��g��gO�Vߋ���=ʹ�-�W\0�A#iWe\0k��:�(鏩�u�gx�?/��~?_Ĺ5I�H���/�}Ip~�:��5Y-Ջ���N����x��Ҙ��{�C\\O�K��s\'�����ektV��◧���^4��.�=�����량$�$�Ԛ�YI�{�̈́b��G�e���d�܊ ZWa�nf<k6&��dӊ���d���X$:��7V�x��B�̝�J�?����q�����&�e���Kd�/T�~�=��>�->�tf�*@�@V��J�g�4t��d��d�(�ҕ>G@Ț��w��$���lt������.����$�;!#�%0Jj��I`:����;:������~�Z����<!n�\'�*��dx����t#��^p��v��}��_��\"������OŰ$S��r;ِ���~�8*�	9���U`o�yy�/�|��x������d-Y6�A�Oƌ�>���	+ȀsU��2j��C~��Ǩ���L�3�2���\0�Y�p9	cr��-Jk�x�+鍋�nqw��p�=�Y�AP@\"*	���H-d6���Vpʺ�E&��}�PGP�u�S�1�j���5�����V���O)�I�\\|O�`���n$���F��0W!��볦��׳^��6P��vR�;��Wp۽Ŕ��뀡~�4TylF�$`$��\"��D5St�d���5��aRi�En�.��m-������;���q(eW�\"8�Yr��A#sIJ�)U�J\\?�����{>����2p먢MM�o��(U�E��ڜ����!|8$���Rr �֢�[���i��Q^�$d\\��\n�q^(��h#<̩$v�b4�{��#Q\'V�\0\0I<�i�mM`�8êr�/�b<���j8\'haA�7�j���Yp����?�F:��Y7�[�����k��5[��{��>!�g��ƪry�N�Tu$�\09�U�D�]]ْRQ[���o����8H���l��1��l��q�_ꗛ��r����b�wJ��g�S�dcW�>��m�Iz\"/�e�1ݨ_\0�>�C�>E�\n��Z�\0C�O2���\n�)�\\�RK�W��tu�1�x�%_\"yH�e�>���)��f+h��i#?k셑-�MW�y{�eǽ`\\��A�t+X���w4�K����\'i1pu!���I�#c�G0A��F�)���S�n,�5��RR�bi�tE�w�\\��ݯ�#VO�1ι_h�j�^�=�o�|i�{���Y�c��	)*\0[KF�r�#{�c?�Fk�Q�ud9C��o��7��Wpn!�\'�:eG�us*J&1{��������Ǫ9V�˰���Z�.7�[�\0x�ɮ{}�������~�Ev�,�Ds!b�E�u[� ����Xs+�cVҺ��.S�k����P]2%�Y��S�� Rch��,ѫ��*)̍�Z��^�*�-k�M�ݤ����K����o�Sp�Z3)R�Ye�I��(S������$r9s�L�EaP�P�b���\\���q�@��?�DNHh��u������r�6�9^�}�f�ar�u�)�bt3uԼ��y�\"wdT��h�T+��H�p,+\0�`\0\0��Z���S~fS��X����-4��3��D�����U^���.\"�������Ϳ2���ΰ�d���y=4�٘~�pn�yl��1-<J2bc�M�hy��^��_@е��>�o�4y�-�q䧍�\0�AR29D�O�D��n��$s�D�$��Ky\\�q4j��g�x˕b<=s�B���w\n�zn�������a�m˞%�dGo*K+\"+�7c�.B����޹<�|�T��q����7��.�}�ݡ��X��p*�:�r������YMN~/��l{�o#Y\0B��IP\0P	�>����ج��gB#�p��o!$���Y����k�v��Y�ڒoȍ�.�ZR�;K)����{#�\n��h�5(�M���#������j�����{�!	Kpp򍋑�\"?���7�����hN����7Z~����o#e�8xa�BF�\0��p7���ovΙ$�ȿ��Y`{rJ��ђ��� ��֮���)�$�[�U\n6\0\0>\0`V9Iɶ�Kc�FĒ@�$��Mf�ǲ�m�䢻�����mnse��/!rAȊ?�7&�#5�AUձ?���u�D���vg>T4�\"�\n�d��`�����^�g�c��9c��<W�9��\n��jȯ��F�O�uˢO�>�iq���C� �T���୯�8��]�,R����J./f	W�5bG:�	���CI����fZ\"�6Q�����\'0N�Kq����]�=މ��%]���i�_y(b�%MJC!�?��FJKt�	E���Y�4��\"�z�wvWk��C\'�Q�U��O�tz,�	/Rӄ�}8<̑7�B��+V����\03c/����@P\0P\\k��!��e�v({�ZA&2����g�g�f��k�&;,U���Ow�w�.�	��<��@��(p�m$�`�[�7�j�������n0}���A�������t�j+vhRr{#������0�+$��uD��|�>CV׹��Y�i�V������:��\"�6\n@?�\\]�(�|��4B�4���ω�\\���`��\0�)\'�d��Y%�)$�f\'��@_K��uX��?����A��a�w�_��Dk��k���槚��>\'�+�4!P@\"(H��4$Tb�\'nG��U,5 ����w��s�,}�?�O��1�\\���t�Z��tnoZ�s���p����?/1\\�����n�`FA�5�i����6��m���f{�7�b�;�6�\\}�{x8����h��ʖ���Y��V�4�+E2$�A�C���=d�������swS*��G����_�r�\'��W#�G���<b\'�D��K�]3\"��C�A�ud98���8W%�r|���Mű24�7������AS�Wi��i��\0(+Ţ�Y%�؍7�C������Ee���.�-�[��&g�;9�� >��Cܪ�y���9\n�0#�����g71�Ke�_�8��W,Ͳ\"n�!���u�YUQ�b�8�].������f��89HT�8�B��?��t�T���n���p��P�}٫��2�������]z����/b�(ң\0V�Rr{�J�����f��b�2�q*�����=$q�}Q����=��\\�\\���4��r�;.|\nhaTP��Q@\n  +�q�����ovO$\n���U\0F����F��U,�FT�ԐyM��a��������d�N/th�5�K�\06��:����ю�|u>����cşT~VuX9j���F��ޘ��1\\��u��%��X���c[=�\0P=��� ��A��&zg�_�r>{��V�Ö�}��^�j�[I>������T�йe���٢fG�)��#,@<����6��4�0�٣���V!q+�G�Q���#V����t���5S]���u�$g������5Q^L���.�<�����FZѭ.��߉�yP%\'��{ma{c9\0���xd|n�C�n~��>ub�l��8�>�kﱂV���tF;�\"�,[D�0%{���׎z2��@܅rE{Ȓ�=vE���Ba7\'�ذ�������:�did�I.p֮z�+�\"�׷������/c1�b����$Y�a���f�C�U�.8�\'a����GȮ4�M���\0�P���(�:�/���s���wVWyHX�F��z���{ς~d�b���|�E��a`G3�e9!WT.9�x�џ�Gε7���3c	�=�y�f������&r����?��<����j8�b���?/������i�@\0xW>�ovf@\n��\\d�\"�@=��HܑG�4��yu8v��=wإ%�&�7.5A�1im݂5vb��I#{N���\0l+�Q\n`�����ٹH��� �\0��$j\0�H�\0�	@)�V,�� �zP�����νū%Hde���&����B�8Mvg���Rꉩ���b��A��א�<�Q���_?�t��Y���3��ʍ��ri�}�vt���y֒�:���xw�ֵ�\n��ޥ�/<�ƌ�~ʌ��Y)�V�W[��)t���p���D닉��\'��ePiO��z�U�Ap�ƞR��P��3��M�mi3v��O��@t#!_�p}��g\n�$�����ƈ2Ҥ�%í��k�c�rz>)n��rD}�/I���^e%�]�Ob���JKK��q����&�.}V�����J�]=�ټ~W��m(��=�9$�V�Y@JKp����Q�Gع�F��pB��U	�-�&]���Awiv��d�ˌn���H�\0|j��v�����l7����I� �HΙ\"�r�6�G�# �	�g-�	��[������.�uQ���8F:n@d�I�\'��4׋.����OCeE�kg�cZ������YD$e�&s�A�I&3��Q̷A���4��X�_Oݕ2rc\\[l���i�~��B���\"u8�N���1��ݜ~NL�������@��#Pz\0�@	)�U,� �P�گD�ƀ�\"J�1�T9G��:�Ȏ�_\'�M��3ꉪ�l\\���]3����U?�#_?�4�1,���ί&�ti�u��U����\0�����G��vw�Z�_��B�A���:K9��zN����u:���/�������G?�I�h�C+)�A �����hc���}��Iql�<�e{>���ƌ2c*O5j��\0�(\"��kz�wmݩ�ECK��]MNN��g8o�Y�k����	�eP��O΀��Ok���U/!$�͐���pHF���X+`��V42ju���?3�sp�诃�.�������q:d�g@D(����#mA�϶k�5*�P^J]Or������᮲�<E4���T̷���Y�$`)Ǭ=k)����|�@R�����A������w<��cCx����`V+�պ��=FN/tf�h!��o$V��\0���A*�c�++y$��r�z-��p��g����]�*1��s4�Iek���0��YȊ,��O6;��}?O��,6\\����˕��=�`S\0��\n�T4$��$���%8���B�����}[�k����ВUьr��H���\0���kN5y�M��t˪&��q��\0�e;�*=�{��x�c�Q�lğ�|�b����/m��� ���\\:�Sn���3I�9�Ox�d�x�Zʚ��Es��d���\'�Q���E�+�Y�g�����Vf$��]db��^��@S��\'i�٪���26��Y���T�\0P\0P��ӊ��Fs���v��9�\0���Z\0�\n�B[��Kw�%\n�$�JQ}!c�\\Ds`A�[�.�������j6=�7=q[sV:\0�(@\0F���\"j	�\"�0���B����	\nx^D\n��*A^*A�q,����]�L�.#U �]<�	�ʵ��;�;�ܢ������f,-��m\'|$�F�Pf�Ͼ�9���\0�4b��Kdm�o�5vw��Vٿ^�;�$\0P\0P\0P�ޡf����.�\'��\0��w����7�@ ����+x̳ʐļ�FUQ�4ϸ�\0l%�-v��g�`RY�۩����~���v=����Flk�������B��\0:\n�B\nh�ƚRr{�֤�@5 U\0F�TMA$M	@)�U-$T�HP����H8g�#u�~\"��$�6�{F/k1�\',�j�ϋG���Ω݅]��fZ�.u�}Ѫ��!���a�oj�\"�ģ�e�U���xn_�er�57����.�FPT�~r�de��󪅓agp%E�+ a�$B�����Ԑ{P\0P\0Pݠ��[w����2����6R0�J�Aƭ��h��v��īç�;)��So�Y#@L�H�7�N	���ظ���w�)��ή#�<��;�gy.���̅O�S����VڬJ��6j�ʶ�_oC����(P(\0�\n�F��\n�\n���$MA\"�0���B����	\nHT���E�V�>u$Ҁ	ʤ����s�.;�FL5�DsX�n��Z�쎕��ωw�/��~l��(���j�.jO!@@@Gi{=���*�uE*`I�Y��lk�d���\'�EIl�>e�Xe{K�s	ӝ�s�h���t�<���WG�+�E���n�[*�T��\0�\n\0��45\0F���$��\"�(���b����(A1R*A�y>�ϯ�� 䶶�yR�\0Ϝ��jF�\\���WɽU�|��;e�}g���X\"�ܱ�����z�k�������(�����J��ԆtP��\n\0�\n\0�\n\0�3��w\0��^��ǯL����*���vԬ��0V�+*,�����Dt#�\"���%�9���N/���g��t@,�\n�*@#@D�#BEP\nQUKD�%^��$*H<�&�<�T���p��9I>B�RQNL���쏣v��XL�..��q��B>\0���|����lܙ���\\zQ��50_�u�&CA^�!@@@@@|��6>��e�C:�����p��ʿ��[�2�ӭ�Q��j��m�XT��\0��\n�D�&����&�	)EU,� u(�B��I\\��l���;{+�}2�8�f@����8���o�~u��-�(/������>�Z�du��̟\0ʥ\\T�B�(�(�(�(��~������v���+��a���ի8��/�����T����炀t@*\0�hH�H�\0b�X�)ES-T�J�1R+�0��ڄ� ���-\0���Zk�\0�\0e�(���Z�3�L�cǦ���W3�qA�I�H�.�#�����R�+.H�h;���\0����[L�s��|�H��)p��{s{&�p�A�st5r%oުS�(���\0}L�o�͸����Я����~��?v��^�p���dX~lx���q2����G�#UY{C�=�\0G1z��g�Aa�\0�X�\0���\"���+8����)<Z�Wv�$v�LN�c�W$� N�oW�\"Mt�%�o��1��,���Hx�N�������+��h؊��\0ϸ��p٢V$Z�3�8�\0�z�����<d���z��m���^�����A��h�A�LI�\n�V~=�K�1K���K+ݭ�c��4��F�e�����J�\0�Jg�]�x>�lڵ���3[ţ	���`3R4�f��4h6�$(�\0�\n(��[��=I:X�u?[�7G���,��g���+��*s��h�\'�[K;m\nM-�#�([gi��}+���k�uMͤ�㾸AJO�q�_O�J�)��c�F�?&�����c_v�ڵ�D��&nu]9��vv�����\\�-Im�A��)oշг[����b�|��W�Gó��n�L�s����#����Z��V��eq,��}�Q�-_4Qҽ��+�;Y~�/�uB~�W��2�u���;[x=���^ɢV^�Y��/��3-r��_唣���ˋc��k�C+�h���w���i#�]��fPr�ŀo�>55�1�T��i}2ձe��{�l�\08\0`%�\0��k�O5�ܑ?��7��%������5���5�{��\0�O/Z�^��?jn�e���n��#�Պ���|���F9k�.(8���g2�!ǲ`���|Rgl��\n�a�*�ll�v��@���E�p��ew��hI^>�##�xc��p��Ib�u���M9ʥ9-�-3]�hBB�(�(�(�(�@T\n��[�I䐢�D7��ʀ�9O�������y̾��\"��w�\0�~��f|���h}����q^��@BB���H\n2B���a�����\0}T_�k����?����HF�5 (�(�(�T@Dא��","image/jpeg");
INSERT INTO tbl_man_usuarios VALUES("2","1","2","LUIS","aCUXfVUv95YUe0yWsjs07GTGJuzQ4OoPYGmTuxfCkVw=","richard.ordoez@yahoo.es","","A","OK","0","ADMIN","2017-03-14 00:00:00","LUIS","2017-11-05 00:00:00","http://localhost/inhgeomin/login/?q=260f10cbcffedec9f18d83455277e8c10ed4263aRC2-1507614824","0000-00-00 00:00:00","2018-01-17","����ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0JFIF\0\0\0\0\0\0��\0�Photoshop 3.0\08BIM\0\0\0\0\0xg\083KQKFJ3aLvQqE4AJxiI(\0ZFBMD23000964010000220c0000440c0000960c0000ef330000884400000955000013680000107800003a910000��\0C\0\n\n\n��\0C		��\0�|\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0�Ƶ�b|�ܕN�	�V�FY\"�X�r�\0�U�VF�-6�.Y��\\���\'z��l�3l�sl�T]jM{.$�HY\"�X��ْ��B�DM��9#A�U#��\0�PŻ�Zٰ�Y�I �D45���޷���i�,�.$C[pYH��!�ޣ0�[AD\0�2�	���$G�����T�3\0Lx0F\0F�`�g}���S�C��	8�����\09�/���Y2LLQ�I	��rbY�]!�1�����-�5h��珟�\\� �~���y���z�\0��\0S�cH�2!r$�`\0�\\���S�S�Q��}W��6z�a��c	�2���؁m�&���yװS>Q�}c���_���{#��4�Ō\\`Q� ] fA)f�0�əJA�>m�I�Gx7����X����$��\0*��1u�n����!��	|��8��0�\'���L�F�:}��X}W�0`2PL*F@*h\n�j����8Y=`L�5X��`J��\np���lHBx�9�1DD1g�z�je�`R����P��m<I����|��7����a	�$1�PxJK�^%���12Aa�8ݨ�LmNK�Os�xϢ��2z�铮�=I�KzO9�OD���B��z���1\"�0�$�8$�,!<E��+]�+d�č�:�hڧ1�o��y}9\'s���{�^����x�ˤ��Ү�]1�?�zIW_�#nd���.`X5A.��\nW�V]ļ�KH�a\"�3��l��nu{�����U= H�L�s=���������uEM���wIِm�yNKcTY2J��&i�/����&c��rU��e\n\"ԃJ��R2l2$�N�1h��^�`TE�\0[M�\'��ı/9!�d��F�l.�Mb�(�\0�� \\��,���+[:��5�Y�t�B௭ؠ�{Kl��6����;�5-)[���&L	I���# ��\0X8D����H��M;�/:��S���pG�Ϟ�:��n��u�}qt�-*�Aa0�D<S�^��5J�{\nA�V$Y<\0����C��Q�ޛ�m��r:c�;>A녋���ܖ�G-��+�-��x{�N�[^k�-D��j�AN��\0�,�������\0���ƦtGZl]�֛��{�:��K?@����4�H���s���:B�A��z\n=S��F�����V>p��p�.���66�\"eRf`�d��b� i.�m��hܤY[��,�mf�k�������^s\'�A�n��k6�\\p[6@Ԇ�wJڍ�E����\0M���O�WϠU�u֚B	�NX|�]�E�%�V(y~��\"�}�;�l�Q��9�����A�n>uY�?��yl�.���4]0kn^�Y�5��68L�����������*7��)�7��$|^��-�:�r�����y�ӸV6�4����X|���c�)�}��MwARٙ�-)V(���o̃\n ,�\n&C�O7Q�$Ϟ0$R��]����R�ږ�\"��:j��{%�~��kW$S������q�8L��H�j��S��#$H�\n�E�QV���FF����;�xY�\n9�OET��%��(A�%��� ��~zz_��Eӯ�:�|^��0W)�hަmvn��6���X%�� \0��w|�J|�۠鯃��nMFc�t:�ᕬP.	GU��m&��+���!��z��8V��[�淢�d���\0\\n&�A����4�V���H}ļ���蚼��__c�s����nHȒ3$�W���n��\n�m(�Ԋ��*|:��f���.ЄۢYF(�|f�4�V��e�iwG>�`�-x;=vĮpE��`QВ՚�K�W\"c��\n�\0�.������Զ�w�����*�v�LI�X�o���XT ����]%��%�$�U޲��4��ݍ;�20��\0HS@Mkt��j�/�7�X�6�t���%	і��p󳆍S�4\"�f�o�[@� �S�-�+�L%[�f%e�A�9 AI^�څ+ul�4۝YH�e��A�C4D�]|��& Nێ�O4�P����F��iq&fA5-V�Ѐ�%68\"f� r+u�O[z͍6J-�╊�r�(��K�>и�̜�&���	��԰.)j\n�*�&�pFH�\0c$Z݂�Օ��:�+��Q��V��}�ԡ��` $��������hs���r&L�F	��8i	o�4������&HZ�Rl�L,,јAt�c�UŗӸ8s��7�3Y瞃��yo� ZY�p(�`��M+K�D�3��ɑ8@d�,*����z�H4��S�0`�P���\0.\0\0\0\0\0!1\" 2A#%03B4��\0\0�uX-�>����Agө���Zha�S�:�2n�dǅZh\'R��ow^�v���u^��j�l,�Q��-z���t~�K�T7��R�Eq��59��ӧ>�g�P*`�Y�]�M$�)f����-5i�b�ݙ�G�7�>�܌|���)�ː��i����Z���혣t�~^C�PKz�_�5���m�c��3��H,ʎ܂L�l���q3��m�����`�=Q�P�!岬1�]GOO�������i�f>*r���Q�00�؊[����gQ�H�g���~Sl�����\'ng�Lo�5��7v����vO�( !8���_�?L���qW090�[�R�闁\0�&Sm�T��J���1�y�[�[3��LS�^g�f33��!~1�M����;p_���0���\"������� k���8��U*~���gE^}.��T@r��l��(<��\'�x�*ۇ�����{q�N⁧�ԯŎ�yxo/\'����\'a�q���/L�o�j5��]*��i��s3<��H9���@%߁��q�\0�>9���7�bǸ�����/�C���m�=�Dj��)T���Wj�=Q*jm[&(�\nE擧=��~�>�smZ�۠����6�LOm�f{?��Kc3��1\n��0�K@&v��3�قHi�jbuN��Ơ�MC�t�UZ]��4JV���Z:J�-b1[M�J��1ҋ�N�R�W��5��2�\0I�bJ�ۥ�_�:����`�v&1��p	]�\n\"{�H�s���o�S�\\Ͳ��~��W������M\nt��n��[%5����l�!Hm�LF���R�5���p.��k[5#:gP]GF�ț[h0	����ț������[ ���*`�>3nйX�Vu��]�Zt�\nb�w��>�ц]ڊ�]�V��!��\0�˱L���{cp���)����9�s1��tm��FC�N[�_Qw�tE�J��,�l��\0�t-�x*�_����?�m���{`��2��\04�	���$�x$�*A�x�&\\�ߗa�8��Ϋ����ź젽��>�3f��g����mH���f8�7&XG�g����Gq�ѐ»�Z�J~Cy*��o-ڵ�K!aO�;���6�a0���%�\0)�6��2I1�/��q�8�鷀F�fq133��0KE��`ї0ab��i\0�g c����RN@`�������Dh����ڟ���Ә$��&z��\\�c`m ��\'�*�F \0B� �&�1ܳ~+yb[�uG��$,���c�*�\'��,+���ա�X-?d���\\�*��������d��/1�0�A��n��{��j�o�xq�{�\'�3|�7�����LC]#PbuU]RΗ��w��g��F��_k@�<k�S�{��L�!!�,��-�j�G\0N39h����c^*���(�M^ޚ�\0�V�\0� �py&��5\\K�V��~��W���.��],:����jv�W�*T���D�8����gn�l �y1=��n6q1�Y����i�;C;Qa�9���3N��Sܒ�\"�њ]i��Ņo �R�%E��iSm�!n.뙨��l�R�BGjv�h���h�:=:WI��|����c��T��\nۣdM�fF·��ٸ7m��iȀ)��)��2��c<m�N�4���՗�kmLQ������2�[[�d⤶YX�j��)_R�.M�}=�@ont״���D`�\0=�=s�������m����@�3�b�nfx0\0@^6M�j\'�oR�01�W.����l��J��j(��f����tJ�扥6�x�;�]i�ε,��M./����z�ih���N��ƻu�z���ZR��5��/��I���m�#�6���>E��\0��aw3Em�F�2a8�[���\'��p\0\\<�f��\0��8��C1�a�㸥O�-���Zⶥ�1/��CeO�m���ֻ�M*򵕥��o�\nYS�Tbj4K]RC��݁-�y�?(��\n�F���	T���jw)VS��	�ħ�A���Q>P����#�d,U��Q�\\ʴ����vM���\nqWV=,��b-��\nW�R��lٵ]EZ�py��d$c�s�5OpP\nq�\"���`�n\\Vu�H�?!��b�9����h�M�ї�c�K1-�b��Y�iL�i6�c(r�6ψ�[a�]�4#d0!���r��=\0��E����*}O#���VdB�`ɇ�7��\"���Y�E�eN�\0�f#�-��s2	ʴ\n�T��o�?0���\'�9c�@���$�17�<ecf*�q��l�U��)c|��z*#E0�,���8=����{9��Z�[ZjT��َXS����\'m`0o��޸-�EGR�I�Cf\'@@J��1sBE�\\�BSP�в��0B0!Z��Wh��ө�1�L��e���&�U�����I�<�P�zt`.�*�(�R�0x\01BS�8?�������������ҧ�H1���g`��ψ,��媭7C�ĤvG���!�#�\n���V�iQ�Kv�sT�|q_p��rE��tY>�V�N�=ہ��ͳcJk�{`Y��Ѐ`\0Nl�ꆚ��<���vS;�6#�?P&�}�L]˫�n�z�Z[W�����Smҽ:8�����[�.�V�@]ԃ28m�<�\"U�j%�/�6Jc�{�A�e��0��V�������m(��?���U�2�ǎ\\���[uE�����\\[�[�bg�K�=;}��]8R	Ol\"U+�Os���yn�������I*2��3J�\n��7p��%�����R�@�L/�`�C\"e�E��%H~�O�QQ�[�v���#wH6��J�775�p�h�u:V�EL̸��e�Zuv=E��mIZS��C���z�9F�\0\\�e���N��l�5��1Qw�m�vQ|���X2	�L��.�8��6�n��\0l8�d�ʐkVI*�m���:���T{��M�1NK���^[Գ�C���t���Z�%վg�q��Pe��bƷLSyO��i�}?F��j�B����u�R�O�+Z�Igx�{A��_���\n\\3�?1���>�_�m�\"�g$~�Z�E9_d�έ�&�ֽ����n��1j�;�+֔�\0:��T�;����쏹i<Z�=B%�񠧫��,u\n�*����VjZ�+7.�q�תҽ�Rmz��OT��A͗W0K-F��IB���<�T;�)�e��m4�No\nw$30����L5Fa	̡�.��������\0��j;��^f3��R��-^��{�M)�[�q.k-�W�\0W{d>8���J��]1���Q��˨�m��Q�U����\0Y1Y)B�NME	�)8��f�Dn����Z����J�w��\\r��Ӹ��N�K�[�uh\0���k�(˿Ǫuo\0�H�Y�J��/Q��2����4�ʚmŷS�U�k}F���\0-�T#.͏���j����b�0$�3�S��j��s[��;V��m~��O���zwQ�uj7���V]�\nMW��Ӯ�N�eN��Ӿ��[ZuP{�����2��L��\0��Yy���/�ض��y)=c�kU�4�ʹ��pi�Q�k�)MVnʜʧ�;Z��R�v1���ְ�iԵjw�w�mօX�-ۣ�5U���j-蚐�/β/e�\"�J��6��ݥ�%[5��[դ�sF@Ƶ-��X���e̯�(�;�L1.�ZS4��U�ʚ�K��u�ז�i����E�q���S�v��?s�?ѾU`��F��/Q4�ja�2f*Ə�ˣ�2�b�<��])-�m�ց��(�]$���[N�5@>��l^�*4S�Ґ�a����)�G��jx᫸���nLQ��`v�de�d�4�᾵]��fٶl�8S�_��kIK�mQ�M��eH�\0Ffe����33t�w���)re9N��i��cBV��l���d�	�5~���(�bbb~�����/T�Q��Ԏ&��q�p�[wl�� ۲ԥ�2��Xt2���J_�2�&�V��J�����D����o²��%|.�lJ�R�Ժ��%���{S�su��o)�1�U�a�G�c6���������iGǤ�\\\n�vKj��Pd(����<�e�+\\T��tGӚq�l�N��;��L�}���Y��v��V�/I�S�U����׭D#^���G4��p+�H���;���	ӗq�lF�V��4*�̡��S�>KNĶ�0��l�JT]�C��؉��˨�kZ�֡zk\\S�Q�=+��#39�s<P�%*�A�UZ�eoŎb��8���&�vZ��n���c@T&��R��ŃZ��J4%A��w����\0�P�ߒ�A�s�OF��R꽭-��\"�9��-�0R�6J���V(i\\�����\\��oҨf7���Ne:{�:`E��t��Y0T��a����}��T\\LQAW��k?͖��1i6�LB��>J�z������\0�OC�L�O1DE�/�u��+@ea�)И=�C�`�j�u�zX���P*`m�}�2¼�1Z˵�=�d	M1+W5�\nv��!�P7�8���pi~mހ�v�a٦2XrrA��0��Ko��C�ϑ)��i�q[2ڇ�{����1�%!��!�;��\0��g��>�ٻb<��S��oO��6���ߵ�	Do��V��b��O�Cs������c*�Ο�0�1�����9��Jܣ\nT�{�M��م�K!��y�&�jfD���;���\0B���Z<2��z��I��+���Z�Tj�h;Ah�-�ZJ!0�<�/��ݽ\'��j��n���ZT�����A7ah���$�6�q1�(�wu�\\(h&e����Q�4_�y7aa��!����E7��W��y��(Q�fh������U0Aژڢb\0�k�=*��f��&4>��~�=S��~�D\\(̸<�R�ٙ﷘Y���m�{���Hu0}�9���ːi����fn���� �_ҷ��S�%a�3��J��VY���pEN<؞R�yQN��0���Y`3���ff{���C�J�i���l-���`�4��o������\0��L���1�1�/��c��;���s�3*���C�p������,5����a�����r �4کo�i�e֓�,o�}�c��D�c	����\"�W�?P�n�}V��җ��;���O[�6���F}�s�x�on=}��X��M�E��b��N��l�o�jV��ױ�1`��w��}ؘ��Cʷ�R��! ���;5@z��1����\0_j9�����;��o�����oqm����D}���f;���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0?4?��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0?4?��\0@\0\0\0\0!1A\"Qa 2q0��#@BR��br�$3PS�����4C���\0\0?�h���E0�^���E.E��I���\0�^��Y�����<ts�D�P#Ԯ;#N�V�3c̟N�K��Z|Uf�������Ҡ̲Wc[Tt�Ka�wE��^�U�+	Z-0�h�Zb9V�E9V���h�1(;.Rv>C	՝S��Ϊ�\0�K������S��;����XI�0�t�Yi��Ԁ�G�|ftS�21�r���xw���ܡ����P؍Va�U�c�4)�}J�a0��E!�y5��ˏ�B�l;y-�#�Ty,l���1�\\�tC}�E���S�]���!X]��w�vNn�8�ZE� �ڳG��M�퍿UlJ�1Yk��+����\04����-���c��nS�*U����J�������*�U�_��]��6�k�W��Q��L�l\0���mF{L��qB>с��U�@��^�[��J�;��R���0tT8&���4�(-7U�͂��U?faܢ�4Ʋ�vA���*s�+.�n�m���>Y�S�l4S�������Lz��cu�A��-�ܩ�b�g�s��-��\"4+0P.f�xCÊO�,���BF�^#D9s��`9N4�������m�_E�uW�wS���e|o��-��P��Ta�^ݑ��;5�2۽���9:�����5��X��!�Q����U�+��=���Eb��b��7��[�a*F�H����j�d`�E�d,�N�Ay��[t�SnV��~>��3�7dZ�.+���t<*���A��J�8Ϛ�˼.`��*#M��h���N�sG�1�*�`��^���O���ٰ��/G�-�˘��:�n�q� �d#aX�>�����#�qE��2���Wv�:����\\UO��YO��\0�i�%_����ݰ�9��1�	�ߪ�� G�z��\04x}�>!i;e���֋\")����1��\"B\'n�}��fG�q�ws�>��\0*��{a���-Tbpϖ}�F�h�+��\'��Q9�tG=�N2��^҇�].��\0�^�O��)�Z)��ʏ5�忺sr�ˬ(];�]���,�p�>�al��J!�?5}�����WI�ڰ���}Ȑ �.9�8�4N��+�������ZN��#�L-e�>�k�uW|����ӗ�NP��^}�\\�D#P:~��_��5\0��T��u*�t�9bl��˺�;+�h��wG���{b��|ѵ���)�����k�V�\n�����hԝT�?��=>�u��zt��=�\'Y�5���^~� �q-i=V�^g	�A�];�V�\\4\'ts��2k{f�fi�U7�g���|��.܍�}ծ�:nk���2�L��~��{���+!��Z�3\n�n��^nq*�U��T��Exa�`.��N����i��to�.PS�?����TJ..���pPn����%xa���P`Ԣ�u�eE�0.va�VQ~����L7��f]���������a`���Q�Ƕ7x��F��E(�	+6h:C���X_tH��g��2�jt�*]jtG�����ټ��)�K����s)�����a7��P=j(�����v��W�����}6*���w8���x�7vZ9��-@\\���E9���+5ܭ����S���G���\"�����u�U��Q�@ ��\029��d}�S��ྻƌm�O[��N_	���7^���zub�M������Z� |Js�Tt���K�U���s�\n���Sc����N����\0|�=3�w�Z�H�PL�D�|§Q��\n�=�3���&I�Q��V�T\\���ڄI�J6�w��r��ݓ�U��7���h�M���f��sİm+1��:���4���iX�!d�I�)~Zbs*q4�_�\04Ą�ǬAY���$u���wǸ��� ��8J^9�&K��8g���§�!,�+(Ӻ3���L��[s��i@�Φ7.��K�z�!��d�\0�u#�k�f�L����r�g���\0K��y�_�����Z2m�+�N�ܣ7];+��eo�[(��uY]�u��]��$#%��*�<�5D��pݮ_i���5�����gߠr�v�jA�F]n���h6kᕍ��(��e%�\'Y&������U�>��̆�R�P\n�]���J�9]�;<�7PƆ��Wo��1纳@Zy*�z�4-3B�U��}�=�(hi��[+j�#�AY�N�����c�l��A�ݚ�bU��D�gյS{.mT���U��o=;a;h��f�Ļ�Gr�I=�U��7[F��U�2r4)��U��\0*��heY�U�ܭ��6�����m�Y�*dOu.\"z��a�E-&��	L{��/`<��	���\\��\ns�M�v=P��7��M���D;���@E�:,�Y��]H����s�leg��~��!˚z�\0N�HjB6�̔�<�Ѻ����}ש͓c7Y@i�W��ǠRf*<���\\�\0d4���\0��T��&������bO��Y���\'0LoF��s�s����)s��&��d8H�����$��$�����Q1IMk�1�ò1\0$�yC�/�����͏�5�\"	�u�w�~����5��W�ȚuC��u���~��08���{�x���=�?|�u�����3�E ,���K8��7e��c+͎V�O�i�:�C��⃚�C�9�(�T4�u�d�̦��Dm��]�w�h��Ӏ�h�6���;�TsCg�1��C- �:�\\\'f9����{��S���u����4�l�t��*�W����>�\'�\0\n�?�nSG]���G�S�Vc�p��f���G5�	��v����ec�����L��d���L��M��q�$�T�I�͗�4(�#O�}c����7	�^&��e�m�د��#���ԯG̮���`�6W9e�V��a�qA�K�;6�=�53S�L�_-7𤜝[��*0�\\$y�Kd#���S��Lg��j4\n̨.��.vG/�R��k����>��9�`��,��L�4f���;�5�����-�������x����g��)W���X�ٖR�{�����sO�YV��!>���Dz���m=j����U���t���:72b�W@3�VZ�EJ�;L`\'�O?��3��\0�넢�\'�d<Ki�����YĶ�:d��l���\"?�eim?�S@2�� \n#?1i.���wV�c�sΧ�l�����#X)��3����p�S�#�Z��D�vv��F��͛�F�&�� �OE�{,�sI�7Wx��	{&�HZAZ��K_��n�i�?-Q����8����yNi�@u�[/�^�L�*�T����MN�)�#r��������O��]I�����D�V�e�13B�&�Z%�+ �^R��q�G?%Np�����)��=G��bu@5�h���%\'s����OY����\0�������v�\05��M�\nZG}Vn�ᨶ%��)���Ss�9�BT	�	�7Bҳ���6gn��\n�p]ЯL{.��w4*��\\|>+�w���qjo��h��0���9��)�+�ٛ���\\������l�%�keo`�19���IV�E�U�4�Y�U�v�J�B�cfcU�X:�B�����W�I�\'H:�s;1�ht�_��S�tV����S�×4f���\0��o?|N�ʕ��F1LfqT�5�Z���a�x�#�\"\\-o�.0kl�������#��i�D��9Ɠ�!�eZu�2�V�z�����g.͠����g�`ʓ�VpQ�t�/���T!\0>h9�)�B���Br���\0�M{L��\"�b���J���V_<��<Z^�uDV.eC�5�_�lou��Q7Z,�������\\�@�B�|��8��;��ָ����H�{���I�\n�;�KQo�36�]��T_�T]K��eS�y���|�͚����;���PB�6�-��T�zdf�p���E������2Ԗ�V���+���6M�X��κ�(9��o�tI��J���~�[�iN���2�^=�x9��+��l���C��\0�����Y����tD�j��ٕ��%fx��ZvD��~G��MŮ���<���\'_͢��pP�Df�O��5��B)ԙ���>�@�=��n\'��� 	ŭ�6�y����oU��;�<|^3�P�����\0�R�V�8�N܌�����3������/sŜ�$dAVT*�G!�uJ�:��?z�?F�4� �!��U�=q.ѣW-������{���\\�����WO��fk��ոxd��.S�y	{�GR�x_�]�z��}����ߢ��Л+����������	,���\\��t\\�ߔh;��ZH=�i��x�W�߶�8Ff�7h����	�({KOu��oR�ҷ��Ws3�3L�F#(.-?���G\'�Y�[E�V��Цֳ]��B�x<[��o+L��������;���:�g�����-�)n��>��b�����Ԥ�F3A��ئ���]��@�qy�ʫh�-8uVW�2,T=;�!�\\��+|f�QЫ�vP4�yO��3\n&|�[���!�v�o�P>i+�b�laz��)\\�����1���_��o��!L�Yf����o =�)��}\\��yU�{�_~��p8B��ޜ2��\0(�\'����1�u{�>cĖxT\0��:�S#ɛ�8�q嶫�]��jb�W79s��M�����6��\\�	�t���.�B�2u��\n-x�ް�+{���=��>%-H����{���;[HZ-�?�V<GƁ����xo���V��\\�[w\0�A�Tph��\0h�q����k��U���T�j;�4�\\=Z�XׂS?�����4��(|̭#�ϭ�r���ʥz��x����XD�M��O�`�@7+ p�:n�V�0*s<~�~�ql�����{��{�W�f�[��Ө[/�Q���\0\'\0\0\0\0\0\0!1AQaq����� ������\0\0?!��ݨ� 1��ϣ���A�\n�sZ��us+e��U�d!�\nf��,\0���k�s���V+f��{�M��Mg��/��`���\0��?�s~�ѷ۟ܵ�� ��O�0I%.��sU[��d���0�nV��P�]M�b+�.V���� �e�CD��yM��A���N�_-^&���Y��V��Q,�pK*����.U�Y��~����s3�s6�����\\ƝHХ�T����d*�fb<a�8�G.����<U�(P��0W��R����rc�a`�1e���XX�����M�q�j�D�@x���2\0)���14F�nu�q̳�zw6i�0nsuW����Z70�V��k�>�y������w\n�3q��J�s�֘艛�B�Dn���6`F�@�&6#���@e��[?�aE��7qP�ۚ��lH��6W�*��1��3ePo����7�V��UX��[4Nf��w\\�+,�s�E����q�kP@r��]J7���{��7[������{�bS������<CR=��d�ޯ��\0pn�R�����AB���:V��M�k(����Q������[���%�b,nK�C{\"�TrAu��T��x�ȹ�{3��<��|����$�M��JG��k�ԹuK�l0�D���|�ٖ���+�>�0��T������%�i���q6}L {��S����X=L�c���nK�o�}���!~�.�\'����C�p˽�@-�8,�O?�qT���x(�l��#��+���X������l���2��S�\0��!��X}7���7�\0)�U��Ęg���f�dۉP��qy ��\"\\���l��\\f&ܘbj4HZJ�4�87�S�3��Q��^���AqU����\0�O�~�5�p9yi,�4��4fZ�@�/s U-iQ��E1��E\\6TUZ�2��#�2�!���̍]�@��PC\\L��c�D��Ӊ��	cnP���!������Qi�`h[����+9��Q�7f��%`$w)��0�Âa�T�+Q�iq�G/�@\n�dj��4B��芮��u�J,D�m%ЂD`I�C��PƓ|���*r�ª��žI�6@�Ss�����l���B\'�A����է��]�l��R����E��]-����nx�����Y5��a��|~�My.1\n��:�.���A��s,bfU�y�M��a��1�6���`[, �X�@g�(LA3�`�J��%:���i�DO��Ѝ���\n�i�J�����o4�����⡕-��3�֘�Q]��.]&�,W�&��r��[<u��h8�h�B����b���ќ0�c�*�����O��斐[&�,@�Q�n&���}����f��9� ��ʂT�J��r�M�}㔾�b�;�i��X&x5���*�MG�S��J�S�`3���k��g�QH��E��pF�h�B�1m]JE�[׳����^�D f���������a��W �0�G,~	���4��L�^�9l`�\0�P|���̞ ��� wr¶����&\\��X<��;A<ê���[�jkuq�bR\"��1ٚ�ϒ�>8���:�0�q��\"A���5���֝�sr�*e�lN�u!\'�\\��s.��TJGS,-�:��U�=�	���\'l�A�p^���d��c�xJ�nh���Ai�u\0A�y�1h��	dWP���o	��Til��SJ>�f���L��z������9�,۰p�I�*ֵ_� >R`������1~8�0�b.f��;�EY���!��͙�\'�����i�@^#�n�B�r����?)����pץ89���̴��4J�40%�e*��cgU�t?Bf�+Ek�B��q]�ä`/p��ĭ@�Vi���!��/�]�\n�|ˑ:����G1K�w�(����T2CQ%�;�?8��Q[Pt�!F��d��:%�LD��-�N���,9�����`�L�g ^�\\Z�b����ˊ���S�\0��h�� �f���ncҽ���Ⅿ��r��e�_s����M��J�#z�+�|`%�0�8��B��;�r��,�(P$y��	�3�����>�(o<�Z� ڏ���7S]!���\0��t1g�5.:\"�)K��We���\0�r߂ޣ\"�VB�͹��WC��M��*\n�1F��3`�Oq�޷�J���)ӕ���ZL�����_☁�u9�02��/�(��eiF:g�R�T��(f�c�u1���N�ާ���w~D����0h�Kԓ~���.�	tw����El�4K�b���̈́\"��\0�)�h��N�@^�[@N����xf�L(c�jP��pR�LbPV�q;z%�	V��T0����9ڮ!��2]�Ĳ����B�n��.`���p��b���~�T3<���o>�Jh��pY�������:�\0ف�\0B�\"I|���F*�7M�_��YVQ�ߙj+>�T�p�\0r�)晑�}��VY��PE|�@��S���<�s_E�~Y:z�Q2*���\0�\"W�!�r�:�^#\ny:����w����SZ��_Q�\\��ll_��,�yb�Ÿ��3pS.�ĭ��32]��ƛ\\�W�*S�m�)�J�3�!S�`8F$\"�_��E����-��x����3U4#9��pv��_�K.Y7�L[�73+k��(\n`5p���\0q���aPa���3��\\�W�Am?p������6�SEk!G�bGx\0�w�lT&�3,�4Ou�.;19GK��ݣ�@��&i��_��7��72�h%-�ˌ��3x�~�7�YB�g&?��=Y�C2���x��\0���5�1���A�S�+[kZ3�ux����.��M�ݝ˥�K���̨L~*.�`�E8��/�d�N�f�4s�]YR~�!m�R��!!(��3��lõ�l�{~ᑥ���I�E�ʗ�Ll^Z��0�5����FӐ���Qu�^�̿0Q�����/�Z�0Ph=D9r��V����>L���5Ӌt~?�tL�Y�֣����C��\0ɇ�|�����+,\nJ�O��v��m�za{^��V�a������x�4�\'�B�k-߸8ڼ.]J�̂Yk�4��W��[ǑԢ�_+(��*gT9*���b�[������5��/�ŗ%�/��5y�m�g�@�z�f�\"��|AعX�r�hr����k�rq��!�:L\n�~�����}ϸ|�^eю@#����`l=Ɯ�:��}����^?��;<��~���+4E����KU~�l�E������Pl�����1���؛TsR���h�\0y+��2��6���N�N �U�8�<2�N=�#.�+�S������pq���L��X��B�\nbQ�oCB�/��E��333Yb�ƹ@�K�	�R�U���5M�)�]\'p�O�AbΘ!��\nKu���\n�e��b��1�p��#%ÃDb��\':�:���t�����dZ�n�%��ZOB�&3��L\"��\0r���o��b�^�Q���8�l�,�7���̲���*UL����b$�&�ʭ��%����VN��N�j%���*-3v(�(�����[Dъ���_b5PMd��x����E�#���/��{��^h*��h��D�w,�fT�2�v��ӈ�/t�iPK���*S�52�٘)*QØ�{&�w[e>%(a�xz�Nqj���)�aVe�ۃF�Z�\\�@� �y6!K|�q�A0dD�2��=�F\0�A�<K�uԡlwN���*��ɦ�&gmFCgf�\\���A�f^鰀�t�7ǒ���G�G\'.�u�%��Β�|!\\�Q:)k�M����<$�,�����q�׷�1㶦�i�||!|K�0EE:�1Na�0�\"a�%��(M�[��\\##�mC�*���(2�l�CX��D��6坊��2t����\\�2�	E*�s(�c�V���P�����m�A�ӛ��\n&��Q&0�����,�:�0�$w?�Ӆ���-ˉ��1�X�S�\0T=�\n��EtD�񊦬5�n���3��nQ�_�~�-xdr�����nj����ˆ�qU�_�\0 r����k�e�l�j��;y�%!��!�\0Qr8���s3\'.9K�9�Y�&K��j���ڠ�Pu�h��,�Gy�;\"]c�ϸ�����b�P�.*;UR���s��^h������P`ׅ,~k�S+7S&��y��\nnf[���ى�+\\2�b�hJ���,��b���4a8����q,l0��0 �(�x��B_�i�?�Y�s��A��yl�0�xn8e�]^	�,�d��0x�\\7�s�m�(�c��;͍�@d�(�������AP׀��c�XK{�@!�>�_�m!lJ�R�bs�nޒ��i��vfM*�����(���1��Qc�����B,�?���͇���v�˨�6u``Uw�CkE��A��m״ͼ�,���l�z������Z�\n�;����xV���n{qB=�w���d\n��(p+�\\�6_��[���PT_�rfU�q󼹀5=�����7��S�ܩ�d�Ɲt4�eZ+Mh_>�@e���W�=B�����X3*QE�L�K�q�_��W�������1]CH{3y�3�d��^�E���B�~`��t���E��\\�B�&��}~.�C�\"��ɽ���)��:��[.��q�`��G;�_S�8��a��y�x�/o0\0�@´��\0{`f\0B����2����p� �d�#1�v���`M�R�|�qb��ڬ%�*�-m�z̦l�OH���\\M�6�*Ĩn��{�}����\\0�9��ٟ�nQ�A����nϓ����V��O������\00������=]��5�r���_�r!Ī�)���PS��t��t,�\n�c�#F��//��s���B�>8�g�~�E���X���Jc�\0)�\0^m!��(�z�o��ZJ侘�}���R����P���S�3\'I���Je�FMފ	r�e�א6n�p6���G���+�Om���{3/�9!g�FQ�&�;%֗5�����8�E�M��W�Or�C:Z�Y��uޙ��^��i��C��a��8�^#�_%&��+;&q�Nl�u�\0���^CY�p��D��?L��6z��~���.0f���D�J�%V������Ceֳ�̧lv���\0���a:ݽ�[7�g�P*!@�I�ˁ�R1>��\'�`�M���YKGq�s\'G��m��<�_�?�Z���,3�L����\\,Ӫ��\\��\"7�p�aˮY�~f[�ǂ]N���&8x�VY*8��?�::��2�X�i�h5�*I��s��0>����-��m���&A��\'�\0�JI����6�	u��[~`2�A�7�����7]<�V\n�L�o�r[�\n@&!��\0��:�&$�o?2���Ge*G&��)Gq���a�%��p��\0��M9%�ޥ`������+a�u���F5�T9������ �f~rPf@�а�-B�n@y�W��8?��̝}�\0�g�d�h�H0�lS�Sĝs6���.�\\юX��Ů��bp� f(�l=�S�T��j�	ڂ��l��b0���RK��F3�����i� V2Gf\"\"���A�<C�jm��\0W�����M��:�%�=�c�-:fc��� J�f���\0�Uvޅ�~P.�p\'�%q�]�.f!b��p�����am�&���#[L����������s�~by.Pҭ��Ѱpy���(�v��p>�g�;�k`��%��U��%j��k�-�k��О�����ϩP�\n��S��of�y^�G+��	�ܶ��P�*��%�k������-�=I���1*�FqS��^\'/�p�s,g��o�]���v��:^� ��X/R�Fz]A�xפxv�\\�cs(K�uKLߓ��]JGD����YG�d��Pw*a�y�&�*��+����3ؘ���!��(ĸ�ev��GvAӫ���# Kb�L����LsK^����9���d��Q𻩐-o�Bs��i⽳/\n�^��=��1b�(c��\0�kPbBk���B�,U�h/X�*j����VT8�r�ܢ�ƥ>*f|5cF�\n�0陵Q�����R��m��<L�S��H1���ex�͛�\0��\\���~�v�Tcܳ�^fJU��0�hze��2�4Kl��V�_�>��[�Z^�e����JƤET�Qp�^W��YfӹD��FY�rsGk�8g��*�/���n+�n%�XX��A��w9	��m?���4#�d�Љ��j/������Fx�\0����!�&eR���k�B��g�5�\0$c)(��P_sHM������������ ��tr=�dje�p�?M�B�򎯿���׽�7P�����Y�G��iR��$y��^���q��7[�|f߃�/	���h����{���q\0 ��\"���/��`���_��P�`�y��W��.�1u�/�^!�ʡn�V��b�Z�Dvc��l`�)N�K�<��G8�0z	t��f/�QfK��ϊU��_�Yh���Xj�fc��o�I��?�̋�Lj���e���\0�|�����q�1�Uo����LOX��E�\"�+�1�W¨��R�{C�j�\00ʯ��M�3+-Jv�e�X��\n����U�\0��c9N�Z�� �a�FS�տ�c�����<r�G6��\'�~�����m�B\n3̺�֙��n�21[���x�ڔ�D��!�ӝe9r1�,��*�l��\0����;j�c���+��c��+�*2��,l|c�<�Zh�#�I��:ǗB	�������q\0��A\\K\0�I�\0�h�ޑ�b�c#�#/$��-�ACh��|Lf��3Z���i�Y���q����J��6�.qU*b���~ !5�T8F�M�HA۬���ʋ\nG��z�o����6ľYdϫ�X&a��(����\"�J�,f���P�j`1�1��7\'�L��\0I�fi)%|����(���0a��Gu�\\�O�\\�1�N���C������\n���9l>`nV\'�f\\_���.x�6	�Lm��Y��J��P��`\"���3K��\0������R��\\1PF�CZ�7&9�����b��@������I\\K�M/X|w/�\"�W�љǜ�*r��g�L&̱W�_7/��V�s��YiJ����B�%\\s/�+�@��V�f�x\nM3�ß�w0���L-0b��2�\"�`��0�1�7S/O�1f$X3��D>n�36k�sA>��D +�a�\\�x���0L32a�qTk �t�\"��>���SN�δ�p����K�o�d/j�\0�F^\"�������78�{��`�s����&�	���BaL7?.�}��\0\'Q�!��Yr�� v��}Dw��o��f�B,`Za��XbûY��\n�3�YX�6�����VD�%����G�7[m���%�-F������F��\0%U~c�]��� �|\"C�P*rY�\0T�a�|Ļ�;�3!��M����3qW�C�\0I��/�?g5\0�D0_�g���ʚ�w@K��\0+�_��K��e��0��2�7-/�U�Bc9��a�b��X��.���K��Ϳ��a�p�G�[W�_�\\T*���?z��(��.�\n�\0Fu2���j���������3����sv-Wq��̲�_��2�_���k�~�\0�#E�����cj�d�\nT��j]K�7�*[5�z�2�Yu�:C��2�F�2��LLM|`��/��^0{J��eT1���R�@JJ<)����D������k�t�uER��1!����~�B��&��3+v*QB�	�u�#b[s7��؆�9Q4��F��+��r�2�c�@�?�D�`Պ���\n�-�����������E�K-�2,ݧK��,>6A<J�|�������6GQ1q5��[���s�c�&��`�T�`�=�\0�����w�m��~��|@�A�-��#���6���S	q1�b�6B5n�|\\q�=�U�ND��.#�@41�l�5IՕ_�\\#�\\_�|1��iF`���g3����>8�����&ύ8�N��`��y!���a�����\0\0\0\0\0\0r ��<2�(�(��(Q�8�8�H��(`@\"��(��<0N$���(!�<�L D$S� ��\0��,�� AN3F,2�8��1��F�(B�\0�Dp� #�\0Q\0�$#�$���<qs�r2����a	 0F8#� �H$���3��@,2$�I!c��<p��,#������\0�C08\"L$�G\0r�0�PG�@$`�L<�C��Џ8\"�08�$�4��A�����$q�S� �8`�\0F sG$r�<�K@4Q�<�Cb,#���\0\0\0��PM�8RO��\0��\0Aq\0��01M��$�\"\0�@ � Q��4`$�0Ђ H<��C�24���$A4���$�qN\0!�Ј��8�� �$Qr�SE4��<�Ӊ,҉r\0��\0�4rC,@��\0L aMa	0�8\0�4�K\0�(��	b�(��$�,��\nQ<��r� R�PC$B �,�� �$ �a�PD(���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0?4?��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0?4?��\0&\0\0\0\0\0\0\0!1AQaq�����������\0\0?h�\'_�D	\\���\0y�m��j��<EൌD�Y���A��`�#�G*���/^�&Eh�Ø���׹aE���*V.��p��Lb6��%;�낄CE*<v�4�X��K�uO��_0������T�A���5����0���Q3�At���7��ՇZig��~�n2!+m\n�Y:~����gY\"ʬm��6���l��r���mEʗQS�^���B��=�*�L�@hĿQZXʴ�~�:\0S=@��.����+43U�}t�icP�w�7�E6��V��h;̺���\"A0�89��Yp�d5	�[��F��ȁ��+���ߏ�^}YkT��q+8n\\�.����9:�le�s�<@��o�/��H���:ڒü�0����5���4�����D�����6K�M���a���B�n8J��X3D]�jd��\"Ve�R�eɒ!�-�_�Nm^s�-���U�G���aX\0��Ōs���m�����P\0�����������v��*,�W��?x�	)�?����.T��Z��.�/@v��&W4mU���L���e�N��\0U�,m��^�V�fZ�WR���\05[<�|JqA�z�_�4�6�Z֯�ĸ�dofw��=�	��p�����Wy,�/�Vb!2mT6�X\n@�g�*�jJq]W�܊�m5�չ6�nJ��Y�5��2�*�K�|�%Uy����<C�~L-w����E0p�Ll�EO\'���)����Y�1��������xHԪ����){  T��01�,�qq�5Rʸ�f7,|��2���\0�bTh�|�%���M��{�\'z�`>��S�j��\\�e�`I�h����\n�~e(U�{a�+XnV8�/O|@D��@��X�}=39�K���]��n�˶��,�+������G ���Ċ�?J�d��:�lCH����U��Q��A�t%��R��j��h��[2Щ��,1�*�B�Ѿ�	ybX���8�21�z!f2Տt\0�J��S�f�p���K��Pp�I�h`;�AgT��<a��	 ���(��7���ʸ� ��\0����m�U��?b�cU��0����/}�	���ģr����i�f]c��,EZVs��|��#�|̥��~ـ-.����P{��G%���JXi�\0mY`�(����U�42�|�a�Q��y-$�8A�g�Q�9�.�K�:�b���w���\\�שU��79zLo0��?�8[�r�L00b�F8��2+=@��~�K���M��?|A��;��@\'L+\0����\n���Ĳ�Z��<�I.C�*��_��ꌒ;FN��̗�#����򁨗�-�N`�OEyw��Cb�{��wcq\0�R*XQZ���{D�J�e��qP�h:�E���b7E� �������`\\���J^�j@�\n�M���D�Q-0\"�8�JB���0�	��\0�d�O��ܽ�k��0��2�c&U�n2O`�T��� �7�Ҿ\0�0ټ�Yv#~�t�W%8r��f��!�mkR����Ɍ�f�ђ�6b#p\0���Q)��G�D6�_������+��ދo�k�1�:��>��O .�x�In���B<��n*b��:��7�v�P&�������A\"�ႍ\nb�ƈ�S*��,D1�73]�Ku�rLg5x�ɥ[�ۗ�J)��\n�a���W�X��6���83\'.l\\	�y㯛���¢H�:�C.Q:�ab�� qZԽ�YO��+E�U��p�\0�˙Ka6��t�t���0�OPoH�^U~�r�-~�c��\0Vj����:���\'�8NY�ĥ>A��8��)We<W�X	@���^�\0S�DQ�mWj½�w�j�N�-��{���4\n^��F��:T*�^��I���\\���WY0\\@��\0ƳT�-K`)�e�2m��Od\\���z��mC*lP���,��Hu5K���a����D+)�X�\0�9�+����3ԗ�+u��AD����(O�*�F%�X)��H�4����.փ��P����C)�:������J݉��B^\"��e�\0#Il�n�u2�`�l?��������&���\0q=��)�7��$֮��\0�rս�k\\d�rР/Q7aQ����;�\n��04!��+K�[��P��9����:�k���bM �v5�|Y,�r��_�J�&0T�h}1H3�E�?��a+e��\"�E�~\"S�ra}A���.}GpG19��0-+�``�)�R�Zx���P廻��[�`�n����7ϘV�������V�$iS\0�� �q^%�YQ~��V�cZ�E���J�v��\0��M��mx������$~���DTl)l/�E�ʍqw�@�Dil�����e�&�D�ajq\\C~�n�����m�ʭ�X���u&�^*�M�h�>٢�:>>�Iz�ipJ��n��dy�je�-���.����G̵r�V��\"�!4��M���F��{�P�^��Dݒ�7jǾ����&�S/�^F_�q�:ZE���k\0]�q9�(V���$�r�F\n\0\0�a*��uD�/?Ĺ\'�,\'�z�u,��Vs�����W_�CA�L�vۅ;ĵ���k1D�4Tx^ ��JU)����q(@�i���/r�ͩn����e�u�%>���^Q�K�w̲H�+u±a^��ո�˦1�Z��B8���rrH+M���0�0�v����>�#��U�^�{J�X,7\0!s�	hm~eB�Tw6���t�u�:n�P��[9������-��n;\0M�ys��Ik+���Qj���)\0Yy���r-;=KE9�yJ�,S�S�����_��Jz�IV�4\\-��-o�`�,_�W�[!u2�������E|�e�e�}f,#�su)�Q(Q��\0�Q�\'���(h67�9@(���HW�:�sc���nFУ���HR� ;�cFao}]���%%���ci�X�ǘvJ!���5���r4���W�p��\\F�U�K0�#�D��3���+��\\>��d� <���6a]��G�f#n�����<A0wT�wcw�b��7��s��\0,�jQuC����bΞ���L�h{1_J�k��<@\nle��Fec�������Q3���W�w-��e���������	ot�B��?�ڮM��r�O5��0T��Q��_�f�����k*���\nl����S�D�E���h����.vʎ��QǉR�(A���.%a[�[im���y{7)YwC����DRW���C\n%�a�d_��6Ϳa��6bj�iA;���w ����\0�T������(�<�x�`\'q=ù,SU\n����H)�#��_l�%��Cm�Sq��a�\n�)h��5�l̤��n�vk�,z�ҧ�c�牞9��!Q�k�QŀN����Q)k	�QKN�K=�t_�N�^=��P@PiF��,�h2�R޲]0=*��_\\�)�%�u_\\�Hd�q	P˸��%Bŵ8��K���W�� �Y9��y� �^S�������~3��=́�V<Dn�G�g���uF�v��7�8f-Nm�%c��?x���A��3�+\\�R��+��J-`�1��P�Gf�ze�Qw�*\0���F��g�F�\nsФP\"����G{:\\\"ڕ��R��kj�LU���HmF׍q/�&���\0�V^�����~�{h��t�?��\0�������n����KE�7*CY��*\"F+vKFKii���ޜ��ӻ6�.��h�s�Q��pS_�b!�b7��P�ʬ�pr#&�E�F�1̍]�U�r����J(��\"�PH�eY��Fկ�/�k�����`�p@��W��Fѥ��r���P��j��v��2�	��{A7\nRb\0��TP_��L��KsT^��{�AK-M�MA�=��S�ZP���SnAŠUk9�q�� �����;g��\n�9{��L<8�;ߏ��ї�y�ɔ��(�~�ʁA�Rr9#��\\D�-lq�u�����\"K��5������f,���w�ET����\'���f<�xO���1�W���~�B�(*z4d:�u�ښ���Y�B��y�)=�ȯ�B����|��1_�N� �3�r��;ǹr!��3=��k�����Q��Ch��\\��U4�9Kzb.ѺXP%��Y%0��<K��g!lP�~Ãl�@�}�Ġ\n�tFՌ?��E�#�`n�<]:n���;�6M��<��92�,�2�j�������S^I}W��7��]F⹤��L.�Az���Ѥ�)�6��6|\',+dΜq�E;�!.��[�ꁕ���$�sg�p(�s�ĥFi��2o�!E�;6�_��%-\0����W��a�ʖ�ŝj]l�0գ�u\0��QU�`�m�o�\nN ��Ub[Mm��5	�N,��X\0\"ʠ]l�r�qLa;Y/�8cC�k���h�p�3���Ȳ�leY��)�p�n�瞠�!��p�J��)X6��u�B�%b�`>+2�[Na��M��W����h�\"BwE���F���b�[�}c\0�����T�nv�~����~S�i�F@��d�^�t,umձ&#�-zs��7�Y׮O�Q�����.Z��d*Gb��Z�K��Qf�k�W���\0�+N;���b[�0�mEb�>e�R�(�� � �_��,�Nm��#�����o��A��	�y�(�v�O�w�)���͍�nP&��\\v߭�!��x3Y\"4���ˍDt��o7���$x���2*����\0&l�\0o�՗�Q�qc�}�K�~�X���A�^�d�Mnv��P�L)>e�Qdd&�����R�U�&�@����Jh���;�?��ٜ|������?V���-�b#��5���� ��U����d\0�D��c�>����T--l�\0���Q�\ni��V�\\��C���0�B��\'���Q�\\q�y�ݎo\\W�,V6X���y��	K��@�YW�`��j @��v:^6n����A����n��!pK�`E�Fq\\D	/\n�s\nZ4Q�����=��n�/���--c� ���_K�J��fa0G&�n�\0A�J�U�q��º� J\0�_\'����[��� .6�Ww��B5m�G��a��p���+\0ϖgC�\0h\nmw@��N�Pw\"�5A�2tJ�e�N[�������p�t-�E����@�R�暈�\0�S8�=+��_���I��Y��C��a%���έ902���dX��S�Er߹M3O#��2�r�V�������1}1�����:�~#AKo�l%��^�9d�������]-����Xb#縝��Q�B����H�+˯W	8klR��R���Z�������:�AW04�J��ݜz�L���]��эy5�[Yߘ��[�85���=��+T�տ�:�V2R��������p���zCI��\n����6t�<5~��0E�hT�͗��қ�V�j1\0����&��	b_��9����ψ�	�^�-mX�L`d��C}`4<�����G��QXxi��ډl�\n��Ky�H2yU�\\�P�5���=PZ%��}KH|G�-���F��	`|]�pD���[�D�CV*&QO\\vM�Ŭ*�����Y�+�nC�zK���M�Xq���-T��&/(#�0�#�\n����X�����#^)��^;?X�(�oP��ԨZ�����q�c����ީ�v)[r���\n٬\\3�bUU dN#��\n�*��TO9�ڰ.�eJb�it���ڜj��&Trg�,�Y�by��)¿N�/+\0x�DWR�Oly��Yw+}q��d�e1;��T	�>��fr^ٙM�*�2������8]຾���\0<D��_��\"����1���c��j>��o���3�g�B���{Œ�翬�&#��WS�\0O��leAP�̼�Gk�Q���J�/��65iJ1��N��(�~&�+��F���Z����c�,����\n��m�@VZ0)�}�6p�ª�k1@=K�=_�jc�x7z���Vh���M�*����pm����0����Ek�ՀY�������ϥ�B�\nG.�0��Fj	cW0~��x�)WNZ��^����%�|UC<PAhqW�@@�iBiC�������mb�\0�aRx��\'�����\n�BqP�� ܺ��/F�,	�̉��%(��-(�+�R�`6�0��Қ�?�C�Aq�y��L	��-��$�崬�u\0�w{���p.�v���iY�烪�y���O��\0��63�<T ��8�?���c8BS� �Va*c	zv	�(%��������̹uX��4P=v6����I`+G4���9�ϝ�s2-�FZ��{ǃ½DC����u�7�N؏-�X-�k�c��B�؉���(�<4�3�R��=��8�\0����u/{�S�~���y��qV�$֥�f�ڬ��IR�29~��0���m`ۼCW1��U���s{z�I7@[Aꨈ\n� ���e�e�Y��x�b�Se����T�^+ћ�����.��6�D�	�縆H(�vlo8�J\\��-�M�� �&Y���y��+��k0Q�(X{N6�	Oܻ���Հ5�Al�`�|�ƭ���b����:� ��Z�S���8��	��5���+X��ߔi�C r�=�o�\n�|E��P�q~;�����P����h8�4�v}\"߁�\n�V�u���:!�A��E��.P�a�ޏ16lJ��Lu/�H�S$�w/�5-�1��0�KV��|�&��U��r��IAn����mEhd���6������Z�@��Y)Do���*������	��.ԟ\\C�b�C��/<�,���<���l��]����bA&���J\0�lvvV%ڢ��w���z*����EcEۆ�ܠ�qtߋ`r5\0k�z!(�DpU{��,��mUZ/����A�t9��M���vb�n��3�Da�[G̿qDI�n��#Vs8�!|1d�ќ,;UGiUU)���h.�*Rt��	Ɵ��D�����+�+�������m�+H0�~`/��tD-�.�/��ńң̤�����_���%��h8a�Y3-�^��効/f40!�xJ(4��c��u�t*\npb�B��h��tA�ce0#�݇	s��^9;y��6%^�A�u�����`Z��N��;x�\"w\\^`�SP�3�G� ���U���W8}�ء,�qm�MC?���,o8J�Y����Z�;%�\0�w^W��R�y�����W��4�n��kh��i\'̥b�lΒW�=��,�.Gkr���/l5��Di��t�8��P�UW�<k��+Ju���\0S����{�*�9���5U��*%���̦B�uܰ��w.�8`�n�x�t[.���W,�3	��-w\nSjK q���4FS3�Z�Q]CG]CY|�~���=\n�` ^���\0��YB�r���NEڞQTƨ�A�q����	M4\n�X>��:���\\\n\\t_-7�	0����SFi-a�[���W���<�V;���}.O��L�m��o=+�f,r��H>�-�컳x��z��A�0@��m��+3lQG�����U\0��8�C;�NW��Lr/�+�Q��7���.,*ؿ�M���\0c�	+�Uq�P�qx�H&\\��l���UԨ��;�et��GK\\K6�Z��BZ��ѫ�|0U�4he�f�r��7Έ꟒��>Z!�E`�.P9�j�\n��Ĥ��	�Z����Ÿ��v�p��+�@�.\0��r���sVވ\"h\\^S��Z� r;B��6�.�\"�9�z:��*⺓��1����	Q�\0�\n!�6:����F��+��\0�e��7�q$g����P�Z�7��K�`�9���4A�2�5B��c��&�B�J5MB�U��%�Y�z�\0!Ӡ)`7r��R���y�+VX���׉�ٌ���M�ZB@�=S�����l0�DVx��b��6�z�V֖�]��_�Q�1�q�[�u�p��| P�h�h���(����PHaҙ(�(p����ag�zz���|Dq���y������1xO�������*YW������(\"h�j~A�1��.l��3�bg|A�x*����\0%�-��X���T����*�r�7�����[e�8��}m(�c��G����;�{~`\0�!�[���`*�L�bԻx�\0\"\n�l�fKhO��\"�\nK�doH@j�y��1!{20�7xAͲ_5�G���ˉu}��P9/\n�|�d\"�a���`_��+*�\0X0�e�h�~���Xj��i�܊-��3���U��F��-Y��-��Y\'��,7M�_����R��_��_g����q��IB���_����MX�R������ E>b�\0��K�_>!c�vT�}��������a&4/1�Pյ\"lcs���>f�V��K�MԀB�P~bM�FZ2S���t�{\"\\aXEL�ʬ�10�Ũ�Z1-+Y�b{(V-^*ғ\0�A�nR��)i-�enY�F(�~�,�Gry:X������Y�Af�,YT9g�-��y7�Vba\\\0L�*�p(�[oƻ�5�麉�ڵ{��7Z�U���fD�z����W����0��`Z�.2<���\"#;Վ,��\'�;n�u*c+�/�)\0�/b��aH�~���\"�R���.s�R�մ�����-%V�Łi�.��ι{�Gj΃t�b3�м�Ϩ����@j��L��n:��)N�Q��s(�lHL�!����:XAZ���껁�ve�?��%��0�������� W\\������4�;�\0e�^]�����ltl,�gZ�8�^}J!�e��  ��c�{��0*C�	k�ɋ�a�A4���΋W-\0#@�e�E�m�,��(��1������c�;�>�4W�kQ�l��>�C�m)�^�VZ�lc0�)��b3��a��(_a�]}|����\0�ʭ\0чa�n,n@����u�U�)kW�ξ�-.�C����!��.��\\<��&,��U���z�&ʰ\\�W|ª�+c��!d�Tf�<�J�fFѠ�Q��U��EW�.�lz���c�ƭHg�J�ɕl/�̲��^�vFJe�_q��ev��E����\0@���0_r�ӓ���Zϖ<ĵ���P��\0�WuI�W�����k�13 \0ݣv�cѳ�`�)k�s�fg`+��t]ĝ��跃�0F����3���#\n�k�ӌ��� �ZM�������\0�<Ll��^�g�̥w�Vr/�Y���W��qL,�U�^q!��X���%]1Ψ�@eqZ������g���금6�@�{QI*ג�3�H��+�ol(z��Mh(��ڱ�\0��%=s^fG\"q0�-Z�Z\\f���0 �5ϩ�`%�Sm�-Eei[YK�{�U^�j�*�������B�?�v>8�����h��8��@*�:���a��P����i����b�b:m���p�?�����/}.�)�qQ[+�,���P�����#�Lۿ����bZTg&���׈m�ܢ����@aP���^��UT�لp��PkC�ty�.������@hՂ�z%�߽Ld��R]S�VN�[Y���z�#T�k�;�����{�c�k�`4a�I�����o\n�S�0�Kg�	r��N\\Q\n��r�z��5�f0�Ŷx\n?���Fx#b=�f_��R���>���.����9��s�	pKs0@[-��K�+�[g�@;ۨX�8�ӎ��{���Õ�a,��c]�;����DM�\0��~#�j_�S��� ���b��9�ty)�%Xb��Dy���@<$ܶ�d9�7�2��sI:5՟iB�������\n4��?�B�6�X3d=_,̌4�wt7#�į�a,7���j��y�2�[�`���\0���1ԦW��\'�0���ߊ��K��������=�(�Mx�����9U�9��\\$ר��ҳ�����L����E�+j���Z���Hۮ}K8�Lo-G���P݉��c�$<F�[W_X �l����,q+�}!�F�����`}c��U�y��r{�)�b!,\n-��!T	7K@!6��\'ed�	n0L�U�_֥F�)�������S�Y��G.>7`���wĤ��O��ݎ���Q�.T��\0�.~f����B[:�F��6Ig��1����)�`6�h�>9��(�.\0���-ݒ�x8�U����)��3X;�p#����(���� Z/�~�d-�84P��\'$��d=^>��9��Je�Z��w3��3�<[=�;KVeWw��{M�\nz!��g��l[*�=E�Y9WєL��xo��Uh�	���+��J���B�\"hT9 �����^��#7�[���bXԹuf�U��1��,t/>�u\"e��\0Z��N�9�I�p\nd\'�akb#��~�5m�h�Y?Fuڃ\'w����p���|͐j*�r��+�jQ�		c�i�V%a�����ӦӇ̰�+H�/�2����i�r4�Q9X17uqC�E��)p�{=�0�=[�)W	���k�\n�7�zT5���}c}F[5Q�n���n\0���r˵�A�v����*~����K�t*��ڎ ��o��Cv7OL<�kO�n��11��k����R�g�B.�k��	\"٫�0�r�r�:��HJ�K�\n�W��%��h���m��o��Ģȫ�,W��0I�O�(6.ܞ��,oRώ��x��*D �y����	�4n���i��F\'�B�ަl����DR�p-Jm�|���0� j �ẋ�Ufh��qp2\n�_�Ѡ�]�+ɷ\nr�yF������\0���0�7\'��Sf.�901� 32(��3�՛��ߛ0��l#q�\\�^��Ǹ���㹨�h+��Z��(K��ǵ͓*���O�ɳ�-�ġ���+ŋ8wg&�F�D�kG���C��ЍcUR����K�R���iE� �B����;���`�jYf��Ejb]�\0CK���&L�V�o+�6��8���1�#&~��i�%�iX�\nZ<5\n��!��2/ߐ�l�~`�ڙ}�i��Zc������T�	�dpLS�1�s� Zj��@hL�uJ������/)T��_��#�\0P�o�J:`]���C��W	1^�f4�� �\'�f��\0����^?�Ao3��xR,껔�f�,�|J�$r�)����:�s4�����=��e8u��ޮ�/&�H���0���/�Tm��j�\"2����F`b��^yK����Qwmx?}V~!�Ը.��C��4�j���,�[S��l�~�*��M$��p���}�\n\0�\0�٥5���@ڟ0��[s(\n#�_�/+e#L��|T�2�%f8��`��:L?����-��b��2��t�U����xï��p���\0�X�)��m8�J�#��Nj��ung-��A4�S����Y���邕�����5�Us<�\n���\0���Tj�]ta�$t� b����d����6�E�F,O�m �M��5nտ�d���&��U��SG��Xj��t�>����E!�&]�t���Ē��!�)_�`گ��=�An�q��*u�`�wUq0�	tU�F���C\'��b�6?�ܜ��C���\n�\"Ծ�`�=Re����O_�R�7�zf���1���Ն=L��qceb1��5�\'	�������;:c���7��\0pTCqs\0H\0-cr���A���<�Ņ�n}a2��3�JF�1��I��f!�yn��2�3=rgY�0mD�ćՖm2C��,x\'�HN�Vx�M����q���0\n���\\��GXV�c1�ǈ8*���\0�A�Qq�T\':iK)�9�	m~�p%���ܷ��Al&��`�Z	�\":�$��E\'���8�y��\0�p�#����q�.PPo;��bn�?~�Ȓ���q�[-��q�e�!p������lp���C��TX\0�(�զZ�d����^1�VJ����U���8	���T��\0.�3�̐h��ΥH���e ��<A����LW�mj�#(�:\0�P8\n��D��P���Vg~���L��.E�W�f7׈��)?}D!�_�t�����\0���,�����K�\nS\\�ǳ�����@F�X�ʮ��S�]�\"ҭK��X�*Z����K?|��h&qs#s��^X6x�x���{B�!��.�g�3���? _B�0������p�50.ge����ȯ�SS�	�>���ƀ���u�\0�� ��P�ǂ\"�X������.\\�7\0]��9�{���\\��}�-b_*d��#9�����߳0����5���l�*<�԰�@�� �	K)	k���r�l�<pn��#7�����Va�L�Yg��&?|�	j01��	�`K\0=S�\0b(q�#�{X.r�B�����nW�[泣��(�\0�0��s���1�.B�op��`��@.F�.�1*�E�� �p�q�0�8�5f!��a�X[,���C�#���k�R`V+\n��1X��>%�1�����GG��Ø��1��������\"\n��a�_w�f�3\"D��Y�H����6 ���˴���31��.�:�H{[�Vrk�j�|@�j��/�t�ؙ��F$���4Q�_Ha`f�a�sM�o�h���Q�eJ��)&\"���a@R�/^�}^N|Jd��Z\n�i�\0ʅ�j�Ck=�uU�l�T�\"��D��,�CkG�X��BX��4��=1,� �7\0\\UKs��\\a�{�G�.��`���W/,^��`j6R��)�qڎewbS�LR8�cO�l�.am;a�-�ԡ�X�������]���k���G�2-�\\E˘�S�CW�\0���t��&l�H� AD�&�J�!�K������?!R�R�s9:�G\0��bܥ���^Y�d�+�qW����\\j>R�ME�l�b� ��f\n7����-E�Y�.FŶ`)x�AMU1�/�f8���*PpK-D��#��n8�T�Ч0�J*,�Cq��nz�_�G�w�,�r���R]���\'&^��W��Ԁ�|�!s)�щxǈ%)֢����N����B��\"��<��y?���R���\0#�q\n5�y7^`���S1��l�a~�N�n	���6������3Kևj_�2�����!�_H&�ъe���!6`�U��������.�An�\"����`�a�+���W+�q7�0���)��M\'&!cY�Dwj%û�Q�&E-3s�~`\n����&]�_���L��W��U�fV��J�Aof0�H�b�.i�k�=0@a~Z_�6 i[�|+�PAn\\@ˈ/\00mjw/�K�(f������\05-u�Z���� ���T\0�SlWw*З઄-���c�`J���Y��s����#� ���R.�Jn�?)h�9�0Q^�j9��������j9�\n��.�ލ�r���*��\n�|�N\"���G�F������s	�6�Qз��6u\n��fF�h}�e�Gr�(�/uc��V/�T�_��/\n��\0peB�Ugd�H#!T8�Lb�Π�6�db�Ʊa��������}�Bq�qV��Z��	�\0#C.�;�%\\��!q��N*ت\\(��N��s��&Aк\nr��� j[	`�j�mqU�@+�mT^��\0P(��9V�ۢ�3����v�t�r�����Ȁ�s%b�S�7.�\'��S��d+��xH���ʡ�a�-=;�7��p�Ԧ�l��K��\nCR���g�N�F�A���UPv�B���4��:���L�v<�ag	h���8�Zq�C��SF9�	����:>r�c1?��!ɁFj�ÁqH`���Q���Z%L��]Ew�B-���h�<wx¿r�!���,�u2e�y0����z�G|±��B�`�s�\\��`{n��\0pE�5�_�>���vU��5Q��� ;\n��0E�1i���\"�w)m���e����,I�����+�7\0�v�]N]̍�\0��U����A�-h������^WUB_pX\nu/pjǉ�̽�|��s\"ۮ%�r��(�5��E�]�Jެ2�8�̡��)K��%�&�K��5jĵ��Z��AUAP\n�\"��@mܣN{�8�:��! ���p)�b	���6E���	>�4�%TC��*�@]��Ɩ�8TC8��P��1�\0��v\\;�&�\0P����*=�i~\\?�ք��!~�f���^a��TVU�;��^�����|[�\n���C�S��+�+���������Ճ����\0���^f��p�Tm�%���Y�s���;�?��4�������3Fn��hyϽ0Ơ̵3Uu��\n�l����-�����<T8\"�Q�f����","image/jpeg");
INSERT INTO tbl_man_usuarios VALUES("3","1","3","LRAMIREZ","5jW53OtH62YGci1zIoP2hNhsDf05FurAXKsbtM4uYAw=","leymargareth@yahoo.com","","A","OK","0","ADMIN","2017-03-17 13:23:01","LUIS","2017-11-04 00:00:00","http://localhost/inhgeomin/login/?q=2621ec3a9ffdc684772600aec9b715f09f9d82f9RC3-1507348498","","2018-08-15","","");
INSERT INTO tbl_man_usuarios VALUES("4","1","4","JREYES","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","julior_sk8@hotmail.es","1507620147","A","OK","0","ADMIN","2017-03-17 13:13:55","ADMIN","2017-10-22 00:00:00","http://localhost/inhgeomin/login/?q=881932524dc3fea080fbd680ba61a2abb71d6074RC4-1507620147","","2018-03-17","","");
INSERT INTO tbl_man_usuarios VALUES("5","1","5","BIZCOA","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","ale.izcoa1993@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:15:13","ADMIN","2017-11-05 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f0a481e69f3cfcc75cb4166c13d3bf07ac7bc8b0RC5-1499273528","","2018-11-05","","");
INSERT INTO tbl_man_usuarios VALUES("6","1","6","JESCOTO","6/cqXFW8Ed3JoNuhlfHgy6va8nKV3XnXGDb8gbx3gBU=","josescoto9@gmail.com","","A","OK","0","ADMIN","2017-03-17 13:16:36","ADMIN","2017-11-04 00:00:00","http://sigesvi.mywebcommunity.org/login/?q=f118b7d70e8c807a515f73e5d9fe91f8b509564fRC6-1499635734","","2018-01-26","����\0JFIF\0\0\0\0\0\0���ICC_PROFILE\0\0\0�lcms0\0\0mntrRGB XYZ �\0\0\0\0\0\0 acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\08cprt\0\0@\0\0\0Nwtpt\0\0�\0\0\0chad\0\0�\0\0\0,rXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0rTRC\0\0\0\0\0 gTRC\0\0,\0\0\0 bTRC\0\0L\0\0\0 chrm\0\0l\0\0\0$mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0\0\0\0\0s\0R\0G\0B\0 \0b\0u\0i\0l\0t\0-\0i\0n\0\0mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\02\0\0\0\0N\0o\0 \0c\0o\0p\0y\0r\0i\0g\0h\0t\0,\0 \0u\0s\0e\0 \0f\0r\0e\0e\0l\0y\0\0\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-sf32\0\0\0\0\0J\0\0����*\0\0�\0\0����������\0\0�\0\0��XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��XYZ \0\0\0\0\0\0b�\0\0��\0\0�para\0\0\0\0\0\0\0\0ff\0\0�\0\0Y\0\0�\0\0\n[para\0\0\0\0\0\0\0\0ff\0\0�\0\0Y\0\0�\0\0\n[para\0\0\0\0\0\0\0\0ff\0\0�\0\0Y\0\0�\0\0\n[chrm\0\0\0\0\0\0\0\0\0��\0\0T{\0\0L�\0\0��\0\0&f\0\0\\��\0C\0	!\"$\"$��\0C��\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�ȑ� \0\0\0\0\0\0\0\0(�猣3����|�}|�a\0\0\0\0\0\0\0�?#z�D<���>#ki��\0��)\0wt�\0\0\0\0\0\0,��|t@����H#��ǅI�G?2Xa���`A�\0\0\0\0\0\0���3���A��f�Kݒ�KTo\"�\0Y�!��#? \0\0\0\0\0bm+9	���넬��!�#a%����}7LM~Q���\0\0\0\0\0\0�C��\'��ϝIN�����eI���\0\0\0\0\0\0\0�TXFU���|�,\\�⵰jB1�\0\0\0\0\0\0\0Ĭ����X��j����Ō`\0\0\0\0\0\0��W�6�.��@�&�k���;]	���Lp\0\0\0\0\0\06���M��[�!ބ���+������&\0\0\0\0\0\0\0w�r\\�%���*��~�^V>�?�\0\0\0\0\0\0\0��O���n�>�>Oi���\0\0\0\0\0\0\0\0���o\"�󇢼�h��\0\0\0\0\0\0\0\0\0,��zzo��}\nu�\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?��\0-\0\0\0\0\0\0\0\0@!\"#14$%&�02A��\0\0���f�ͅ�wlA�3�&DШ$k�ë/95<�#�\0qG<R�Q&3Bg z�s|���X�ĉ���kp�t��$��Ț-�\\A6�ʜ����Vh��]�G��7\\[�J&�V8d�ѧ��l>�uV�cT;�NE��Z��]��)�!7qUȅ�U�V?z�N<B�r[�5���:��@��c&tS��g��#���V���-Z��!�t6�rso�`�y�<$hbݥ_+����Wx�7�8E|J }Z�f���n�*����\"ԇ�r$h=R̐�e��G5எ��ʹ5��w�Y;pqJ\"MԚ���BXc�2sJ0�.�c�l�{ж1L�����X�m����ֱ����)ݨ�v�RtX��\0�mVUUIڹ�s�<f�ݵzU�a��\nt�UԕA�Wx����E\'(����ƭ�<�A�l�+&�ኾwW��:�>=cS64��Z«�U�9�c���Y�G%$��qQ��db�=<h������Y~GF�!ŏD�b�Z���O#\n\"�<�G�U�Tu�	2��d��WE�(��1d������\'�}F�q�IJGP��T�R�Å{kH�N��$\n�Tk	f�*9�8X�t�U-S���&�G�l-}|?|�u�u5T�W*o0���9�x^��D,w�660�$s���6t���w(z`T�|M�}���:�\0>+Z9�b�B�K��i������|�����\0n�.^;�f~O�4jB���g�z���$�bo�r�	Ⱥ*|��������~�z�&�Ek5�^���Px��k��Ar�\0�����7�m����dqʳvؖ�ڤ��\'�Ym��W;�_��\0\0\0\0\0\0\0\0\0\0\0\0\0\"0`p��\0?�JF�\"�*v=�u�v�Tϛ����\0\0\0\0\0\0\0\0\0\0\0\0\0\0!01`p��\0?��cy�l� w���\0=\0	\0\0\0\0\0!1AQ\"2@RaqB���#Sb����Crs3c�������\0\0?�\0�z�T\\НF�X?��\"���a�ұX�j��[������v��X�p�DC�\n��M.&;��o#Fu?oO�C��H=�G{������)[���~!��.�\'\\sRl~u6_��Ǌ՝Gٶ�ٟmH�(����u�Ns��cv	�c�D��V�X��E��i�� ��ƿ�F������_Z(��t�_O�R}�0ⳟ���P>v�U���|��{+�T�R�Q{f��z���T��k��j��l��P��1��\0��tCo�=Mb����ʧ˹e�����\0�����rH�|��ٹSa�	�D��i�5?���kR��_ʣ>�\"j�#?�k\"�v1�+^ԎI�Љ8iRf�iXu#5s�c�}g,[������[u��G0`���R�}EH�u~\'��k3�J�f#��(�M�~;�\\��\"4��K�c��r���{H�Em q��I��Ra�ۯ�yR�d�OW�m���а�7�)�;|�NJR?v�8�]������l$�C��[M�`�]��O:[ﵔr�>�]4�Bxw����u�<x�ZV^�pmF��o}}^que���6Q�F��G�f�c��~t@\n4\0taq[<��*=A�h�0y��Wp�0vQwq�ҋ��ܹ�5�@��5�mǲj?��^�]W��Q��n��ϡE͌f���(I)\0!�-־�*��S��Ϻ�X�[v����o�oV~��)�F�v���іw�{��i2a@�_].޵<�m��<�o,ۗ���fk��ǻ<8�ʹ��P�m����qf�MEE2L��Wֳ��]�*��cM��JR ��)����q��B��ޥ��hego���T�[2G�hy�ǻM�[0��=ԓGt>Z[�RM��í%�H�i�\"��j�;Mz�;��K~�A��Tqm)��c��)��7��>��9��Xzӧ�Ֆ�N�ԫ  ��ۅ��#�a�7��vS�r���_)�8�#����\0�,XƱݛ����9a�B�h��;n��}��9v�5o� ����v�_p�BB:��u?Y�G���~C���}dm9��!��m6���)�3��Sr����0�ZL���:Yp�8�νK��o2xSb1�ڴ��w����/���o�>li��EՈ�#�t=IW��(`p��em!�\\��\"*���4�$��D���ŏs��g�ʶZ;�F8Ʊ{^.t���5�A�KՎ1�;X��!Hہ��Y/�k?���zQx���F���vO.���}���/Ҕr[{�K7-i�d�X�dnF���!��\0���?+��g<j�݇Un����*K6*(r5�=Q�Ҵ��)<K�ҷ1~�<_���Kc#l�UR?Zٰ����Ӡ���%���!m�kڳ�\"6��������璚�AS���g2��\'�b��������)��?����F��zV�WR�:���;ο����\0(\0\0\0\0\0\0\0!1AQa@q�����������\0\0?!�\0��!1~1�C�j�-��<bqZ�UB��aԂ�\0I��Ih]CC�ٟ4	:�ù���A\\�~���Btm��Y�i�\n6 � �_�ek������d��	�V�P��Ib	Kl{�+S:�u/J������-n%���^�MU\\G�Q�PB s���2< ���ٌ)����|��S�H����ʠ�]=K*�� ��<q��Ӄw\" 7�mF��՟L@`��Aw\0��){`=�6rP@�ʯ߃�W2|�E��mc7B��)���܍C2���W%\n`�/���\0%P���D��=sSz@z���%��I���b�l�1=�H^��74;��x���D�g�����\'�|W�󚢥q0�%����d6_�@�ą3��bI�^�1H��6q#V���v=�L�0ӫ�9��>D�G�M$kR�\"`]\\�+���1� DW�_�\'���-�\' 1�ָ䅃x�N�e�������@\n��rf��(G2��#f��U|іkf@�Az�#��3�h�����]`D���t��ˁ���0�������H�Ύ� `�TkAB9#�;:%T�1�s�\n��,��T�^�B�Z�ʲ���#U�g/S�h�dZ\0t���F�Z��L)���R��6�����n�/���� ����\0��z�țr�y!��R	� jK�x�,�=��f�(C\nO�=\"�{`�ڃ�U���G�񃡊L�CR:(��vJ!�xB�nO\0�����\n�ߴe�?�\0�/��DTF�yD��t�c��t)\'�FO@��oN-\0&;Q�A���PAO�XNT_!Y���4䗱��,ߠ4�4�H{y�0ّ�\'.�L�	�4��N�\n�4��Ȕ�jz���˕�\\(�� ������v<\0����\0!��3P8�Q�\\p.D�����ȕ������@X$s�C�s�p�t�`�}Do��\03�ɕF�c�\0\0,a��׆�����l!4���7|LiX��>GA�~�O����S\n��b�W؂�HF�5Z@��?&��\0�����\'TfJ�f���<�rh��k��A�m��[��9�I��¬�f%��&�7�}B9�y�H�{�������D�\'R	�_3����T�\\�tY��N����\0\0\0\0\0\0��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<�<��<��<��,!M<��<��<�M<��<��<�@<��<��<��1�(3�<��<��S S�<��<���<��<��<�\0A�<��<��<�(��<��<��,�<��<��<��<2=���<��<�<J�<��<��<��,��<��<��< <��<��<��,c�<��<��<����<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��?��\0\0	\0\0\0\0\0\0\0\0\0\0\0\0!0A`apq����\0?ޘ�.��!/��b�}�s���\0\0\0\0\0\0\0\0\0\0\0\0\0\001`p��\0?���K3B����\0(\0\0\0\0\0\0!1AQa@q�����������\0\0?�\0��$�u���;<�y�t��O�|=XKb5K�\0�{�8x����>��t\'�OA�]�a��Bd~�}*���T���1�G (��{�_��,���#	J[�c!����T��߽�#C������%|�\n�����CD�t�0�چL�3o�����$~�	��b�(�K��/n����ʊS/�EZ?Դ��(��D��� {o\n�AS�,í��� ���������R�������\"E�u�g���1	�e�/��\03LɁ�v��b��W\0�oz?ur�-9��#3��ď/FE����X��RI5\\��s��6��I�O���O��;0)�(�����6 �J4������Q!4�I�D�|�&��u\\6�#P���T�c�n+RL��#R���\0���k�w��N˺/��&�U�_�{ʿ��]�C�����!`�\\����-��u(��@f�2P���V�G�y��Ԥ7�ѩ�l���\0IM�3�Ȕ�?��M��<8��V�#pg�շ�N����B]�^\n����ǺZQ�:G����/p�T���q!�*�Q3WaSSb�7\0�1@LMב��VO�%�`�6�C-jR�����5�J�E�R7�S��C�d��R6�-��c)D�19ּ�א��/���<P���zNݺ0����?�\0���	��\'d��D����R�&ϰ%]]d�� ��[�;\\��\0Ȯ�U�2\0h� cC���l%):��:$f	���,�6:+<.��_�2��3�����h���y�Ґѷ�g��;P�@�c��Ę�[Y�}T�%zc�4�I�R�oC�����0�(Ȱ���d��1(��ۓ���<�G����/Jz佉 �a��T��-�bBπ�Q$<�X,��EB&Zֳ��Px(3A��3	f�T��<RfB\0��G|<�r�\0K1��l�)��JHK���{(��h�h��cH�n�ޝ%���rC�#�?+MLcrY[9��2�V$ESF��L�٩m��7@��Y�X`�Z�XDj�KQI����Xɞ,�\nJ��� ����z���#`�\0��hY0[z!f���bf-?\nrB#��1ޛ��%]ޛT*v�\\��v�S�ݗ�I�|��-�&��p�\0��1S�αl��ФRśk��њ�\\���YڙMӼ\na����QV����H��ԌA��Ă��ѥ�M�MrX��i�dH-��Y2^��p/��f�L��:z*����`�(��d9?u{�2�\0���DʈCD�����w�Xn�C��׆]	5$�Ɋ�Y�����;�7�j��8/�� A7�NQ���Y)�Y4tȰ�S�4q�;0M���N�3�D�B,���c���j�[�x�Gnx�\0e%��YG7�%&6��uo�x�}̞��h��38Jx��$�����9h�����*�T��b=�nH]����컗�th��ڞ�f)�?猔0L�}��_0����/��À`T�����K��v?��q�	��*4���N��`��Q9�n���r�h,`���n��l|�)�O�GL�/�3,F��3�-��k�6t���\"���3?�O��[�����I�7�*��5�iƴ̦�N[�_EIt�_���M�L�5	���$�\'䤛�G���?����L�)O�\0���\0*�̹���n/�������b�KR���2�����q�\0�?��                                                                                                                                                                                           ","image/jpeg");





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
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","234","0111-1111-11111","24","WALTER","ANTONIO","CARCAMO","NUñEZ","300","SOLTERO","CONDUCTOR","7500.00","30145","ACTIVO","V","5","SAN FRANCISCO","6","HGNGFDVSDC");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","34","0000-0000-00001","25","LOUIS","SDFSD","SDF","DFGFDF","2345","SOLTERO","DFD","345.00","45534","ACTIVO","II","2","LA CEIBA","1","SDFSDF");




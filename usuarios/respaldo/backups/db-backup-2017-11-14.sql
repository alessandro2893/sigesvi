

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

INSERT INTO tbl_aprobacion VALUES("1","1","1","DEPOSITO","5454","0","100.25","ADMIN","SSSS","2017-11-13","DGL","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("2","2","2","CHEQUE","4567890","45678","200.00","JESCOTO","HOLA PATOS","2017-11-14","DGL","NONON","JESCOTO","2017-11-14");
INSERT INTO tbl_aprobacion VALUES("3","2","2","CHEQUE","456789","34567","100.00","JESCOTO","DFH","2017-11-14","CANCELADO","NONON","JESCOTO","2017-11-14");
INSERT INTO tbl_aprobacion VALUES("4","1","2","DEPOSITO","1234","0","300.00","JESCOTO","HOLA","2017-11-14","APR","","","0000-00-00");
INSERT INTO tbl_aprobacion VALUES("5","1","3","DEPOSITO","234","0","2342.34","JESCOTO","","2017-11-14","CANCELADO","DFGHJK","ADMIN","2017-11-14");
INSERT INTO tbl_aprobacion VALUES("6","2","4","CHEQUE","233661","1","5000.00","LRAMIREZ","NINGUNA ","2017-11-14","CANCELADO","FGHJKL","ADMIN","2017-11-14");
INSERT INTO tbl_aprobacion VALUES("7","1","3","CHEQUE","1","1","1.00","JESCOTO","","2017-11-14","CANCELADO","DFGHJK","ADMIN","2017-11-14");





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
) ENGINE=InnoDB AUTO_INCREMENT=1133 DEFAULT CHARSET=utf8;

INSERT INTO tbl_bitacora VALUES("919","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:23:18");
INSERT INTO tbl_bitacora VALUES("920","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:23:26");
INSERT INTO tbl_bitacora VALUES("921","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:23:38");
INSERT INTO tbl_bitacora VALUES("922","ACTUALIZAR","tbl_man_vehiculos","placa_vehiculo","PDK-12345","RJ-45","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:24:30");
INSERT INTO tbl_bitacora VALUES("923","ACTUALIZAR","tbl_man_vehiculos","modificado_por","LRAMIREZ","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:24:30");
INSERT INTO tbl_bitacora VALUES("924","ACTUALIZAR","tbl_man_vehiculos","fecha_modificacion","2017-11-11","2017-11-13","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:24:30");
INSERT INTO tbl_bitacora VALUES("925","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:02");
INSERT INTO tbl_bitacora VALUES("926","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:02");
INSERT INTO tbl_bitacora VALUES("927","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:43");
INSERT INTO tbl_bitacora VALUES("928","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("929","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","454545","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("930","ACTUALIZAR","tbl_man_vehiculos","kilometraje","100000","454545","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("931","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("932","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("933","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:37:44");
INSERT INTO tbl_bitacora VALUES("934","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:39:44");
INSERT INTO tbl_bitacora VALUES("935","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:39:44");
INSERT INTO tbl_bitacora VALUES("936","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:39:44");
INSERT INTO tbl_bitacora VALUES("937","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:39:44");
INSERT INTO tbl_bitacora VALUES("938","INSERTAR","tbl_desglose_gastos","000001","","000001","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("939","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("940","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("941","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("942","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("943","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-13 20:42:17");
INSERT INTO tbl_bitacora VALUES("944","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 04:57:53");
INSERT INTO tbl_bitacora VALUES("945","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 04:58:13");
INSERT INTO tbl_bitacora VALUES("946","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 04:58:38");
INSERT INTO tbl_bitacora VALUES("947","INSERTAR","tbl_categoria_zona","id_categoria_zona","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 04:59:00");
INSERT INTO tbl_bitacora VALUES("948","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:24");
INSERT INTO tbl_bitacora VALUES("949","ACTUALIZAR","tbl_man_municipios","modificado_por","ADMIN","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:24");
INSERT INTO tbl_bitacora VALUES("950","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","2017-10-10","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:24");
INSERT INTO tbl_bitacora VALUES("951","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:39");
INSERT INTO tbl_bitacora VALUES("952","ACTUALIZAR","tbl_man_municipios","modificado_por","LUIS","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:39");
INSERT INTO tbl_bitacora VALUES("953","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","2017-04-11","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:01:39");
INSERT INTO tbl_bitacora VALUES("954","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:02:07");
INSERT INTO tbl_bitacora VALUES("955","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:02:07");
INSERT INTO tbl_bitacora VALUES("956","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:02:07");
INSERT INTO tbl_bitacora VALUES("957","ACTUALIZAR","tbl_man_municipios","id_zona_fk","3","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:04");
INSERT INTO tbl_bitacora VALUES("958","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:04");
INSERT INTO tbl_bitacora VALUES("959","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:04");
INSERT INTO tbl_bitacora VALUES("960","ACTUALIZAR","tbl_man_municipios","estado_municipio","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:55");
INSERT INTO tbl_bitacora VALUES("961","ACTUALIZAR","tbl_man_municipios","modificado_por","LUIS","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:55");
INSERT INTO tbl_bitacora VALUES("962","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","2017-07-02","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:03:55");
INSERT INTO tbl_bitacora VALUES("963","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:04:24");
INSERT INTO tbl_bitacora VALUES("964","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:04:24");
INSERT INTO tbl_bitacora VALUES("965","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:04:24");
INSERT INTO tbl_bitacora VALUES("966","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:15:57");
INSERT INTO tbl_bitacora VALUES("967","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:15:57");
INSERT INTO tbl_bitacora VALUES("968","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("969","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("970","ACTUALIZAR","tbl_man_vehiculos","kilometraje","454545","1111","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("971","ACTUALIZAR","tbl_man_vehiculos","kilometraje","454545","1111","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("972","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("973","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("974","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:17:02");
INSERT INTO tbl_bitacora VALUES("975","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:18:01");
INSERT INTO tbl_bitacora VALUES("976","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:18:01");
INSERT INTO tbl_bitacora VALUES("977","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:18:01");
INSERT INTO tbl_bitacora VALUES("978","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:18:01");
INSERT INTO tbl_bitacora VALUES("979","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("980","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("981","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("982","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("983","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","NO ME GUSTA TU NOMBRE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("984","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("985","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:20:15");
INSERT INTO tbl_bitacora VALUES("986","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:21:20");
INSERT INTO tbl_bitacora VALUES("987","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:21:20");
INSERT INTO tbl_bitacora VALUES("988","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:21:20");
INSERT INTO tbl_bitacora VALUES("989","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:21:20");
INSERT INTO tbl_bitacora VALUES("990","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:57");
INSERT INTO tbl_bitacora VALUES("991","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("992","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("993","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","NO ME GUSTA TU NOMBRE","NONON","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("994","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("995","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","NONON","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("996","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("997","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:26:58");
INSERT INTO tbl_bitacora VALUES("998","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:27:24");
INSERT INTO tbl_bitacora VALUES("999","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:27:25");
INSERT INTO tbl_bitacora VALUES("1000","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:27:25");
INSERT INTO tbl_bitacora VALUES("1001","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:27:25");
INSERT INTO tbl_bitacora VALUES("1002","INSERTAR","tbl_desglose_gastos","000002","","000002","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1003","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1004","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1005","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1006","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1007","ACTUALIZAR","tabla_aprobacion","estado","CANCELADO","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:32:25");
INSERT INTO tbl_bitacora VALUES("1008","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:21");
INSERT INTO tbl_bitacora VALUES("1009","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:36");
INSERT INTO tbl_bitacora VALUES("1010","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:41");
INSERT INTO tbl_bitacora VALUES("1011","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:41");
INSERT INTO tbl_bitacora VALUES("1012","INSERTAR","tbl_desglose_gastos","000003","","000003","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:59");
INSERT INTO tbl_bitacora VALUES("1013","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:59");
INSERT INTO tbl_bitacora VALUES("1014","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:59");
INSERT INTO tbl_bitacora VALUES("1015","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:59");
INSERT INTO tbl_bitacora VALUES("1016","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:33:59");
INSERT INTO tbl_bitacora VALUES("1017","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:37:52");
INSERT INTO tbl_bitacora VALUES("1018","ACTUALIZAR","tbl_man_usuarios","intentos","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:37:58");
INSERT INTO tbl_bitacora VALUES("1019","ACTUALIZAR","tbl_man_usuarios","intentos","2","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:38:08");
INSERT INTO tbl_bitacora VALUES("1020","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:40:17");
INSERT INTO tbl_bitacora VALUES("1021","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:40:17");
INSERT INTO tbl_bitacora VALUES("1022","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:40:17");
INSERT INTO tbl_bitacora VALUES("1023","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","3","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:42:52");
INSERT INTO tbl_bitacora VALUES("1024","ACTUALIZAR","tbl_man_municipios","estado_municipio","INACTIVO","ACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:42:52");
INSERT INTO tbl_bitacora VALUES("1025","ACTUALIZAR","tbl_man_zonas","estado","INACTIVO","ACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:43:34");
INSERT INTO tbl_bitacora VALUES("1026","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:08");
INSERT INTO tbl_bitacora VALUES("1027","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:08");
INSERT INTO tbl_bitacora VALUES("1028","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1029","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1030","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1031","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1032","ACTUALIZAR","tbl_man_vehiculos","kilometraje","1111","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1033","ACTUALIZAR","tbl_man_vehiculos","kilometraje","1111","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:19");
INSERT INTO tbl_bitacora VALUES("1034","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:36");
INSERT INTO tbl_bitacora VALUES("1035","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:36");
INSERT INTO tbl_bitacora VALUES("1036","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:36");
INSERT INTO tbl_bitacora VALUES("1037","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:46:36");
INSERT INTO tbl_bitacora VALUES("1038","ACTUALIZAR","tbl_man_municipios","id_zona_fk","1","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:47:25");
INSERT INTO tbl_bitacora VALUES("1039","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:47:25");
INSERT INTO tbl_bitacora VALUES("1040","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:47:25");
INSERT INTO tbl_bitacora VALUES("1041","ACTUALIZAR","tbl_man_municipios","estado_municipio","ACTIVO","INACTIVO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:10");
INSERT INTO tbl_bitacora VALUES("1042","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:10");
INSERT INTO tbl_bitacora VALUES("1043","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:10");
INSERT INTO tbl_bitacora VALUES("1044","ACTUALIZAR","tbl_man_municipios","id_zona_fk","3","2","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:45");
INSERT INTO tbl_bitacora VALUES("1045","ACTUALIZAR","tbl_man_municipios","modificado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:45");
INSERT INTO tbl_bitacora VALUES("1046","ACTUALIZAR","tbl_man_municipios","fecha_modificacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:48:45");
INSERT INTO tbl_bitacora VALUES("1047","ACTUALIZAR","tbl_man_empleados","motivo_inactividad","","VACACIONES","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 05:57:29");
INSERT INTO tbl_bitacora VALUES("1048","ACTUALIZAR","tbl_man_vehiculos","placa_vehiculo","RJ-45","PDK-852","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 06:43:22");
INSERT INTO tbl_bitacora VALUES("1049","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 06:43:22");
INSERT INTO tbl_bitacora VALUES("1050","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:27:36");
INSERT INTO tbl_bitacora VALUES("1051","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:27:43");
INSERT INTO tbl_bitacora VALUES("1052","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:30:31");
INSERT INTO tbl_bitacora VALUES("1053","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:30:43");
INSERT INTO tbl_bitacora VALUES("1054","INSERTAR","tbl_servicios_generales","id_sgenerales","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:32:48");
INSERT INTO tbl_bitacora VALUES("1055","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:32:48");
INSERT INTO tbl_bitacora VALUES("1056","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:32:48");
INSERT INTO tbl_bitacora VALUES("1057","ACTUALIZAR","tbl_man_vehiculos","estado","DISPONIBLE","ASIGNADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:32:48");
INSERT INTO tbl_bitacora VALUES("1058","ACTUALIZAR","tbl_man_vehiculos","kilometraje","0","120","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:32:48");
INSERT INTO tbl_bitacora VALUES("1059","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:34:11");
INSERT INTO tbl_bitacora VALUES("1060","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:34:11");
INSERT INTO tbl_bitacora VALUES("1061","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:34:11");
INSERT INTO tbl_bitacora VALUES("1062","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:34:11");
INSERT INTO tbl_bitacora VALUES("1063","INSERTAR","tbl_desglose_gastos","000004","","000004","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1064","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1065","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1066","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1067","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1068","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:56:47");
INSERT INTO tbl_bitacora VALUES("1069","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:57:51");
INSERT INTO tbl_bitacora VALUES("1070","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:57:51");
INSERT INTO tbl_bitacora VALUES("1071","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:57:51");
INSERT INTO tbl_bitacora VALUES("1072","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 16:57:51");
INSERT INTO tbl_bitacora VALUES("1073","INSERTAR","tbl_desglose_gastos","000005","","000005","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:01:49");
INSERT INTO tbl_bitacora VALUES("1074","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:01:49");
INSERT INTO tbl_bitacora VALUES("1075","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:01:49");
INSERT INTO tbl_bitacora VALUES("1076","ACTUALIZAR","tbl_servicios_generales","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:01:49");
INSERT INTO tbl_bitacora VALUES("1077","ACTUALIZAR","tabla_aprobacion","estado","APR","DGL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:01:49");
INSERT INTO tbl_bitacora VALUES("1078","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:02:42");
INSERT INTO tbl_bitacora VALUES("1079","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:02:43");
INSERT INTO tbl_bitacora VALUES("1080","ACTUALIZAR","tbl_unidad_solicitante","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:03:08");
INSERT INTO tbl_bitacora VALUES("1081","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:03:10");
INSERT INTO tbl_bitacora VALUES("1082","ACTUALIZAR","tbl_servicios_generales","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:03:10");
INSERT INTO tbl_bitacora VALUES("1083","ACTUALIZAR","tabla_aprobacion","estado","DGL","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:03:10");
INSERT INTO tbl_bitacora VALUES("1084","ACTUALIZAR","tbl_man_usuarios","intentos","0","1","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:52:19");
INSERT INTO tbl_bitacora VALUES("1085","ACTUALIZAR","tbl_man_usuarios","intentos","1","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 17:52:54");
INSERT INTO tbl_bitacora VALUES("1086","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1087","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1088","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1089","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1090","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","FGHJHG","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1091","ACTUALIZAR","tabla_aprobacion","cancelado_por","","JESCOTO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1092","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:13");
INSERT INTO tbl_bitacora VALUES("1093","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:35");
INSERT INTO tbl_bitacora VALUES("1094","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","EN GIRA","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:35");
INSERT INTO tbl_bitacora VALUES("1095","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","APR","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:35");
INSERT INTO tbl_bitacora VALUES("1096","INSERTAR","tbl_aprobacion","id_aprobacion","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:05:35");
INSERT INTO tbl_bitacora VALUES("1097","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:30:35");
INSERT INTO tbl_bitacora VALUES("1098","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:30:35");
INSERT INTO tbl_bitacora VALUES("1099","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:31:13");
INSERT INTO tbl_bitacora VALUES("1100","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","DFGH","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:31:13");
INSERT INTO tbl_bitacora VALUES("1101","ACTUALIZAR","tbl_man_empleados","estado_gira","UNISOL","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:31:24");
INSERT INTO tbl_bitacora VALUES("1102","ACTUALIZAR","tbl_unidad_solicitante","estado","UNISOL","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:46:37");
INSERT INTO tbl_bitacora VALUES("1103","ACTUALIZAR","tbl_unidad_solicitante","motivo_cancelacion","","FGHJKL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:46:37");
INSERT INTO tbl_bitacora VALUES("1104","ACTUALIZAR","tbl_man_empleados","estado_gira","APR","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:46:38");
INSERT INTO tbl_bitacora VALUES("1105","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1106","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1107","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1108","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1109","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","FGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1110","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1111","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:47:19");
INSERT INTO tbl_bitacora VALUES("1112","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:48:49");
INSERT INTO tbl_bitacora VALUES("1113","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:48:49");
INSERT INTO tbl_bitacora VALUES("1114","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:48:49");
INSERT INTO tbl_bitacora VALUES("1115","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FGHJK","FGHJKL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:48:49");
INSERT INTO tbl_bitacora VALUES("1116","ACTUALIZAR","tbl_unidad_solicitante","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1117","ACTUALIZAR","tbl_man_empleados","estado_gira","EN GIRA","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1118","ACTUALIZAR","tbl_servicios_generales","estado","APR","SERVIGE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1119","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FGHJHG","FGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1120","ACTUALIZAR","tabla_aprobacion","cancelado_por","JESCOTO","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1121","ACTUALIZAR","tabla_aprobacion","estado","APR","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1122","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","","FGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1123","ACTUALIZAR","tabla_aprobacion","cancelado_por","","ADMIN","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1124","ACTUALIZAR","tabla_aprobacion","fecha_cancelacion","0000-00-00","2017-11-14","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:42");
INSERT INTO tbl_bitacora VALUES("1125","ACTUALIZAR","tbl_unidad_solicitante","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:50");
INSERT INTO tbl_bitacora VALUES("1126","ACTUALIZAR","tbl_man_empleados","estado_gira","SERVIGE","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:52");
INSERT INTO tbl_bitacora VALUES("1127","ACTUALIZAR","tbl_servicios_generales","estado","SERVIGE","CANCELADO","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:52");
INSERT INTO tbl_bitacora VALUES("1128","ACTUALIZAR","tbl_man_vehiculos","estado","ASIGNADO","DISPONIBLE","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:52");
INSERT INTO tbl_bitacora VALUES("1129","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FGHJK","DFGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:52");
INSERT INTO tbl_bitacora VALUES("1130","ACTUALIZAR","tabla_aprobacion","motivo_cancelacion","FGHJK","DFGHJK","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 18:49:52");
INSERT INTO tbl_bitacora VALUES("1131","INSERTAR","tbl_unidad_solicitante","id_usoli","0","0","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 19:17:05");
INSERT INTO tbl_bitacora VALUES("1132","ACTUALIZAR","tbl_man_empleados","estado_gira","DISPONIBLE","UNISOL","2373032_sigesvi","fdb16.runhosting.com","2017-11-14 19:17:06");





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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO tbl_categoria_zona VALUES("1","1","1","2375.00","2275.00","ACTIVO","","0000-00-00","LUIS","2017-11-05");
INSERT INTO tbl_categoria_zona VALUES("2","1","2","2063.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-17");
INSERT INTO tbl_categoria_zona VALUES("3","1","3","1750.00","1675.00","ACTIVO","","0000-00-00","ADMIN","2017-10-16");
INSERT INTO tbl_categoria_zona VALUES("4","1","4","1437.50","1375.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");
INSERT INTO tbl_categoria_zona VALUES("5","1","5","1125.00","1075.00","ACTIVO","","0000-00-00","ADMIN","2017-11-10");
INSERT INTO tbl_categoria_zona VALUES("6","2","1","2062.50","1975.00","ACTIVO","","0000-00-00","ADMIN","2017-10-18");
INSERT INTO tbl_categoria_zona VALUES("9","2","2","1200.35","1300.45","ACTIVO","JESCOTO","2017-11-14","","0000-00-00");
INSERT INTO tbl_categoria_zona VALUES("10","2","3","1500.00","1400.00","ACTIVO","JESCOTO","2017-11-14","","0000-00-00");
INSERT INTO tbl_categoria_zona VALUES("11","2","4","1350.60","1450.00","ACTIVO","JESCOTO","2017-11-14","","0000-00-00");
INSERT INTO tbl_categoria_zona VALUES("12","2","5","1100.25","1250.75","ACTIVO","JESCOTO","2017-11-14","","0000-00-00");





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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO tbl_desglose_gastos VALUES("1","1","000001","OCOTEPEQUE NUEVA OCOTEPEQUE","2063.50","1","2063.50","","20.05","","110.50","2194.05","100.25","2093.80","Saldo Favor Empleado","ksjksjskjskjskjskjsks","ADMIN","2017-11-13","DGL","","","");
INSERT INTO tbl_desglose_gastos VALUES("2","2","000002","ATLANTIDA LA CEIBA","1750.00","0.5","875.00","combustible","12.10","otros","1.12","877.33","200.00","677.33","Saldo Favor Empleado","qdsafsa","JESCOTO","2017-11-14","CANCELADO","HOLA","2017-11-14","JESCOTO");
INSERT INTO tbl_desglose_gastos VALUES("3","2","000003","ATLANTIDA LA CEIBA","1750.00","0.5","875.00","","0.00","","0.00","875.00","200.00","675.00","Saldo Favor Empleado","","JESCOTO","2017-11-14","DGL","","","");
INSERT INTO tbl_desglose_gastos VALUES("4","6","000004","OLANCHO CATACAMAS","2063.50","2","4127.00","hhhh","500.00","hhhh","200.00","4827.00","5000.00","173.00","Saldo Favor DEFOMIN","ninguna \n","LRAMIREZ","2017-11-14","CANCELADO","HHHHHH","2017-11-14","LRAMIREZ");
INSERT INTO tbl_desglose_gastos VALUES("5","6","000005","OLANCHO CATACAMAS","2063.50","2","4127.00","ggg","3000.00","ggg","1000.00","8127.00","5000.00","3127.00","Saldo Favor Empleado","lll","LRAMIREZ","2017-11-14","CANCELADO","HHHHHH","2017-11-14","LRAMIREZ");





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
INSERT INTO tbl_man_categoria_empleados VALUES("2","II","XII, XIII, XIV, XV","DIRECTIVOS","SECRETARIOS GENERALES, DIRECTIVOS GENER ","ACTIVO","ADMIN","2017-03-14","ADMIN","2017-11-13");
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
INSERT INTO tbl_man_empleados VALUES("3","2","1","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","0814-1986-00238","CASADO","AUDITOR","10000.00","8862-4608","548754652125","ACTIVO","ADMIN","2017-03-17","ADMIN","2017-11-10","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("4","2","4","JULIO","JOSUE","REYES","POSADAS","5754","0801-1987-16541","default","CONDUCTOR","10000.00","4444-4444","6524587562124","ACTIVO","ADMIN","2017-03-18","LUIS","2017-07-20","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("5","3","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","0801-1994-00395","CASADO","ANALISTA","10000.00","5555-5555","35214523012401","ACTIVO","ADMIN","2017-03-17","JESCOTO","2017-10-21","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("6","4","1","JOSE","RAMON","ESCOTO","FLORES","5648","0801-2008-11111","SOLTERO","CONDUCTOR","10000.00","6666-6666","5426854210324","ACTIVO","ADMIN","2017-03-16","LUIS","2017-11-10","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("7","3","10","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","2222-2222-22222","CASADO","CONSERJE","9500.00","7777-7777","8457853045215","ACTIVO","ADMIN","2017-03-16","","2017-03-17","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("8","3","2","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","0801-1995-05809","SOLTERO","PROGRAMADOR","9999.00","2222-2222","5421542658541","ACTIVO","ADMIN","2017-03-07","LUIS","2017-11-13","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("9","3","7","PEDRO","ANTONIO","FUNEZ","SUNIGA","2","5555-5555-55555","SOLTERO","CATRASTOFICO","10000.00","5555-5555","987654321","ACTIVO","LUIS","2017-04-13","","0000-00-00","DISPONIBLE","");
INSERT INTO tbl_man_empleados VALUES("10","3","5","CRISTIAN","JOSUE","RIVERA","RAMIREZ","9999","3333-3333-33333","SOLTERO","PROGRAMADOR","20000.00","2222-2222","987654321","ACTIVO","ADMIN","2017-04-21","","0000-00-00","DISPONIBLE","");
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
INSERT INTO tbl_man_empleados VALUES("30","4","1","JAIME","TONY","MORATA","LLANOS","1234","2222-2222-22221","SOLTERO","CONDUCTOR","10000.00","2345-522","235234","ACTIVO","LUIS","2017-11-10","LUIS","2017-11-11","UNISOL","");
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

INSERT INTO tbl_man_municipios VALUES("1","1","3","LA CEIBA","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("2","1","3","EL PORVENIR","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("3","1","2","ESPARTA","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("4","1","3","JUTIAPA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("5","1","3","LA MASICA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("6","1","3","SAN FRANCISCO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("7","1","2","TELA","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("8","1","3","ARIZONA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("9","2","3","RUJILLO","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("10","2","3","BALFATE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("11","2","3","IRIONA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("12","2","3","LIMON","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("13","2","3","SABA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("14","2","3","SANTA FE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("15","2","3","SANTA ROSA DE AGUAN","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("16","2","3","SONAGUERA","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("17","2","2","TOCOA","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("18","2","3","BONITO ORIENTAL","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("19","3","2","COMAYAGUA","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
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
INSERT INTO tbl_man_municipios VALUES("36","3","1","SIGUATEPEQUE","INACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
INSERT INTO tbl_man_municipios VALUES("37","3","3","VILLA DE SAN ANTONIO","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("38","3","3","LAJAS","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("39","3","3","TAULABE","ACTIVO","JREYES","2017-03-25","","0000-00-00");
INSERT INTO tbl_man_municipios VALUES("40","4","2","SANTA ROSA DE COPAN","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
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
INSERT INTO tbl_man_municipios VALUES("283","17","2","CARIDAD","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
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
INSERT INTO tbl_man_municipios VALUES("294","18","2","OLANCHITO","ACTIVO","JREYES","2017-03-25","JESCOTO","2017-11-14");
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
INSERT INTO tbl_man_usuarios VALUES("2","1","2","LUIS","M/DdDvUyJHSjvZsYFnFeuBSzlKqxD33rCURbXnSkvQk=","richard.ordoez@yahoo.es","","A","OK","0","ADMIN","2017-03-14 00:00:00","LUIS","2017-11-13 00:00:00","http://localhost/inhgeomin/login/?q=260f10cbcffedec9f18d83455277e8c10ed4263aRC2-1507614824","0000-00-00 00:00:00","2018-01-17");
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

INSERT INTO tbl_man_vehiculos VALUES("1","1","PICKUP","5","RJ-45","NISSAN","FRONTIER","AZUL","DISPONIBLE","LUIS","2017-04-22","ADMIN","2017-11-13","0");
INSERT INTO tbl_man_vehiculos VALUES("2","2","PICKUP","5","PDK-852","NISSAN","FRONTIER","ROJO","DISPONIBLE","LUIS","2017-04-22","JESCOTO","2017-11-14","120");
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
INSERT INTO tbl_man_zonas VALUES("3","ZONA 3","ADMIN","2017-03-18","JESCOTO","2017-11-14","ACTIVO");





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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO tbl_servicios_generales VALUES("1","0","1","2017-11-13","2017-11-14","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-13","ADMIN","SERVIGE","13112017141120171","");
INSERT INTO tbl_servicios_generales VALUES("2","1","1","2017-11-13","2017-11-14","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-13","ADMIN","DGL","13112017141120171","");
INSERT INTO tbl_servicios_generales VALUES("3","0","1","2017-11-14","2017-11-14","ATLANTIDA LA CEIBA","2017-11-14","JESCOTO","SERVIGE","14112017141120171","");
INSERT INTO tbl_servicios_generales VALUES("4","2","1","2017-11-14","2017-11-14","ATLANTIDA LA CEIBA","2017-11-14","JESCOTO","DGL","14112017141120171","");
INSERT INTO tbl_servicios_generales VALUES("5","3","1","2017-11-14","2017-11-22","OCOTEPEQUE NUEVA OCOTEPEQUE","2017-11-14","JESCOTO","CANCELADO","14112017221120171","");
INSERT INTO tbl_servicios_generales VALUES("6","4","2","2017-11-14","2017-11-16","OLANCHO CATACAMAS","2017-11-14","LRAMIREZ","CANCELADO","14112017161120171","");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_unidad_solicitante VALUES("1","1","3","2017-11-13","2017-11-14","OCOTEPEQUE NUEVA OCOTEPEQUE","SSSS","1.00","2063.50","2063.50","DGL","000001","13112017141120171","2017-11-13","ADMIN","");
INSERT INTO tbl_unidad_solicitante VALUES("2","1","42","2017-11-14","2017-11-14","ATLANTIDA LA CEIBA","HJK","0.50","1750.00","875.00","DGL","000002","14112017141120171","2017-11-14","JESCOTO","");
INSERT INTO tbl_unidad_solicitante VALUES("3","1","30","2017-11-14","2017-11-22","OCOTEPEQUE NUEVA OCOTEPEQUE","ASDAD","8.00","1437.50","11500.00","CANCELADO","000003","14112017221120171","2017-11-14","JESCOTO","");
INSERT INTO tbl_unidad_solicitante VALUES("4","1","3","2017-11-14","2017-11-16","OLANCHO CATACAMAS","INSPECCION","2.00","2063.50","4127.00","CANCELADO","000004","14112017161120171","2017-11-14","LRAMIREZ","");
INSERT INTO tbl_unidad_solicitante VALUES("5","1","3","2017-11-14","2017-11-15","OLANCHO CATACAMAS","HHHH","1.00","2063.50","2063.50","CANCELADO","000005","14112017151120171","2017-11-14","LRAMIREZ","FGHJKL");
INSERT INTO tbl_unidad_solicitante VALUES("6","1","29","2017-11-14","2018-01-13","OLANCHO CATACAMAS","FHJKL","60.00","2275.00","757575.00","CANCELADO","000006","14112017130120181","2017-11-14","ADMIN","DFGH");
INSERT INTO tbl_unidad_solicitante VALUES("7","3","30","2017-11-16","2017-11-17","VALLE ALIANZA","SADSF","1.10","0.00","0.00","UNISOL","000007","16112017171120173","2017-11-14","JESCOTO","");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_apro_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) where (`tbl_cate_zonas`.`id_categoria_fk` = `tbl_cate`.`id_categoria`);

INSERT INTO v_apro_solicitud VALUES("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","29","66666555555555555555","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","1","I","6","2017-11-14","2018-01-13","OLANCHO CATACAMAS","CANCELADO","60.00","2275.00","757575.00","000006","14112017130120181");
INSERT INTO v_apro_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2063.50","1975.00","1","SERVICIOS GENERALES","2","II","1","2017-11-13","2017-11-14","OCOTEPEQUE NUEVA OCOTEPEQUE","DGL","1.00","2063.50","2063.50","000001","13112017141120171");
INSERT INTO v_apro_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2063.50","1975.00","1","SERVICIOS GENERALES","2","II","4","2017-11-14","2017-11-16","OLANCHO CATACAMAS","CANCELADO","2.00","2063.50","4127.00","000004","14112017161120171");
INSERT INTO v_apro_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2063.50","1975.00","1","SERVICIOS GENERALES","2","II","5","2017-11-14","2017-11-15","OLANCHO CATACAMAS","CANCELADO","1.00","2063.50","2063.50","000005","14112017151120171");
INSERT INTO v_apro_solicitud VALUES("QWE QWE","42","1231","1","ZONA 1","1750.00","1675.00","1","SERVICIOS GENERALES","3","III","2","2017-11-14","2017-11-14","ATLANTIDA LA CEIBA","DGL","0.50","1750.00","875.00","000002","14112017141120171");
INSERT INTO v_apro_solicitud VALUES("JAIME MORATA","30","235234","1","ZONA 1","1437.50","1375.00","1","SERVICIOS GENERALES","4","IV","3","2017-11-14","2017-11-22","OCOTEPEQUE NUEVA OCOTEPEQUE","CANCELADO","8.00","1437.50","11500.00","000003","14112017221120171");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_can_solicitud` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_zonas`.`nombre_zona` AS `zona`,`tbl_cate_zonas`.`periodo_corto` AS `monto_pc`,`tbl_cate_zonas`.`periodo_largo` AS `monto_pl`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_cate`.`categoria` AS `categoria`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`lugar_gira` AS `lugar_gira`,`tbl_usoli`.`estado` AS `estado`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`codigo_gira` AS `cgira`,`tbl_apr`.`fecha_emision` AS `fecha_emision` from ((((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_cate`.`id_categoria` = `tbl_emp`.`id_categoria_fk`))) join `tbl_aprobacion` `tbl_apr` on((`tbl_usoli`.`id_usoli` = `tbl_apr`.`id_usoli_fk`))) join `tbl_categoria_zona` `tbl_cate_zonas` on((`tbl_zonas`.`id_zona` = `tbl_cate_zonas`.`id_zona_fk`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_depe`.`id_dependencia` = `tbl_emp`.`id_dependencia_FK`))) group by `tbl_usoli`.`id_usoli`;

INSERT INTO v_can_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","2","II","1","2017-11-13","2017-11-14","OCOTEPEQUE NUEVA OCOTEPEQUE","DGL","1.00","2063.50","2063.50","000001","13112017141120171","2017-11-13");
INSERT INTO v_can_solicitud VALUES("QWE QWE","42","1231","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","3","III","2","2017-11-14","2017-11-14","ATLANTIDA LA CEIBA","DGL","0.50","1750.00","875.00","000002","14112017141120171","2017-11-14");
INSERT INTO v_can_solicitud VALUES("JAIME MORATA","30","235234","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","4","IV","3","2017-11-14","2017-11-22","OCOTEPEQUE NUEVA OCOTEPEQUE","CANCELADO","8.00","1437.50","11500.00","000003","14112017221120171","2017-11-14");
INSERT INTO v_can_solicitud VALUES("LEYDY RAMIREZ","3","548754652125","1","ZONA 1","2375.00","2275.00","1","SERVICIOS GENERALES","2","II","4","2017-11-14","2017-11-16","OLANCHO CATACAMAS","CANCELADO","2.00","2063.50","4127.00","000004","14112017161120171","2017-11-14");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_desglose` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cargo` AS `cargo`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_zonas`.`nombre_zona` AS `nombre_zona`,`tbl_zonas`.`id_zona` AS `id_zona`,`tbl_usoli`.`id_usoli` AS `id_usoli`,`tbl_usoli`.`dias_gira` AS `dias_gira`,`tbl_usoli`.`viaticos_diarios` AS `viaticos_diarios`,`tbl_usoli`.`total_viaticos` AS `total_viaticos`,`tbl_usoli`.`correlativo` AS `correlativo`,`tbl_usoli`.`lugar_gira` AS `lgira`,`tbl_usoli`.`proposito` AS `pgira`,`tbl_usoli`.`fecha_salida` AS `f_salida`,`tbl_usoli`.`fecha_retorno` AS `f_retorno`,`tbl_usoli`.`estado` AS `estado`,`tbl_sgenerales`.`id_vehiculo_fk` AS `id_vehiculo`,`tbl_sgenerales`.`id_sgenerales` AS `id_sgenerales`,`tbl_apro`.`anticipo` AS `anticipo`,`tbl_apro`.`id_aprobacion` AS `id_aprobacion`,`tbl_apro`.`num_transaccion` AS `num_transaccion`,`tbl_apro`.`tipo_transaccion` AS `tipo_transaccion` from (((((`tbl_unidad_solicitante` `tbl_usoli` join `tbl_man_zonas` `tbl_zonas` on((`tbl_usoli`.`id_zona_fk` = `tbl_zonas`.`id_zona`))) join `tbl_man_empleados` `tbl_emp` on((`tbl_usoli`.`id_empleado_fk` = `tbl_emp`.`id_empleado`))) join `tbl_servicios_generales` `tbl_sgenerales` on((`tbl_usoli`.`id_usoli` = `tbl_sgenerales`.`id_usoli_fk`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_aprobacion` `tbl_apro` on((`tbl_usoli`.`id_usoli` = `tbl_apro`.`id_usoli_fk`)));

INSERT INTO v_desglose VALUES("LEYDY RAMIREZ","3","AUDITOR","II","2","ZONA 1","1","1","1.00","2063.50","2063.50","000001","OCOTEPEQUE NUEVA OCOTEPEQUE","SSSS","2017-11-13","2017-11-14","DGL","1","2","100.25","1","5454","DEPOSITO");
INSERT INTO v_desglose VALUES("QWE QWE","42","CONDUCTOR","III","3","ZONA 1","1","2","0.50","1750.00","875.00","000002","ATLANTIDA LA CEIBA","HJK","2017-11-14","2017-11-14","DGL","1","4","200.00","2","4567890","CHEQUE");
INSERT INTO v_desglose VALUES("QWE QWE","42","CONDUCTOR","III","3","ZONA 1","1","2","0.50","1750.00","875.00","000002","ATLANTIDA LA CEIBA","HJK","2017-11-14","2017-11-14","DGL","1","4","100.00","3","456789","CHEQUE");
INSERT INTO v_desglose VALUES("QWE QWE","42","CONDUCTOR","III","3","ZONA 1","1","2","0.50","1750.00","875.00","000002","ATLANTIDA LA CEIBA","HJK","2017-11-14","2017-11-14","DGL","1","4","300.00","4","1234","DEPOSITO");
INSERT INTO v_desglose VALUES("JAIME MORATA","30","CONDUCTOR","IV","4","ZONA 1","1","3","8.00","1437.50","11500.00","000003","OCOTEPEQUE NUEVA OCOTEPEQUE","ASDAD","2017-11-14","2017-11-22","CANCELADO","1","5","2342.34","5","234","DEPOSITO");
INSERT INTO v_desglose VALUES("JAIME MORATA","30","CONDUCTOR","IV","4","ZONA 1","1","3","8.00","1437.50","11500.00","000003","OCOTEPEQUE NUEVA OCOTEPEQUE","ASDAD","2017-11-14","2017-11-22","CANCELADO","1","5","1.00","7","1","CHEQUE");
INSERT INTO v_desglose VALUES("LEYDY RAMIREZ","3","AUDITOR","II","2","ZONA 1","1","4","2.00","2063.50","4127.00","000004","OLANCHO CATACAMAS","INSPECCION","2017-11-14","2017-11-16","CANCELADO","2","6","5000.00","6","233661","CHEQUE");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_empleados` AS select concat(`tbl_emp`.`nombre1`,' ',`tbl_emp`.`apellido1`) AS `nombre`,(select if((unix_timestamp(now()) > unix_timestamp(`tbl_man_conductor`.`fecha_vencimiento`)),'VENCIDA','VIGENTE') from `tbl_man_conductor` where (`tbl_man_conductor`.`id_empleado_fk` = `tbl_emp`.`id_empleado`)) AS `estado_lic`,`tbl_emp`.`estado` AS `estado`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`reloj_marcador` AS `reloj`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`estado_gira` AS `estado_gira`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia` from ((`tbl_man_empleados` `tbl_emp` join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`)));

INSERT INTO v_empleados VALUES("LUIS ORDONEZ","","ACTIVO","2","12345678","0801-1995-05807","1234","PROGRAMADOR SFSSDF SFSDF","DISPONIBLE","I","1","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("SAID ROJAS","","ACTIVO","11","23456","4444-4444-44444","2342","CONSERJE","DISPONIBLE","I","1","MINAS Y GEOLOGIA","9");
INSERT INTO v_empleados VALUES("PEDRO ZELAYA","","ACTIVO","17","23222222222222222222","6666-6666-66666","65465","CONDUCTOR","DISPONIBLE","I","1","LABORATORIO","11");
INSERT INTO v_empleados VALUES("KARLA GARCIA","","ACTIVO","18","0801198106359","0801-1981-06359","10527","GERENTE","DISPONIBLE","I","1","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("GUILLERMO DOLORES","","ACTIVO","20","67890","1234-2134-12412","23412","DFGHJ","DISPONIBLE","I","1","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("HAROLD BETANCOUR","","ACTIVO","21","09876543","9999-9999-99999","2000","CONDUCTOR","DISPONIBLE","I","1","RELACIONES PUBLICAS","12");
INSERT INTO v_empleados VALUES("QUIMBERLIN MUNOZ","","ACTIVO","22","7777777777","7777-7777-77777","7777","CONDUCTOR","DISPONIBLE","I","1","SECRETARIA LEGAL","10");
INSERT INTO v_empleados VALUES("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","VENCIDA","ACTIVO","27","545445","0801-1981-06358","5445","CONDUCTOR","DISPONIBLE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","","ACTIVO","29","66666555555555555555","0801-1990-88888","12341","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","DISPONIBLE","I","1","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("SADA ZXX","","ACTIVO","39","234234","8888-8888-88881","23423","SADASD","DISPONIBLE","I","1","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("LEYDY RAMIREZ","","ACTIVO","3","548754652125","0814-1986-00238","5383","AUDITOR","DISPONIBLE","II","2","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JULIO REYES","","ACTIVO","4","6524587562124","0801-1987-16541","5754","CONDUCTOR","DISPONIBLE","II","2","RECURSOS HUMANOS","4");
INSERT INTO v_empleados VALUES("JUANITO GARCIA","","ACTIVO","15","0258","0777-7777-77777","25","CONDUCTOR","DISPONIBLE","II","2","LABORATORIO","11");
INSERT INTO v_empleados VALUES("SONIASSSSSS MATUTE","","ACTIVO","16","0257","0888-8888-88888","3","OBRERO","DISPONIBLE","II","2","DESARROLLO SOCIAL","8");
INSERT INTO v_empleados VALUES("TATIANA BUQUE","","ACTIVO","19","98765","1213-2412-34123","1234","PRUEBAN","DISPONIBLE","II","2","INFORMATICA","6");
INSERT INTO v_empleados VALUES("LOUIS SDF","","ACTIVO","25","45534","0000-0000-00001","2345","DFD","DISPONIBLE","II","2","AMBIENTE Y SEGURIDAD","7");
INSERT INTO v_empleados VALUES("CARLOS MERINO","","ACTIVO","31","2323","1111-1111-11112","232","CASDF","DISPONIBLE","II","2","CATASTRAL","3");
INSERT INTO v_empleados VALUES("BRIAN IZCOA","","ACTIVO","5","35214523012401","0801-1994-00395","6377","ANALISTA","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("ADAN RAMIREZ","","ACTIVO","7","8457853045215","2222-2222-22222","4567","CONSERJE","DISPONIBLE","III","3","SECRETARIA LEGAL","10");
INSERT INTO v_empleados VALUES("JUAN BONILLA","","ACTIVO","8","5421542658541","0801-1995-05809","1","PROGRAMADOR","DISPONIBLE","III","3","FISCALIZACION","2");
INSERT INTO v_empleados VALUES("PEDRO FUNEZ","","ACTIVO","9","987654321","5555-5555-55555","2","CATRASTOFICO","DISPONIBLE","III","3","AMBIENTE Y SEGURIDAD","7");
INSERT INTO v_empleados VALUES("CRISTIAN RIVERA","","ACTIVO","10","987654321","3333-3333-33333","9999","PROGRAMADOR","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("MARTHA LOPEZ","","ACTIVO","12","1111-1111-1111-1111","1111-1111-11111","900","GERENTE DE RECURSOS HUMANOS","DISPONIBLE","III","3","CATASTRAL","3");
INSERT INTO v_empleados VALUES("LOURDES ORELLANA","","ACTIVO","14","123654798","0801-1993-01402","555","ASESORA","DISPONIBLE","III","3","MINAS Y GEOLOGIA","9");
INSERT INTO v_empleados VALUES("KAREN PEREZ","","ACTIVO","23","1587","0000-0000-00000","110","CONDUCTOR","DISPONIBLE","III","3","DESARROLLO SOCIAL","8");
INSERT INTO v_empleados VALUES("JUAN LOPEZ","","ACTIVO","26","0101100100","0801-2018-00017","10101","SUPERVISOR","DISPONIBLE","III","3","INFORMATICA","6");
INSERT INTO v_empleados VALUES("AAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSSS CCCCCCCSSSSSSSSSSSSSSSSSSSSSSSSSSS","","ACTIVO","28","215615151","1222-2222-22222","24555","ADMINISTRADOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("LUIS VILLEGAS","VENCIDA","ACTIVO","34","23","2222-2222-22224","32423","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("ANGEL DORMEZ","VENCIDA","ACTIVO","37","12213","7777-7777-77771","21312","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("MARIA ARIAS","VENCIDA","ACTIVO","38","12312","4444-4444-44443","23432","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("IIIII UUUUU","VENCIDA","ACTIVO","40","234234","3333-3333-33332","23423","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("QWE QWE","VENCIDA","ACTIVO","42","1231","1000-0000-00000","21312","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("ASDA CSXCF","VENCIDA","ACTIVO","43","234","2000-0000-00000","12123","CONDUCTOR","DISPONIBLE","III","3","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("BGF NWNWNW","","ACTIVO","46","213123","1200-0000-00000","23424","CUALQUIERA","DISPONIBLE","III","3","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("ANA VASQUEZ","VENCIDA","ACTIVO","1","524512456235","1709-1996-00602","1234","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JOSE ESCOTO","VIGENTE","ACTIVO","6","5426854210324","0801-2008-11111","5648","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("MARITZA FLORES","","INACTIVO","13","243234","8888-8888-88888","234","CONDUCTOR","DISPONIBLE","IV","4","CATASTRAL","3");
INSERT INTO v_empleados VALUES("JAIME MORATA","VENCIDA","ACTIVO","30","235234","2222-2222-22221","1234","CONDUCTOR","UNISOL","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("ALEJANDRO JIMENES","VENCIDA","ACTIVO","32","12312","1111-1111-11113","678","CONDUCTOR","DISPONIBLE","IV","4","CONTABILIDAD","5");
INSERT INTO v_empleados VALUES("MARIA ZAMBRANO","VENCIDA","ACTIVO","33","23423","2222-2222-22223","23452","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("HECTOR GONZALES","VENCIDA","ACTIVO","35","21123","3333-3333-33331","21321","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("JULIO RUIZ","VENCIDA","ACTIVO","36","212312","4444-4444-44441","2342","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("CASD CASD","VENCIDA","ACTIVO","41","2342","0000-0000-00003","2345","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("FGHFHF MQMQMQ","VIGENTE","ACTIVO","45","2132","7000-0000-00000","23423","CONDUCTOR","DISPONIBLE","IV","4","SERVICIOS GENERALES","1");
INSERT INTO v_empleados VALUES("WALTER CARCAMO","","ACTIVO","24","30145","0111-1111-11111","300","CONDUCTOR","DISPONIBLE","V","5","MINAS Y GEOLOGIA","9");
INSERT INTO v_empleados VALUES("ASDASD CASDF","VENCIDA","ACTIVO","44","123","3000-0000-00000","12312","CONDUCTOR","DISPONIBLE","V","5","SERVICIOS GENERALES","1");





CREATE ALGORITHM=UNDEFINED DEFINER=`2373032_sigesvi`@`%` SQL SECURITY DEFINER VIEW `v_traer_empleados` AS select `tbl_depe`.`dependencia` AS `dependencia`,`tbl_depe`.`id_dependencia` AS `id_dependencia`,`tbl_emp`.`telefono` AS `telefono`,`tbl_emp`.`tarjeta_identidad` AS `identidad`,`tbl_emp`.`id_empleado` AS `id_empleado`,`tbl_emp`.`nombre1` AS `nombre1`,`tbl_emp`.`nombre2` AS `nombre2`,`tbl_emp`.`apellido1` AS `apellido1`,`tbl_emp`.`apellido2` AS `apellido2`,`tbl_emp`.`reloj_marcador` AS `reloj_marcador`,`tbl_emp`.`estado_civil` AS `estado_civil`,`tbl_emp`.`cargo` AS `cargo`,`tbl_emp`.`salario` AS `salario`,`tbl_emp`.`cta_bancaria` AS `cta_bancaria`,`tbl_emp`.`estado` AS `estado`,`tbl_cate`.`categoria` AS `categoria`,`tbl_cate`.`id_categoria` AS `id_categoria`,`tbl_muni`.`municipio` AS `municipio`,`tbl_dire`.`id_municipio_fk` AS `id_municipio_fk`,`tbl_dire`.`direccion_detalle` AS `direccion` from ((((`tbl_man_empleados` `tbl_emp` join `tbl_man_dependencia` `tbl_depe` on((`tbl_emp`.`id_dependencia_FK` = `tbl_depe`.`id_dependencia`))) join `tbl_man_categoria_empleados` `tbl_cate` on((`tbl_emp`.`id_categoria_fk` = `tbl_cate`.`id_categoria`))) join `tbl_direcciones_empleados` `tbl_dire` on((`tbl_emp`.`id_empleado` = `tbl_dire`.`id_empleado_fk`))) join `tbl_man_municipios` `tbl_muni` on((`tbl_dire`.`id_municipio_fk` = `tbl_muni`.`id_municipio`)));

INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","1111-111","1709-1996-00602","1","ANA","GISSELA","VASQUEZ","ARIAS","1234","VIUDO","CONDUCTOR","2000.00","524512456235","ACTIVO","IV","4","JUTIAPA","4","LA ARBELOA");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05807","2","LUIS","RICARDO","ORDONEZ","FIGUEROA","1234","SOLTERO","PROGRAMADOR SFSSDF SFSDF","9999.00","12345678","ACTIVO","I","1","LA CEIBA","1","LA TRAVESIA");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","8862-4608","0814-1986-00238","3","LEYDY","MARGARITA","RAMIREZ","COELLO","5383","CASADO","AUDITOR","10000.00","548754652125","ACTIVO","II","2","TEGUCIGALPA D.C","110","COL RESIDENCIAL PLAZA ");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","4444-4444","0801-1987-16541","4","JULIO","JOSUE","REYES","POSADAS","5754","default","CONDUCTOR","10000.00","6524587562124","ACTIVO","II","2","LA CEIBA","1"," LA PRADERA");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","5555-5555","0801-1994-00395","5","BRIAN","ALLESANDRO","IZCOA","LOBO","6377","CASADO","ANALISTA","10000.00","35214523012401","ACTIVO","III","3","LA CEIBA","1","PRADOS UNIVERSITARION");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","6666-6666","0801-2008-11111","6","JOSE","RAMON","ESCOTO","FLORES","5648","SOLTERO","CONDUCTOR","10000.00","5426854210324","ACTIVO","IV","4","JUTIAPA","4","LOMAS DEL TONCONTIN");
INSERT INTO v_traer_empleados VALUES("SECRETARIA LEGAL","10","7777-7777","2222-2222-22222","7","ADAN","ADALBERTO","RAMIREZ","LOBO","4567","CASADO","CONSERJE","9500.00","8457853045215","ACTIVO","III","3","LA CEIBA","1","ZAMBO CRECK");
INSERT INTO v_traer_empleados VALUES("FISCALIZACION","2","2222-2222","0801-1995-05809","8","JUAN","CARLOS","BONILLA","IZAGUIRRE","1","SOLTERO","PROGRAMADOR","9999.00","5421542658541","ACTIVO","III","3","TEGUCIGALPA D.C","110","LA KENNEDY");
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
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","9999-9999","0801-1981-06358","27","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX","SSSSSSSXXXXXXXXXXXXXXXXXXXXXXXXXXX","5445","SOLTERO","CONDUCTOR","3000000.00","545445","ACTIVO","I","1","SANTA FE","14","SSSSSSSSSSSSSSSSSSSSSSSSSSS");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2222-2222","1222-2222-22222","28","AAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSSS","BBBBBBBBSSSSSSSSSSSSSSSSSS","CCCCCCCSSSSSSSSSSSSSSSSSSSSSSSSSSS","DDDDDDDSSSSSSSSSSSSSSSS","24555","SOLTERO","ADMINISTRADOR","25426.50","215615151","ACTIVO","III","3","LA CEIBA","1","SSSDCDCDCDC3333DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","3456-7888","0801-1990-88888","29","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","12341","SOLTERO","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ","9999999999.99","66666555555555555555","ACTIVO","I","1","ESPARTA","3","JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2345-522","2222-2222-22221","30","JAIME","TONY","MORATA","LLANOS","1234","SOLTERO","CONDUCTOR","10000.00","235234","ACTIVO","IV","4","LA CEIBA","1","CUALQUIERA");
INSERT INTO v_traer_empleados VALUES("CATASTRAL","3","232","1111-1111-11112","31","CARLOS","JAVIER","MERINO","ASDASD","232","SOLTERO","CASDF","2222.22","2323","ACTIVO","II","2","EL PORVENIR","2","2232");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","23423","1111-1111-11113","32","ALEJANDRO","PASTORE","JIMENES","PEDRANO","678","CASADO","CONDUCTOR","10000.00","12312","ACTIVO","IV","4","IRIONA","11","SAASDASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","23534","2222-2222-22223","33","MARIA","AURORA","ZAMBRANO","ZAMBRANO","23452","DIVORCIADO","CONDUCTOR","1231.11","23423","ACTIVO","IV","4","COMAYAGUA","19","QWEQWE");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","23423","2222-2222-22224","34","LUIS","MANUEL","VILLEGAS","MORALES","32423","CASADO","CONDUCTOR","2000.00","23","ACTIVO","III","3","LA MASICA","5","ASDSD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","234","3333-3333-33331","35","HECTOR","IVAN","GONZALES","CASTAñO","21321","UNION","CONDUCTOR","2342.22","21123","ACTIVO","IV","4","SANTA CRUZ","205","ASDASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2324","4444-4444-44441","36","JULIO","CESAR","RUIZ","RUIZ","2342","DIVORCIADO","CONDUCTOR","2000.00","212312","ACTIVO","IV","4","SANTA BARBARA","251","ASDASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","23234","7777-7777-77771","37","ANGEL","GABRIEL","DORMEZ","CARCAMO","21312","DIVORCIADO","CONDUCTOR","221.12","12213","ACTIVO","III","3","AHUAS","140","ASDASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2132","4444-4444-44443","38","MARIA","VICTORIA","ARIAS","GOMEZ","23432","SOLTERO","CONDUCTOR","1232.13","12312","ACTIVO","III","3","COMAYAGUA","19","ASDAS");
INSERT INTO v_traer_empleados VALUES("RECURSOS HUMANOS","4","2342","8888-8888-88881","39","SADA","ZXZZX","ZXX","ZXZX","23423","SOLTERO","SADASD","2131.23","234234","ACTIVO","I","1","JUTIAPA","4","ASDASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2222","3333-3333-33332","40","IIIII","UUUUU","UUUUU","UUUU","23423","CASADO","CONDUCTOR","2342.34","234234","ACTIVO","III","3","SABA","13","SASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","234","0000-0000-00003","41","CASD","CSD","CASD","CASDG","2345","DIVORCIADO","CONDUCTOR","2342.34","2342","ACTIVO","IV","4","MORAZAN","293","QWEQWE");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","21313","1000-0000-00000","42","QWE","QQWE","QWE","WE","21312","VIUDO","CONDUCTOR","1231.23","1231","ACTIVO","III","3","TRINIDAD","276","QWE123");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","2131","2000-0000-00000","43","ASDA","QWEQE","CSXCF","SDFER","12123","SOLTERO","CONDUCTOR","234.23","234","ACTIVO","III","3","SANTA ROSA DE AGUAN","15","ASD");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","23213","3000-0000-00000","44","ASDASD","ASDCA","CASDF","CASFF","12312","DIVORCIADO","CONDUCTOR","123.12","123","ACTIVO","V","5","SONAGUERA","16","SADASDA");
INSERT INTO v_traer_empleados VALUES("SERVICIOS GENERALES","1","21345","7000-0000-00000","45","FGHFHF","MQMQMQMQ","MQMQMQ","MQMQMQ","23423","default","CONDUCTOR","12312.31","2132","ACTIVO","IV","4","SONAGUERA","16","QWEQWE");
INSERT INTO v_traer_empleados VALUES("CONTABILIDAD","5","2321-31","1200-0000-00000","46","BGF","NWNWNW","NWNWNW","NWNWN","23424","DIVORCIADO","CUALQUIERA","234234.23","213123","ACTIVO","III","3","VADO ANCHO","107","ASDASDASD");




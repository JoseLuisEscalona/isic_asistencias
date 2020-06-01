/*
Navicat MySQL Data Transfer

Source Server         : itlserver
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : beta

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2020-06-01 13:01:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asistencias
-- ----------------------------
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE `asistencias` (
  `id_asistencia` int(11) NOT NULL auto_increment,
  `id_datos` int(11) default NULL,
  `fecha_entrada` date default NULL,
  `hora_entrada` time default NULL,
  `incidencia_entrada` text,
  `fecha_salida` date default NULL,
  `hora_salida` text,
  `incidencia_salida` text,
  PRIMARY KEY  (`id_asistencia`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asistencias
-- ----------------------------
INSERT INTO `asistencias` VALUES ('1', '46', '2020-06-01', '06:00:09', 'Entrada Puntual', '2020-06-01', '12:04:22', 'Salida');
INSERT INTO `asistencias` VALUES ('2', '45', '2020-06-01', '06:07:34', 'Retardo Menor', '2020-06-01', '12:04:08', 'Salida');
INSERT INTO `asistencias` VALUES ('3', '43', '2020-06-01', '12:26:11', 'Retardo Mayor', '2020-06-01', '18:03:46', 'Salida');

-- ----------------------------
-- Table structure for datos
-- ----------------------------
DROP TABLE IF EXISTS `datos`;
CREATE TABLE `datos` (
  `id_datos` int(11) NOT NULL auto_increment,
  `clave` int(255) default NULL,
  `nombre` text,
  `ap_paterno` text,
  `ap_materno` text,
  `fecha_nac` date default NULL,
  `correo` text,
  `curp` text,
  `domicilio` text,
  `sexo` text,
  `id_ecivil` tinytext,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `activo` tinyint(1) default NULL,
  PRIMARY KEY  (`id_datos`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datos
-- ----------------------------
INSERT INTO `datos` VALUES ('1', '1000', 'John', 'Doe', 'Doe', '1990-05-15', 'jdd1000@itlinares.edu.mx', 'RASE900515HNLMSD08', 'Manzano  # 511 Colonia Gloria Mendiola   - Linares , Nuevo León', 'M', '2', '2015-01-02', '04:41:26', '0');
INSERT INTO `datos` VALUES ('2', '854', 'Hipolito', 'Cano', 'Ruiz', '1963-08-13', 'hcr854@itlinares.edu.mx', 'CARH630813HVZNZP00', 'Pedro Noriega # 560 Colonia Centro  - Linares , Nuevo León', 'M', '2', '2014-10-06', '05:07:54', '1');
INSERT INTO `datos` VALUES ('3', '858', 'Francisco', 'Díaz', 'Garza', '1970-06-26', 'fdg858@itlinares.edu.mx', 'DIGF700626HNLZRR02', 'Francisco I. Madero # 960 Colonia Centro  - Linares , Nuevo León', 'M', '3', '2014-10-06', '05:16:30', '1');
INSERT INTO `datos` VALUES ('4', '899', 'Rodrigo', 'Soto', 'Sánchez', '1973-03-13', 'rss899@itlinares.edu.mx', 'SOSR730313HNLTND08', 'Alamo Y Sauce # 710 Colonia Provileon  - Linares , Nuevo León', 'M', '1', '2014-10-07', '10:39:47', '1');
INSERT INTO `datos` VALUES ('5', '916', 'Marcos Uvaldo', 'Lopez', 'Rodriguez', '1991-11-24', 'mlr916@itlinares.edu.mx', 'LORM911124HNLPDR02', 'De La Cima #119 #  Colonia Inf. El Cerrito  - Linares , Nuevo León', 'M', '2', '2020-03-23', '21:21:58', '1');
INSERT INTO `datos` VALUES ('6', '922', 'Aldo Antonio', 'Tovar', 'Ramirez', '1996-01-17', 'atr922@itlinares.edu.mx', 'TORA960117HNLVML05', 'Ej. La Escondida #  Colonia Ej. La Escondida  - Linares , Nuevo León', 'M', '3', '2014-10-28', '12:17:13', '1');
INSERT INTO `datos` VALUES ('7', '927', 'Adan', 'Gonzalez', 'Vasquez', '1996-08-21', 'agv927@itlinares.edu.mx', 'GOVA960821HNLNSD01', 'Geraneos #2115 #  Colonia Hda. Los Nogales  - Linares , Nuevo León', 'M', '3', '2014-10-28', '12:21:52', '1');
INSERT INTO `datos` VALUES ('8', '937', 'Laura Gabriela', 'Ramirez', 'Escobedo', '1994-03-15', 'lre937@itlinares.edu.mx', 'RAEL940315MNLMSR08', 'Juan Alvarez #2114 #  Colonia Hacienda San Gerardo  - Linares , Nuevo León', 'F', '1', '2014-10-28', '12:32:35', '1');
INSERT INTO `datos` VALUES ('9', '943', 'Juan Carlos', 'Alvarado', 'Garcia', '1993-06-28', 'jag943@itlinares.edu.mx', 'AAGJ930628HNLLRN07', 'Hidalgo 1040 Nte. #  Colonia Alvarado  - Linares , Nuevo León', 'M', '2', '2014-10-28', '12:36:27', '1');
INSERT INTO `datos` VALUES ('10', '997', 'Flor Guadalupe', 'Ramirez', 'Zambrano', '1996-02-15', 'frz997@itlinares.edu.mx', 'RAZF960215MNLMML00', 'Capitan Aguilar No.211 #  Colonia Benito Juarez  - Linares , Nuevo León', 'F', '1', '2014-10-28', '01:38:27', '1');
INSERT INTO `datos` VALUES ('11', '998', 'Humberto De Jesus', 'Reyes', 'Cortez', '1996-02-23', 'hrc998@itlinares.edu.mx', 'RECH960223HNLYRM02', 'Juan Alvarez # 110 #  Colonia Ignacio Zaragoza  - Linares , Nuevo León', 'M', '4', '2014-10-28', '01:39:35', '1');
INSERT INTO `datos` VALUES ('12', '1026', 'Diana Abigail', 'Salazar ', 'Vargas', '1997-09-08', 'dsv1026@itlinares.edu.mx', 'SAVD970908MNLLRN04', 'Guerrero Y Reforma # 4000 Colonia Santa Rosa  - Hualahuises , Nuevo León', 'F', '2', '2016-12-18', '03:06:20', '1');
INSERT INTO `datos` VALUES ('13', '1033', 'Mahon', 'Garcia ', 'Torres', '1991-05-01', 'mgt1033@itlinares.edu.mx', 'GATM910501HZSRRH04', 'Puerta De La Boca #  Colonia Puerta De La Boca  - Montemorelos , Nuevo León', 'M', '3', '2014-10-28', '03:06:35', '1');
INSERT INTO `datos` VALUES ('14', '1037', 'Alvaro', 'Karr', 'De La Cruz ', '1980-03-21', 'akd1037@itlinares.edu.mx', 'KXCA800321HNLRRL08', 'Lirio #138 # 138 Colonia Bugambilias  - Linares , Nuevo León', 'M', '1', '2015-01-09', '10:16:01', '1');
INSERT INTO `datos` VALUES ('15', '1038', 'Jose David', 'Lopez', 'Martinez', '1996-12-22', 'jlm1038@itlinares.edu.mx', 'LOMD961222HNLPRV03', 'Melchor Ocampo #695 Sur #  Colonia La Moderna  - Linares , Nuevo León', 'M', '1', '2014-10-28', '03:09:38', '1');
INSERT INTO `datos` VALUES ('16', '1039', 'Orlando Javier', 'Luna', 'Torres', '1996-12-21', 'olt1039@itlinares.edu.mx', 'LUTO961221000', 'Sin Calle #  Colonia Sin Colonia  - Linares , Nuevo León', 'M', '3', '2014-10-28', '03:10:17', '1');
INSERT INTO `datos` VALUES ('17', '1054', 'Christian Eduardo', 'Contreras', 'Zamora', '1995-10-25', 'ccz1054@itlinares.edu.mx', 'COZC951025HPLNMH07', 'Juan Escutia #112 #  Colonia Croc  - Hualahuises  , Nuevo León', 'M', '2', '2014-10-28', '03:21:12', '1');
INSERT INTO `datos` VALUES ('18', '1064', 'Veronica Jazmin', 'Sepulveda', 'Pecina', '1993-11-21', 'vsp1064@itlinares.edu.mx', 'SEPV931121MNLPCR02', 'Miguel Blanco 244 #  Colonia Inf. La Petaca  - Linares , Nuevo León', 'F', '2', '2014-10-28', '03:28:26', '1');
INSERT INTO `datos` VALUES ('19', '1070', 'Karla Nohemi', 'Chavez', 'Hernandez', '1994-04-05', 'kch1070@itlinares.edu.mx', 'CAHK940405MNLHRR01', 'Dr. Eduardo Aguirre # 201 #  Colonia Centro  - Hualahuises , Nuevo León', 'F', '3', '2014-10-28', '04:54:10', '1');
INSERT INTO `datos` VALUES ('20', '1072', 'Xochitl Nallely', 'Martinez', 'Carranza', '1995-12-04', 'xmc1072@itlinares.edu.mx', 'MACX951204MNLRRC00', 'Felix U. Gomez S/N #  Colonia Santa Rosa  - Hualahuises , Nuevo León', 'F', '2', '2014-10-28', '04:54:58', '1');
INSERT INTO `datos` VALUES ('21', '1108', 'Paola Lizbeth', 'Aguirre', 'Rios', '1998-10-22', 'par1108@itlinares.edu.mx', 'AURP981022MNLGSL03', 'Rio Ramos 1140 #  Colonia Inff. Rio Verde  - Linares , Nuevo León', 'F', '1', '2020-03-24', '08:59:30', '1');
INSERT INTO `datos` VALUES ('22', '1128', 'Ana Maria Monserrath', 'Lopez', 'Pedraza', '1998-08-11', 'alp1128@itlinares.edu.mx', 'LOPA980811MNLPDN00', 'Rio Camacho 1220 #  Colonia Inf Morones Prieto  - Linares , Nuevo León', 'F', '2', '2016-12-01', '10:21:08', '1');
INSERT INTO `datos` VALUES ('23', '1133', 'Ary Siboney', 'Patiño', 'Martinez', '1998-06-09', 'apm1133@itlinares.edu.mx', 'PAMA980609MNLTRR04', 'S/C S/N #  Colonia Porfirio Diaz  - Linares , Nuevo León', 'F', '2', '2016-12-01', '10:23:13', '1');
INSERT INTO `datos` VALUES ('24', '1145', 'Abraham', 'Rodriguez ', 'Torres', '1978-07-24', 'art1145@itlinares.edu.mx', 'ROTA780724HNLDRB03', 'Girasol 118 #  Colonia Las Bugambilias  - Linares , Nuevo León', 'M', '1', '2016-12-01', '10:28:03', '1');
INSERT INTO `datos` VALUES ('25', '1157', 'Maria De Jesus', 'Gonzalez ', 'Gonzalez', '1980-04-01', 'mgg1157@itlinares.edu.mx', 'GOGJ800401MNLNNS04', 'Sin Nombre # 1 Colonia Congregación Maguiras  - Hualahuises , Nuevo León', 'F', '1', '2016-12-01', '10:52:52', '1');
INSERT INTO `datos` VALUES ('26', '1172', 'Roman', 'Aldape', 'Quezada', '1998-06-05', 'raq1172@itlinares.edu.mx', 'AAQR980605HNLLM09', 'E. Zapata 902 Sur #  Colonia Fracc. El Roble  - Linares , Nuevo León', 'M', '1', '2016-12-01', '10:59:58', '1');
INSERT INTO `datos` VALUES ('27', '1175', 'Karla Maria', 'Alvarez', 'Pesina', '1998-05-17', 'kap1175@itlinares.edu.mx', 'AAPK980517MNLLSR08', 'C.Pascual Ortiz Rubio #132 # 1 Colonia Fraccionamiento Ignacio Zaragoza  - Linares , Nuevo León', 'F', '2', '2016-12-01', '11:29:11', '1');
INSERT INTO `datos` VALUES ('28', '1197', 'David', 'Flores', 'Cardona', '1998-06-19', 'dfc1197@itlinares.edu.mx', 'FOCD980619HNLLRV05', 'Ricardo Palmerin 463 #  Colonia San Antonio  - Linares , Nuevo León', 'M', '2', '2016-12-01', '11:09:04', '1');
INSERT INTO `datos` VALUES ('29', '1203', 'David Alejandro', 'Garza', 'Garcia', '1999-05-15', 'dgg1203@itlinares.edu.mx', 'GAGD990515HNLRRV07', '2 De Abril Y Comonfort #  Colonia Los Alamos  - Allende , Nuevo León', 'M', '4', '2016-12-01', '11:11:22', '1');
INSERT INTO `datos` VALUES ('30', '1207', 'Gustavo Alexis', 'Hernandez', 'Luna', '1999-06-16', 'ghl1207@itlinares.edu.mx', 'HELG990616HNLRNS05', 'Dr. Jose Eleuterio Gonzalez #  Colonia Gildeleyva  - Montemorelos , Nuevo León', 'M', '2', '2016-12-01', '11:15:08', '1');
INSERT INTO `datos` VALUES ('31', '1219', 'Juan Jose', 'Reyes', 'Pedraza', '1998-08-21', 'jrp1219@itlinares.edu.mx', 'REPJ980821HNLYDN01', 'Rio Pilon   #1305 # 1 Colonia Inf.Ignacio Morones Prieto  - Linares , Nuevo León', 'M', '3', '2016-12-01', '11:43:23', '1');
INSERT INTO `datos` VALUES ('32', '1220', 'Karla Abigail', 'Rodriguez', 'Lopez', '2016-10-17', 'krl1220@itlinares.edu.mx', '	ROLK991017MNLDPR01', 'Camino A Hualahuises #  Colonia Camachito  - Linares , Nuevo León', 'F', '1', '2016-12-01', '11:22:58', '1');
INSERT INTO `datos` VALUES ('33', '1224', 'Luis Angel', 'Salazar ', 'Tamayo ', '1999-01-27', 'lst1224@itlinares.edu.mx', 'SATL990127HNLLMS03', 'Plutarco Elias Calles  #  Colonia Centro De General Teran   - General Teran  , Nuevo León', 'M', '1', '2016-12-01', '11:24:39', '1');
INSERT INTO `datos` VALUES ('34', '1227', 'Adolfo', 'Viera ', 'Melendez', '1998-11-09', 'avm1227@itlinares.edu.mx', 'VIMA981109HNLRLD06', 'Palma #220 # 1 Colonia Provileón  - Linares , Nuevo León', 'M', '4', '2016-12-01', '11:41:18', '1');
INSERT INTO `datos` VALUES ('35', '1234', 'Ivan Gabino', 'Bravo', 'Nacianceno', '2016-01-06', 'ibn1234@itlinares.edu.mx', 'BANI990106HNLRCV09', '406 Gral Eulalio Gutierres # 1 Colonia L A Esperanza  - Hualahuises , Nuevo León', 'M', '2', '2016-12-01', '12:45:21', '1');
INSERT INTO `datos` VALUES ('36', '1247', 'Isaias Humberto', 'Ibarra', 'Amaro', '1998-04-29', 'iia1247@itlinares.edu.mx', 'IAAI980429HNLBMS08', 'Rio Coatzacoalcos 301 # 1 Colonia Villaseca  - Linares , Nuevo León', 'M', '2', '2016-12-01', '12:50:10', '1');
INSERT INTO `datos` VALUES ('37', '1250', 'Jose Antonio', 'Cortes ', 'Luna', '1997-12-02', 'jcl1250@itlinares.edu.mx', 'CXLA971202HNLRNN07', 'De La Cañada #409 #  Colonia Infonavit El Cerrito  - Linares , Nuevo León', 'M', '2', '2016-12-01', '12:25:16', '1');
INSERT INTO `datos` VALUES ('38', '1257', 'Damian', 'De Leon', 'Garcia', '1998-05-12', 'ddg1257@itlinares.edu.mx', 'LEGD980512HNLNRM04', 'Miguel Aleman #  Colonia La Esperanza  - Hualahuises N.L. , Nuevo León', 'M', '4', '2016-12-01', '12:28:08', '1');
INSERT INTO `datos` VALUES ('39', '1258', 'Jose Lizandro', 'Duran', 'Lopez', '1998-01-06', 'jdl1258@itlinares.edu.mx', 'DULL980106HNLRPZ08', 'Luis Tijerina # 1 Colonia Ricardo Cantú La Petaca  - Linares , Nuevo León', 'M', '1', '2016-12-01', '01:49:56', '1');
INSERT INTO `datos` VALUES ('40', '1278', 'Horacio Guadalupe', 'Hernandez', 'Chipuli', '1997-12-12', 'hhc1278@itlinares.edu.mx', 'HECH971212HNLRHR05', 'Tulipan 121 # 121 Colonia Las Bugambilas  - Linares , Nuevo León', 'M', '3', '2016-12-01', '01:52:55', '1');
INSERT INTO `datos` VALUES ('41', '1289', 'Brayan Alexis', 'Rodriguez', 'Barajas', '1999-05-22', 'brb1289@itlinares.edu.mx', 'ROBB990522HNLDRR00', 'Av.Fidel Velazquez #1355 #  Colonia Mendiola  - Linares , Nuevo León', 'M', '1', '2020-03-24', '07:22:45', '1');
INSERT INTO `datos` VALUES ('42', '1340', 'Judith Guadalupe', 'Zamarripa', 'Villanueva', '1998-04-18', 'jzv1340@itlinares.edu.mx', 'ZAVJ980418MNLMLD03', 'Hidalgo 506 Oriente  #  Colonia Centro  - Hualahuises  , Nuevo León', 'F', '3', '2020-03-23', '14:05:31', '1');
INSERT INTO `datos` VALUES ('43', '1358', 'Yulisa', 'Luna', 'Rodriguez', '1997-12-18', 'ylr1358@itlinares.edu.mx', 'LURY971218MNLNDL06', 'Guadalupe Victoria 216 #  Colonia Fracc. Igncio Zaragoza  - Linares , Nuevo León', 'F', '1', '2020-03-23', '14:07:04', '1');
INSERT INTO `datos` VALUES ('44', '115', 'Pablo Adrian', 'Pérez', 'Briseño', '1984-05-03', 'paperez@itlinares.edu.mx', 'PEBP840305HNLRRB08', 'Calle ahuehuete #675 , Colonia Provileon', 'M', '4', '2020-03-23', '20:28:18', '1');
INSERT INTO `datos` VALUES ('45', '116', 'Silvia Guadalupe', 'Muñiz', 'Tienda', '1983-06-20', 'stienda@utl.edu.mx', 'MUTS830305HNLRRB08', 'Calle ahuehuete #675 , Colonia Provileon', 'F', '4', '2020-03-23', '14:07:22', '1');
INSERT INTO `datos` VALUES ('46', '117', 'Víctor Hugo', 'Perez', 'Briseño', '1986-04-18', 'victor@utl.edu.mx', 'PEBP840305HNLRRB08', 'Calle B juares colonia ca,ahcho', 'M', '1', '2020-03-23', '22:05:32', '1');
INSERT INTO `datos` VALUES ('47', '1569', 'José Manuel', 'Rosales', 'Bravó', '1988-03-03', 'jose@saludnl.gob.mx', 'PEBP840305HNLRRB08', 'Calle Juares # 589 Colonia Arboledas', 'M', '4', '2020-03-24', '09:07:07', '1');
INSERT INTO `datos` VALUES ('48', '171097', 'José Luis Margarito', 'Escalona', 'Garza', '1997-10-17', 'jose.luis.maguin@gmail.com', 'EAGL971017HNLSRS08', 'Fracc. Montereal calle montereal 111', 'M', '1', '2020-03-31', '17:32:01', '1');

-- ----------------------------
-- Table structure for ecivil
-- ----------------------------
DROP TABLE IF EXISTS `ecivil`;
CREATE TABLE `ecivil` (
  `id_ecivil` int(11) NOT NULL auto_increment,
  `descripcion` text,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `activo` tinyint(4) default NULL,
  PRIMARY KEY  (`id_ecivil`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecivil
-- ----------------------------
INSERT INTO `ecivil` VALUES ('1', 'Solter@', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('2', 'Comprometid@', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('3', 'En Relación', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('4', 'Casad@', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('5', 'Unión libre', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('6', 'Separad@', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('7', 'Divorciad@', '2020-03-20', '11:26:32', '1');
INSERT INTO `ecivil` VALUES ('8', 'Viud@', '2020-03-30', '14:08:10', '1');
INSERT INTO `ecivil` VALUES ('9', 'Otros', '2020-03-31', '13:11:18', '1');

-- ----------------------------
-- Table structure for horarios
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL auto_increment,
  `id_datos_persona` int(11) default NULL,
  `turno` text,
  `l_entrada` time default NULL,
  `l_salida` time default NULL,
  `m_entrada` time default NULL,
  `m_salida` time default NULL,
  `mi_entrada` time default NULL,
  `mi_salida` time default NULL,
  `j_entrada` time default NULL,
  `j_salida` time default NULL,
  `v_entrada` time default NULL,
  `v_salida` time default NULL,
  `s_entrada` time default NULL,
  `s_salida` time default NULL,
  `d_entrada` time default NULL,
  `d_salida` time default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  PRIMARY KEY  (`id_horario`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES ('1', '48', 'Nocturno', '18:00:00', '00:00:00', '18:00:00', '00:00:00', '18:00:00', '00:00:00', '18:00:00', '00:00:00', '18:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2020-04-18', '23:48:43');
INSERT INTO `horarios` VALUES ('2', '46', 'Matutino', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2020-04-18', '23:18:54');
INSERT INTO `horarios` VALUES ('3', '42', 'Especial', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '00:00:00', '2020-04-19', '20:38:16');
INSERT INTO `horarios` VALUES ('4', '45', 'Matutino', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '06:00:00', '12:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2020-04-19', '20:19:29');
INSERT INTO `horarios` VALUES ('5', '43', 'Vespertino', '12:00:00', '18:00:00', '12:00:00', '18:00:00', '12:00:00', '18:00:00', '12:00:00', '18:00:00', '12:00:00', '18:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2020-04-19', '20:21:49');
INSERT INTO `horarios` VALUES ('6', '47', 'Especial', '00:00:00', '00:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '00:00:00', '05:00:00', '2020-04-19', '21:16:14');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL auto_increment,
  `actividad` text,
  `usuario_ejecuta` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  PRIMARY KEY  (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=613 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'Ingreso al sistema', '1', '2020-03-31', '17:20:08');
INSERT INTO `log` VALUES ('2', 'Salio del sistema', '1', '2020-03-31', '17:39:26');
INSERT INTO `log` VALUES ('3', 'Ingreso al sistema', '3', '2020-03-31', '17:39:37');
INSERT INTO `log` VALUES ('4', 'Ingreso al sistema', '3', '2020-03-31', '17:40:52');
INSERT INTO `log` VALUES ('5', 'Ha cambiado al tema Night', '3', '2020-03-31', '17:41:04');
INSERT INTO `log` VALUES ('6', 'Ha cambiado al tema Azul Britanico', '3', '2020-03-31', '17:41:11');
INSERT INTO `log` VALUES ('7', 'Ha cambiado al tema Night', '3', '2020-03-31', '17:41:15');
INSERT INTO `log` VALUES ('8', 'Ingreso al sistema', '3', '2020-03-31', '22:06:38');
INSERT INTO `log` VALUES ('9', 'Ha cambiado al tema Azul Britanico', '3', '2020-03-31', '22:06:45');
INSERT INTO `log` VALUES ('10', 'Ha cambiado al tema Night', '3', '2020-03-31', '22:06:50');
INSERT INTO `log` VALUES ('11', 'Ingreso al sistema', '3', '2020-03-31', '22:08:41');
INSERT INTO `log` VALUES ('12', 'Ha cambiado al tema Night', '3', '2020-03-31', '22:08:50');
INSERT INTO `log` VALUES ('13', 'Ingreso al sistema', '3', '2020-03-31', '22:10:39');
INSERT INTO `log` VALUES ('14', 'Ha cambiado al tema Night', '3', '2020-03-31', '22:10:46');
INSERT INTO `log` VALUES ('15', 'Salio del sistema', '3', '2020-03-31', '22:11:13');
INSERT INTO `log` VALUES ('16', 'Ingreso al sistema', '3', '2020-03-31', '22:11:17');
INSERT INTO `log` VALUES ('17', 'Ha cambiado al tema Night', '3', '2020-03-31', '22:11:24');
INSERT INTO `log` VALUES ('18', 'Salio del sistema', '3', '2020-03-31', '22:11:38');
INSERT INTO `log` VALUES ('19', 'Ingreso al sistema', '3', '2020-03-31', '22:23:52');
INSERT INTO `log` VALUES ('20', 'Ingreso al sistema', '3', '2020-03-31', '22:24:10');
INSERT INTO `log` VALUES ('21', 'Ingreso al sistema', '3', '2020-03-31', '22:26:54');
INSERT INTO `log` VALUES ('22', 'Salio del sistema', '3', '2020-03-31', '22:27:03');
INSERT INTO `log` VALUES ('23', 'Ingreso al sistema', '3', '2020-03-31', '22:27:07');
INSERT INTO `log` VALUES ('24', 'Salio del sistema', '3', '2020-03-31', '22:27:14');
INSERT INTO `log` VALUES ('25', 'Ingreso al sistema', '3', '2020-03-31', '22:28:05');
INSERT INTO `log` VALUES ('26', 'Ha cambiado al tema Night', '3', '2020-03-31', '22:28:12');
INSERT INTO `log` VALUES ('27', 'Ingreso al sistema', '3', '2020-04-01', '21:10:06');
INSERT INTO `log` VALUES ('28', 'Ingreso al sistema', '3', '2020-04-02', '15:31:44');
INSERT INTO `log` VALUES ('29', 'Salio del sistema', '3', '2020-04-02', '15:47:11');
INSERT INTO `log` VALUES ('30', 'Ingreso al sistema', '3', '2020-04-02', '16:32:11');
INSERT INTO `log` VALUES ('31', 'Salio del sistema', '3', '2020-04-02', '16:38:03');
INSERT INTO `log` VALUES ('32', 'Ingreso al sistema', '3', '2020-04-02', '18:21:33');
INSERT INTO `log` VALUES ('33', 'Salio del sistema', '3', '2020-04-02', '18:22:15');
INSERT INTO `log` VALUES ('34', 'Ingreso al sistema', '3', '2020-04-02', '18:22:40');
INSERT INTO `log` VALUES ('35', 'Salio del sistema', '3', '2020-04-02', '18:22:47');
INSERT INTO `log` VALUES ('36', 'Ingreso al sistema', '3', '2020-04-02', '18:23:34');
INSERT INTO `log` VALUES ('37', 'Salio del sistema', '3', '2020-04-02', '18:23:40');
INSERT INTO `log` VALUES ('38', 'Ingreso al sistema', '3', '2020-04-02', '18:23:46');
INSERT INTO `log` VALUES ('39', 'Salio del sistema', '3', '2020-04-02', '18:24:30');
INSERT INTO `log` VALUES ('40', 'Ingreso al sistema', '3', '2020-04-02', '18:25:54');
INSERT INTO `log` VALUES ('41', 'Salio del sistema', '3', '2020-04-02', '18:25:59');
INSERT INTO `log` VALUES ('42', 'Ingreso al sistema', '3', '2020-04-02', '18:27:40');
INSERT INTO `log` VALUES ('43', 'Salio del sistema', '3', '2020-04-02', '18:27:48');
INSERT INTO `log` VALUES ('44', 'Ingreso al sistema', '3', '2020-04-02', '18:28:14');
INSERT INTO `log` VALUES ('45', 'Salio del sistema', '3', '2020-04-02', '18:28:19');
INSERT INTO `log` VALUES ('46', 'Ingreso al sistema', '3', '2020-04-02', '18:28:24');
INSERT INTO `log` VALUES ('47', 'Salio del sistema', '3', '2020-04-02', '18:28:29');
INSERT INTO `log` VALUES ('48', 'Ingreso al sistema', '3', '2020-04-02', '18:29:25');
INSERT INTO `log` VALUES ('49', 'Salio del sistema', '3', '2020-04-02', '18:29:31');
INSERT INTO `log` VALUES ('50', 'Ingreso al sistema', '3', '2020-04-02', '18:35:00');
INSERT INTO `log` VALUES ('51', 'Salio del sistema', '3', '2020-04-02', '18:35:06');
INSERT INTO `log` VALUES ('52', 'Ingreso al sistema', '3', '2020-04-02', '18:35:44');
INSERT INTO `log` VALUES ('53', 'Salio del sistema', '3', '2020-04-02', '18:35:56');
INSERT INTO `log` VALUES ('54', 'Ha cambiado al tema CHyP', '3', '2020-04-02', '22:31:38');
INSERT INTO `log` VALUES ('55', 'Salio del sistema', '3', '2020-04-02', '22:31:51');
INSERT INTO `log` VALUES ('56', 'Salio del sistema', '3', '2020-04-02', '22:32:35');
INSERT INTO `log` VALUES ('57', 'Ingreso al sistema', '3', '2020-04-02', '22:32:46');
INSERT INTO `log` VALUES ('58', 'Salio del sistema', '3', '2020-04-02', '22:32:52');
INSERT INTO `log` VALUES ('59', 'Salio del sistema', '3', '2020-04-02', '22:35:50');
INSERT INTO `log` VALUES ('60', 'Ingreso al sistema', '3', '2020-04-02', '22:36:05');
INSERT INTO `log` VALUES ('61', 'Salio del sistema', '3', '2020-04-02', '22:36:10');
INSERT INTO `log` VALUES ('62', 'Ha cambiado al tema Night', '3', '2020-04-02', '22:36:59');
INSERT INTO `log` VALUES ('63', 'Salio del sistema', '3', '2020-04-02', '22:37:11');
INSERT INTO `log` VALUES ('64', 'Salio del sistema', '3', '2020-04-02', '22:37:32');
INSERT INTO `log` VALUES ('65', 'Salio del sistema', '3', '2020-04-02', '22:41:22');
INSERT INTO `log` VALUES ('66', 'Salio del sistema', '3', '2020-04-02', '22:43:13');
INSERT INTO `log` VALUES ('67', 'Salio del sistema', '3', '2020-04-02', '22:52:36');
INSERT INTO `log` VALUES ('68', 'Ingreso al sistema', '3', '2020-04-02', '22:54:23');
INSERT INTO `log` VALUES ('69', 'Salio del sistema', '3', '2020-04-02', '22:54:29');
INSERT INTO `log` VALUES ('70', 'Ingreso al sistema', '3', '2020-04-02', '22:55:27');
INSERT INTO `log` VALUES ('71', 'Salio del sistema', '3', '2020-04-02', '22:55:35');
INSERT INTO `log` VALUES ('72', 'Ingreso al sistema', '3', '2020-04-02', '22:55:52');
INSERT INTO `log` VALUES ('73', 'Salio del sistema', '3', '2020-04-02', '22:55:57');
INSERT INTO `log` VALUES ('74', 'Ingreso al sistema', '1', '2020-04-02', '22:56:03');
INSERT INTO `log` VALUES ('75', 'Salio del sistema', '1', '2020-04-02', '22:56:09');
INSERT INTO `log` VALUES ('76', 'Ingreso al sistema', '1', '2020-04-02', '22:56:25');
INSERT INTO `log` VALUES ('77', 'Salio del sistema', '1', '2020-04-02', '22:56:31');
INSERT INTO `log` VALUES ('78', 'Ingreso al sistema', '3', '2020-04-02', '22:57:59');
INSERT INTO `log` VALUES ('79', 'Salio del sistema', '3', '2020-04-02', '22:58:05');
INSERT INTO `log` VALUES ('80', 'Ingreso al sistema', '1', '2020-04-02', '22:58:21');
INSERT INTO `log` VALUES ('81', 'Salio del sistema', '1', '2020-04-02', '22:58:26');
INSERT INTO `log` VALUES ('82', 'Ingreso al sistema', '3', '2020-04-02', '22:58:32');
INSERT INTO `log` VALUES ('83', 'Salio del sistema', '3', '2020-04-02', '22:58:36');
INSERT INTO `log` VALUES ('84', 'Salio del sistema', '3', '2020-04-02', '22:58:59');
INSERT INTO `log` VALUES ('85', 'Ingreso al sistema', '1', '2020-04-02', '22:59:15');
INSERT INTO `log` VALUES ('86', 'Salio del sistema', '1', '2020-04-02', '22:59:20');
INSERT INTO `log` VALUES ('87', 'Ingreso al sistema', '3', '2020-04-03', '14:29:14');
INSERT INTO `log` VALUES ('88', 'Salio del sistema', '3', '2020-04-03', '14:30:32');
INSERT INTO `log` VALUES ('89', 'Ingreso al sistema', '3', '2020-04-03', '14:32:47');
INSERT INTO `log` VALUES ('90', 'Salio del sistema', '3', '2020-04-03', '14:33:07');
INSERT INTO `log` VALUES ('91', 'Ingreso al sistema', '3', '2020-04-03', '14:40:42');
INSERT INTO `log` VALUES ('92', 'Salio del sistema', '3', '2020-04-03', '14:42:18');
INSERT INTO `log` VALUES ('93', 'Ingreso al sistema', '3', '2020-04-03', '14:42:54');
INSERT INTO `log` VALUES ('94', 'Salio del sistema', '3', '2020-04-03', '14:43:01');
INSERT INTO `log` VALUES ('95', 'Ingreso al sistema', '3', '2020-04-03', '14:43:18');
INSERT INTO `log` VALUES ('96', 'Salio del sistema', '3', '2020-04-03', '14:43:39');
INSERT INTO `log` VALUES ('97', 'Ingreso al sistema', '3', '2020-04-03', '14:51:50');
INSERT INTO `log` VALUES ('98', 'Salio del sistema', '3', '2020-04-03', '14:51:58');
INSERT INTO `log` VALUES ('99', 'Ingreso al sistema', '3', '2020-04-03', '14:53:34');
INSERT INTO `log` VALUES ('100', 'Salio del sistema', '3', '2020-04-03', '14:53:40');
INSERT INTO `log` VALUES ('101', 'Ingreso al sistema', '3', '2020-04-03', '14:55:01');
INSERT INTO `log` VALUES ('102', 'Salio del sistema', '3', '2020-04-03', '14:55:06');
INSERT INTO `log` VALUES ('103', 'Ingreso al sistema', '3', '2020-04-03', '14:55:26');
INSERT INTO `log` VALUES ('104', 'Salio del sistema', '3', '2020-04-03', '14:55:31');
INSERT INTO `log` VALUES ('105', 'Ingreso al sistema', '3', '2020-04-03', '14:55:38');
INSERT INTO `log` VALUES ('106', 'Salio del sistema', '3', '2020-04-03', '14:55:43');
INSERT INTO `log` VALUES ('107', 'Ingreso al sistema', '3', '2020-04-03', '15:34:17');
INSERT INTO `log` VALUES ('108', 'Salio del sistema', '3', '2020-04-03', '15:34:28');
INSERT INTO `log` VALUES ('109', 'Ingreso al sistema', '3', '2020-04-03', '15:40:36');
INSERT INTO `log` VALUES ('110', 'Salio del sistema', '3', '2020-04-03', '15:40:42');
INSERT INTO `log` VALUES ('111', 'Ingreso al sistema', '3', '2020-04-03', '15:40:56');
INSERT INTO `log` VALUES ('112', 'Salio del sistema', '3', '2020-04-03', '15:41:06');
INSERT INTO `log` VALUES ('113', 'Ingreso al sistema', '3', '2020-04-03', '15:41:39');
INSERT INTO `log` VALUES ('114', 'Salio del sistema', '3', '2020-04-03', '15:42:19');
INSERT INTO `log` VALUES ('115', 'Ingreso al sistema', '3', '2020-04-03', '15:42:35');
INSERT INTO `log` VALUES ('116', 'Salio del sistema', '3', '2020-04-03', '15:42:44');
INSERT INTO `log` VALUES ('117', 'Ingreso al sistema', '3', '2020-04-03', '15:54:14');
INSERT INTO `log` VALUES ('118', 'Salio del sistema', '3', '2020-04-03', '15:54:19');
INSERT INTO `log` VALUES ('119', 'Ingreso al sistema', '3', '2020-04-03', '15:54:59');
INSERT INTO `log` VALUES ('120', 'Salio del sistema', '3', '2020-04-03', '15:55:04');
INSERT INTO `log` VALUES ('121', 'Salio del sistema', '3', '2020-04-03', '17:24:58');
INSERT INTO `log` VALUES ('122', 'Salio del sistema', '3', '2020-04-03', '17:25:53');
INSERT INTO `log` VALUES ('123', 'Ingreso al sistema', '3', '2020-04-03', '17:26:08');
INSERT INTO `log` VALUES ('124', 'Salio del sistema', '3', '2020-04-03', '17:26:13');
INSERT INTO `log` VALUES ('125', 'Salio del sistema', '3', '2020-04-03', '17:26:34');
INSERT INTO `log` VALUES ('126', 'Ingreso al sistema', '3', '2020-04-03', '17:27:21');
INSERT INTO `log` VALUES ('127', 'Salio del sistema', '3', '2020-04-03', '17:27:26');
INSERT INTO `log` VALUES ('128', 'Salio del sistema', '3', '2020-04-03', '17:41:57');
INSERT INTO `log` VALUES ('129', 'Ingreso al sistema', '3', '2020-04-03', '17:42:13');
INSERT INTO `log` VALUES ('130', 'Salio del sistema', '3', '2020-04-03', '17:42:19');
INSERT INTO `log` VALUES ('131', 'Salio del sistema', '3', '2020-04-03', '17:42:44');
INSERT INTO `log` VALUES ('132', 'Salio del sistema', '3', '2020-04-03', '17:43:04');
INSERT INTO `log` VALUES ('133', 'Salio del sistema', '3', '2020-04-03', '17:44:17');
INSERT INTO `log` VALUES ('134', 'Salio del sistema', '3', '2020-04-03', '17:46:58');
INSERT INTO `log` VALUES ('135', 'Ingreso al sistema', '3', '2020-04-03', '17:48:23');
INSERT INTO `log` VALUES ('136', 'Salio del sistema', '3', '2020-04-03', '17:48:29');
INSERT INTO `log` VALUES ('137', 'Ingreso al sistema', '3', '2020-04-03', '17:48:47');
INSERT INTO `log` VALUES ('138', 'Salio del sistema', '3', '2020-04-03', '17:48:52');
INSERT INTO `log` VALUES ('139', 'Ingreso al sistema', '3', '2020-04-03', '17:50:16');
INSERT INTO `log` VALUES ('140', 'Salio del sistema', '3', '2020-04-03', '17:50:22');
INSERT INTO `log` VALUES ('141', 'Ingreso al sistema', '3', '2020-04-03', '18:12:06');
INSERT INTO `log` VALUES ('142', 'Salio del sistema', '3', '2020-04-03', '18:12:11');
INSERT INTO `log` VALUES ('143', 'Salio del sistema', '3', '2020-04-03', '18:13:47');
INSERT INTO `log` VALUES ('144', 'Ingreso al sistema', '3', '2020-04-03', '18:14:42');
INSERT INTO `log` VALUES ('145', 'Salio del sistema', '3', '2020-04-03', '18:14:47');
INSERT INTO `log` VALUES ('146', 'Ingreso al sistema', '3', '2020-04-03', '18:21:12');
INSERT INTO `log` VALUES ('147', 'Salio del sistema', '3', '2020-04-03', '18:21:18');
INSERT INTO `log` VALUES ('148', 'Ingreso al sistema', '3', '2020-04-03', '18:21:47');
INSERT INTO `log` VALUES ('149', 'Salio del sistema', '3', '2020-04-03', '18:22:06');
INSERT INTO `log` VALUES ('150', 'Ingreso al sistema', '3', '2020-04-03', '18:53:56');
INSERT INTO `log` VALUES ('151', 'Salio del sistema', '3', '2020-04-03', '19:07:02');
INSERT INTO `log` VALUES ('152', 'Ingreso al sistema', '3', '2020-04-05', '17:12:58');
INSERT INTO `log` VALUES ('153', 'Ha cambiado al tema Chopes', '3', '2020-04-05', '17:13:04');
INSERT INTO `log` VALUES ('154', 'Ha cambiado al tema Chopes', '3', '2020-04-05', '17:14:49');
INSERT INTO `log` VALUES ('155', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-05', '17:14:52');
INSERT INTO `log` VALUES ('156', 'Ha cambiado al tema Chopes', '3', '2020-04-05', '17:14:54');
INSERT INTO `log` VALUES ('157', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-05', '17:14:57');
INSERT INTO `log` VALUES ('158', 'Salio del sistema', '3', '2020-04-05', '17:15:13');
INSERT INTO `log` VALUES ('159', 'Ingreso al sistema', '3', '2020-04-05', '17:18:11');
INSERT INTO `log` VALUES ('160', 'Salio del sistema', '3', '2020-04-05', '17:18:26');
INSERT INTO `log` VALUES ('161', 'Ingreso al sistema', '3', '2020-04-05', '17:18:36');
INSERT INTO `log` VALUES ('162', 'Salio del sistema', '3', '2020-04-05', '17:18:55');
INSERT INTO `log` VALUES ('163', 'Ingreso al sistema', '3', '2020-04-05', '17:29:34');
INSERT INTO `log` VALUES ('164', 'Ha cambiado al tema Chopes', '3', '2020-04-05', '17:29:41');
INSERT INTO `log` VALUES ('165', 'Ha cambiado al tema Adolfo', '3', '2020-04-05', '17:29:53');
INSERT INTO `log` VALUES ('166', 'Ha cambiado al tema Cool', '3', '2020-04-05', '17:30:04');
INSERT INTO `log` VALUES ('167', 'Ha cambiado al tema Adolfo', '3', '2020-04-05', '17:30:15');
INSERT INTO `log` VALUES ('168', 'Ha cambiado al tema Grey and Blue', '3', '2020-04-05', '17:30:45');
INSERT INTO `log` VALUES ('169', 'Ha cambiado al tema Dark Green', '3', '2020-04-05', '17:31:22');
INSERT INTO `log` VALUES ('170', 'Ha cambiado al tema Cool', '3', '2020-04-05', '17:31:27');
INSERT INTO `log` VALUES ('171', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-05', '17:32:43');
INSERT INTO `log` VALUES ('172', 'Salio del sistema', '3', '2020-04-05', '17:32:49');
INSERT INTO `log` VALUES ('173', 'Ingreso al sistema', '3', '2020-04-05', '17:42:16');
INSERT INTO `log` VALUES ('174', 'Salio del sistema', '3', '2020-04-05', '17:42:33');
INSERT INTO `log` VALUES ('175', 'Ingreso al sistema', '3', '2020-04-05', '17:48:27');
INSERT INTO `log` VALUES ('176', 'Ha cambiado al tema Chopes', '3', '2020-04-05', '17:48:36');
INSERT INTO `log` VALUES ('177', 'Ingreso al sistema', '3', '2020-04-07', '01:43:07');
INSERT INTO `log` VALUES ('178', 'Ingreso al sistema', '3', '2020-04-08', '16:03:41');
INSERT INTO `log` VALUES ('179', 'Ingreso al sistema', '3', '2020-04-08', '16:06:11');
INSERT INTO `log` VALUES ('180', 'Ingreso al sistema', '3', '2020-04-08', '16:06:58');
INSERT INTO `log` VALUES ('181', 'Ingreso al sistema', '3', '2020-04-08', '16:08:26');
INSERT INTO `log` VALUES ('182', 'Ingreso al sistema', '3', '2020-04-08', '16:10:42');
INSERT INTO `log` VALUES ('183', 'Ingreso al sistema', '3', '2020-04-08', '16:11:12');
INSERT INTO `log` VALUES ('184', 'Salio del sistema', '3', '2020-04-08', '16:14:31');
INSERT INTO `log` VALUES ('185', 'Ingreso al sistema', '1', '2020-04-12', '16:38:01');
INSERT INTO `log` VALUES ('186', 'Salio del sistema', '1', '2020-04-12', '16:38:57');
INSERT INTO `log` VALUES ('187', 'Ingreso al sistema', '1', '2020-04-12', '16:39:07');
INSERT INTO `log` VALUES ('188', 'Ingreso al sistema', '1', '2020-04-12', '16:39:16');
INSERT INTO `log` VALUES ('189', 'Salio del sistema', '1', '2020-04-12', '16:40:40');
INSERT INTO `log` VALUES ('190', 'Ingreso al sistema', '1', '2020-04-12', '16:40:49');
INSERT INTO `log` VALUES ('191', 'Ingreso al sistema', '1', '2020-04-12', '16:40:59');
INSERT INTO `log` VALUES ('192', 'Salio del sistema', '1', '2020-04-12', '16:52:08');
INSERT INTO `log` VALUES ('193', 'Ingreso al sistema', '1', '2020-04-12', '16:59:40');
INSERT INTO `log` VALUES ('194', 'Salio del sistema', '1', '2020-04-12', '17:02:41');
INSERT INTO `log` VALUES ('195', 'Ingreso al sistema', '1', '2020-04-12', '17:03:31');
INSERT INTO `log` VALUES ('196', 'Salio del sistema', '1', '2020-04-12', '17:05:00');
INSERT INTO `log` VALUES ('197', 'Ingreso al sistema', '1', '2020-04-12', '17:05:07');
INSERT INTO `log` VALUES ('198', 'Salio del sistema', '1', '2020-04-12', '17:08:04');
INSERT INTO `log` VALUES ('199', 'Ingreso al sistema', '1', '2020-04-12', '17:08:10');
INSERT INTO `log` VALUES ('200', 'Ha cambiado al tema Adolfo', '1', '2020-04-12', '17:08:21');
INSERT INTO `log` VALUES ('201', 'Ha cambiado al tema Azul Britanico', '1', '2020-04-12', '17:08:24');
INSERT INTO `log` VALUES ('202', 'Salio del sistema', '1', '2020-04-12', '17:10:09');
INSERT INTO `log` VALUES ('203', 'Ingreso al sistema', '1', '2020-04-12', '17:10:35');
INSERT INTO `log` VALUES ('204', 'Ingreso al sistema', '1', '2020-04-12', '17:11:59');
INSERT INTO `log` VALUES ('205', 'Ingreso al sistema', '1', '2020-04-12', '17:13:10');
INSERT INTO `log` VALUES ('206', 'Ingreso al sistema', '1', '2020-04-12', '17:15:14');
INSERT INTO `log` VALUES ('207', 'Salio del sistema', '1', '2020-04-12', '17:17:01');
INSERT INTO `log` VALUES ('208', 'Ingreso al sistema', '3', '2020-04-12', '17:17:18');
INSERT INTO `log` VALUES ('209', 'Ingreso al sistema', '3', '2020-04-12', '18:15:49');
INSERT INTO `log` VALUES ('210', 'Salio del sistema', '3', '2020-04-12', '18:15:54');
INSERT INTO `log` VALUES ('211', 'Ingreso al sistema', '3', '2020-04-12', '18:16:36');
INSERT INTO `log` VALUES ('212', 'Salio del sistema', '3', '2020-04-12', '18:17:16');
INSERT INTO `log` VALUES ('213', 'Ingreso al sistema', '3', '2020-04-12', '18:19:18');
INSERT INTO `log` VALUES ('214', 'Salio del sistema', '3', '2020-04-12', '18:19:34');
INSERT INTO `log` VALUES ('215', 'Ingreso al sistema', '3', '2020-04-12', '18:20:44');
INSERT INTO `log` VALUES ('216', 'Salio del sistema', '3', '2020-04-12', '18:20:49');
INSERT INTO `log` VALUES ('217', 'Ingreso al sistema', '3', '2020-04-12', '18:21:24');
INSERT INTO `log` VALUES ('218', 'Salio del sistema', '3', '2020-04-12', '18:21:43');
INSERT INTO `log` VALUES ('219', 'Ingreso al sistema', '3', '2020-04-12', '18:21:47');
INSERT INTO `log` VALUES ('220', 'Salio del sistema', '3', '2020-04-12', '18:21:52');
INSERT INTO `log` VALUES ('221', 'Ingreso al sistema', '3', '2020-04-12', '18:21:58');
INSERT INTO `log` VALUES ('222', 'Salio del sistema', '3', '2020-04-12', '18:23:06');
INSERT INTO `log` VALUES ('223', 'Ingreso al sistema', '3', '2020-04-13', '15:32:04');
INSERT INTO `log` VALUES ('224', 'Ingreso al sistema', '3', '2020-04-13', '15:49:32');
INSERT INTO `log` VALUES ('225', 'Ha cambiado al tema Adolfo', '3', '2020-04-13', '15:49:39');
INSERT INTO `log` VALUES ('226', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-13', '15:49:46');
INSERT INTO `log` VALUES ('227', 'Ha cambiado al tema Chopes', '3', '2020-04-13', '15:49:50');
INSERT INTO `log` VALUES ('228', 'Ha cambiado al tema Night', '3', '2020-04-13', '15:49:53');
INSERT INTO `log` VALUES ('229', 'Ha cambiado al tema Chopes', '3', '2020-04-13', '15:50:04');
INSERT INTO `log` VALUES ('230', 'Ha cambiado al tema German Team', '3', '2020-04-13', '15:50:08');
INSERT INTO `log` VALUES ('231', 'Ha cambiado al tema Hospital Linares', '3', '2020-04-13', '15:50:20');
INSERT INTO `log` VALUES ('232', 'Salio del sistema', '3', '2020-04-13', '15:50:26');
INSERT INTO `log` VALUES ('233', 'Ingreso al sistema', '3', '2020-04-14', '17:45:42');
INSERT INTO `log` VALUES ('234', 'Ha cambiado al tema Adolfo', '3', '2020-04-14', '17:45:47');
INSERT INTO `log` VALUES ('235', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '17:45:50');
INSERT INTO `log` VALUES ('236', 'Ha cambiado al tema Dark Green', '3', '2020-04-14', '17:47:13');
INSERT INTO `log` VALUES ('237', 'Ha cambiado al tema Chopes', '3', '2020-04-14', '17:47:17');
INSERT INTO `log` VALUES ('238', 'Ha cambiado al tema UTLinares', '3', '2020-04-14', '17:47:20');
INSERT INTO `log` VALUES ('239', 'Ha cambiado al tema Grey and Blue', '3', '2020-04-14', '17:48:43');
INSERT INTO `log` VALUES ('240', 'Ha cambiado al tema UTLinares', '3', '2020-04-14', '17:48:46');
INSERT INTO `log` VALUES ('241', 'Ha cambiado al tema Oscuro', '3', '2020-04-14', '17:48:50');
INSERT INTO `log` VALUES ('242', 'Ha cambiado al tema Night', '3', '2020-04-14', '17:48:56');
INSERT INTO `log` VALUES ('243', 'Ha cambiado al tema Obscuro Clasico', '3', '2020-04-14', '17:49:05');
INSERT INTO `log` VALUES ('244', 'Ha cambiado al tema Oscuro', '3', '2020-04-14', '17:49:12');
INSERT INTO `log` VALUES ('245', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '17:49:28');
INSERT INTO `log` VALUES ('246', 'Ha cambiado al tema German Team', '3', '2020-04-14', '17:50:18');
INSERT INTO `log` VALUES ('247', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '17:50:22');
INSERT INTO `log` VALUES ('248', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '17:55:29');
INSERT INTO `log` VALUES ('249', 'Ha cambiado al tema Grey and Blue', '3', '2020-04-14', '17:55:34');
INSERT INTO `log` VALUES ('250', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '17:55:39');
INSERT INTO `log` VALUES ('251', 'Ha cambiado al tema Grey and Blue', '3', '2020-04-14', '17:55:43');
INSERT INTO `log` VALUES ('252', 'Ha cambiado al tema Obscuro Clasico', '3', '2020-04-14', '17:55:46');
INSERT INTO `log` VALUES ('253', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '18:07:05');
INSERT INTO `log` VALUES ('254', 'Ha cambiado al tema Chopes', '3', '2020-04-14', '18:14:59');
INSERT INTO `log` VALUES ('255', 'Ha cambiado al tema Hospital Linares', '3', '2020-04-14', '18:15:02');
INSERT INTO `log` VALUES ('256', 'Ha cambiado al tema Snarky', '3', '2020-04-14', '18:15:05');
INSERT INTO `log` VALUES ('257', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '18:15:09');
INSERT INTO `log` VALUES ('258', 'Ha cambiado al tema ITLinares Alternativo', '3', '2020-04-14', '18:16:35');
INSERT INTO `log` VALUES ('259', 'Ha cambiado al tema CHyP', '3', '2020-04-14', '18:16:38');
INSERT INTO `log` VALUES ('260', 'Ha cambiado al tema Oscuro', '3', '2020-04-14', '18:16:41');
INSERT INTO `log` VALUES ('261', 'Ha cambiado al tema Dark Green', '3', '2020-04-14', '18:16:44');
INSERT INTO `log` VALUES ('262', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-14', '18:16:46');
INSERT INTO `log` VALUES ('263', 'Ha cambiado al tema Cool', '3', '2020-04-14', '18:17:48');
INSERT INTO `log` VALUES ('264', 'Ha cambiado al tema ITLinares', '3', '2020-04-14', '18:17:51');
INSERT INTO `log` VALUES ('265', 'Ha cambiado al tema Chopes', '3', '2020-04-14', '18:17:54');
INSERT INTO `log` VALUES ('266', 'Ingreso al sistema', '3', '2020-04-16', '17:15:00');
INSERT INTO `log` VALUES ('267', 'Ingreso al sistema', '3', '2020-04-16', '19:03:40');
INSERT INTO `log` VALUES ('268', 'Ingreso al sistema', '3', '2020-04-16', '19:39:06');
INSERT INTO `log` VALUES ('269', 'Ingreso al sistema', '3', '2020-04-16', '19:39:56');
INSERT INTO `log` VALUES ('270', 'Ingreso al sistema', '3', '2020-04-16', '19:42:01');
INSERT INTO `log` VALUES ('271', 'Ingreso al sistema', '3', '2020-04-16', '19:44:24');
INSERT INTO `log` VALUES ('272', 'Ingreso al sistema', '3', '2020-04-16', '20:02:47');
INSERT INTO `log` VALUES ('273', 'Ingreso al sistema', '3', '2020-04-16', '20:03:30');
INSERT INTO `log` VALUES ('274', 'Ingreso al sistema', '3', '2020-04-16', '20:08:04');
INSERT INTO `log` VALUES ('275', 'Ingreso al sistema', '3', '2020-04-16', '20:10:06');
INSERT INTO `log` VALUES ('276', 'Ingreso al sistema', '3', '2020-04-16', '20:11:35');
INSERT INTO `log` VALUES ('277', 'Ingreso al sistema', '3', '2020-04-16', '20:12:15');
INSERT INTO `log` VALUES ('278', 'Ingreso al sistema', '3', '2020-04-16', '20:13:33');
INSERT INTO `log` VALUES ('279', 'Ingreso al sistema', '3', '2020-04-16', '20:15:41');
INSERT INTO `log` VALUES ('280', 'Ingreso al sistema', '3', '2020-04-16', '20:16:07');
INSERT INTO `log` VALUES ('281', 'Ingreso al sistema', '3', '2020-04-16', '20:16:26');
INSERT INTO `log` VALUES ('282', 'Ingreso al sistema', '3', '2020-04-16', '20:17:27');
INSERT INTO `log` VALUES ('283', 'Ingreso al sistema', '3', '2020-04-16', '20:17:55');
INSERT INTO `log` VALUES ('284', 'Ingreso al sistema', '3', '2020-04-16', '20:20:30');
INSERT INTO `log` VALUES ('285', 'Ingreso al sistema', '3', '2020-04-16', '20:21:41');
INSERT INTO `log` VALUES ('286', 'Ingreso al sistema', '3', '2020-04-16', '20:22:05');
INSERT INTO `log` VALUES ('287', 'Ingreso al sistema', '3', '2020-04-16', '20:22:40');
INSERT INTO `log` VALUES ('288', 'Ingreso al sistema', '3', '2020-04-16', '20:23:57');
INSERT INTO `log` VALUES ('289', 'Ingreso al sistema', '3', '2020-04-16', '20:24:33');
INSERT INTO `log` VALUES ('290', 'Ingreso al sistema', '3', '2020-04-16', '20:25:09');
INSERT INTO `log` VALUES ('291', 'Ingreso al sistema', '3', '2020-04-16', '20:25:57');
INSERT INTO `log` VALUES ('292', 'Ingreso al sistema', '3', '2020-04-16', '20:26:44');
INSERT INTO `log` VALUES ('293', 'Ingreso al sistema', '3', '2020-04-16', '20:27:55');
INSERT INTO `log` VALUES ('294', 'Ingreso al sistema', '3', '2020-04-16', '20:30:39');
INSERT INTO `log` VALUES ('295', 'Ingreso al sistema', '3', '2020-04-16', '20:31:18');
INSERT INTO `log` VALUES ('296', 'Ingreso al sistema', '3', '2020-04-16', '20:33:04');
INSERT INTO `log` VALUES ('297', 'Ingreso al sistema', '3', '2020-04-16', '20:34:04');
INSERT INTO `log` VALUES ('298', 'Ingreso al sistema', '3', '2020-04-16', '20:34:25');
INSERT INTO `log` VALUES ('299', 'Ingreso al sistema', '3', '2020-04-16', '20:35:13');
INSERT INTO `log` VALUES ('300', 'Ingreso al sistema', '3', '2020-04-16', '20:36:20');
INSERT INTO `log` VALUES ('301', 'Ingreso al sistema', '3', '2020-04-16', '20:37:11');
INSERT INTO `log` VALUES ('302', 'Ingreso al sistema', '3', '2020-04-16', '20:37:48');
INSERT INTO `log` VALUES ('303', 'Ingreso al sistema', '3', '2020-04-16', '20:43:25');
INSERT INTO `log` VALUES ('304', 'Ingreso al sistema', '3', '2020-04-16', '20:47:06');
INSERT INTO `log` VALUES ('305', 'Ingreso al sistema', '3', '2020-04-16', '20:47:28');
INSERT INTO `log` VALUES ('306', 'Ingreso al sistema', '3', '2020-04-17', '16:34:25');
INSERT INTO `log` VALUES ('307', 'Ingreso al sistema', '3', '2020-04-17', '16:38:51');
INSERT INTO `log` VALUES ('308', 'Ingreso al sistema', '3', '2020-04-17', '18:20:19');
INSERT INTO `log` VALUES ('309', 'Ingreso al sistema', '3', '2020-04-17', '18:21:01');
INSERT INTO `log` VALUES ('310', 'Ingreso al sistema', '3', '2020-04-17', '18:22:13');
INSERT INTO `log` VALUES ('311', 'Ingreso al sistema', '3', '2020-04-17', '18:22:57');
INSERT INTO `log` VALUES ('312', 'Ingreso al sistema', '3', '2020-04-17', '18:23:49');
INSERT INTO `log` VALUES ('313', 'Ingreso al sistema', '3', '2020-04-17', '18:27:00');
INSERT INTO `log` VALUES ('314', 'Ingreso al sistema', '3', '2020-04-17', '18:27:41');
INSERT INTO `log` VALUES ('315', 'Ingreso al sistema', '3', '2020-04-17', '18:28:12');
INSERT INTO `log` VALUES ('316', 'Ingreso al sistema', '3', '2020-04-17', '18:34:58');
INSERT INTO `log` VALUES ('317', 'Ingreso al sistema', '3', '2020-04-17', '18:35:49');
INSERT INTO `log` VALUES ('318', 'Ingreso al sistema', '3', '2020-04-17', '18:37:40');
INSERT INTO `log` VALUES ('319', 'Ingreso al sistema', '3', '2020-04-17', '18:38:37');
INSERT INTO `log` VALUES ('320', 'Ingreso al sistema', '3', '2020-04-17', '18:39:53');
INSERT INTO `log` VALUES ('321', 'Ingreso al sistema', '3', '2020-04-17', '18:41:44');
INSERT INTO `log` VALUES ('322', 'Ingreso al sistema', '3', '2020-04-17', '18:49:17');
INSERT INTO `log` VALUES ('323', 'Ingreso al sistema', '3', '2020-04-17', '18:50:16');
INSERT INTO `log` VALUES ('324', 'Ingreso al sistema', '3', '2020-04-17', '18:50:57');
INSERT INTO `log` VALUES ('325', 'Ingreso al sistema', '3', '2020-04-17', '18:53:20');
INSERT INTO `log` VALUES ('326', 'Ingreso al sistema', '3', '2020-04-17', '18:53:46');
INSERT INTO `log` VALUES ('327', 'Ingreso al sistema', '3', '2020-04-17', '18:55:48');
INSERT INTO `log` VALUES ('328', 'Ingreso al sistema', '3', '2020-04-17', '18:56:12');
INSERT INTO `log` VALUES ('329', 'Ingreso al sistema', '3', '2020-04-17', '19:01:01');
INSERT INTO `log` VALUES ('330', 'Ingreso al sistema', '3', '2020-04-17', '19:01:31');
INSERT INTO `log` VALUES ('331', 'Ingreso al sistema', '3', '2020-04-17', '19:02:04');
INSERT INTO `log` VALUES ('332', 'Ingreso al sistema', '3', '2020-04-17', '19:02:58');
INSERT INTO `log` VALUES ('333', 'Ingreso al sistema', '3', '2020-04-17', '19:03:55');
INSERT INTO `log` VALUES ('334', 'Ingreso al sistema', '3', '2020-04-17', '19:04:19');
INSERT INTO `log` VALUES ('335', 'Ingreso al sistema', '3', '2020-04-17', '19:06:25');
INSERT INTO `log` VALUES ('336', 'Ingreso al sistema', '3', '2020-04-17', '19:06:56');
INSERT INTO `log` VALUES ('337', 'Ingreso al sistema', '3', '2020-04-17', '19:11:00');
INSERT INTO `log` VALUES ('338', 'Ingreso al sistema', '3', '2020-04-17', '19:12:39');
INSERT INTO `log` VALUES ('339', 'Ingreso al sistema', '3', '2020-04-17', '19:13:31');
INSERT INTO `log` VALUES ('340', 'Ingreso al sistema', '3', '2020-04-17', '19:14:00');
INSERT INTO `log` VALUES ('341', 'Ingreso al sistema', '3', '2020-04-17', '19:18:19');
INSERT INTO `log` VALUES ('342', 'Ingreso al sistema', '3', '2020-04-17', '19:18:48');
INSERT INTO `log` VALUES ('343', 'Ingreso al sistema', '3', '2020-04-17', '19:19:22');
INSERT INTO `log` VALUES ('344', 'Ingreso al sistema', '3', '2020-04-17', '19:21:49');
INSERT INTO `log` VALUES ('345', 'Ingreso al sistema', '3', '2020-04-17', '19:22:35');
INSERT INTO `log` VALUES ('346', 'Ingreso al sistema', '3', '2020-04-17', '19:23:13');
INSERT INTO `log` VALUES ('347', 'Ingreso al sistema', '3', '2020-04-17', '19:24:17');
INSERT INTO `log` VALUES ('348', 'Ingreso al sistema', '3', '2020-04-17', '19:24:58');
INSERT INTO `log` VALUES ('349', 'Ingreso al sistema', '3', '2020-04-17', '19:27:01');
INSERT INTO `log` VALUES ('350', 'Ingreso al sistema', '3', '2020-04-17', '19:28:32');
INSERT INTO `log` VALUES ('351', 'Ingreso al sistema', '3', '2020-04-17', '19:30:29');
INSERT INTO `log` VALUES ('352', 'Ingreso al sistema', '3', '2020-04-17', '19:32:36');
INSERT INTO `log` VALUES ('353', 'Ingreso al sistema', '3', '2020-04-17', '19:33:49');
INSERT INTO `log` VALUES ('354', 'Ingreso al sistema', '3', '2020-04-17', '19:37:16');
INSERT INTO `log` VALUES ('355', 'Ingreso al sistema', '3', '2020-04-17', '19:42:16');
INSERT INTO `log` VALUES ('356', 'Ingreso al sistema', '3', '2020-04-17', '19:43:13');
INSERT INTO `log` VALUES ('357', 'Ingreso al sistema', '3', '2020-04-17', '19:44:12');
INSERT INTO `log` VALUES ('358', 'Ingreso al sistema', '3', '2020-04-17', '19:45:15');
INSERT INTO `log` VALUES ('359', 'Ingreso al sistema', '3', '2020-04-17', '19:47:32');
INSERT INTO `log` VALUES ('360', 'Ingreso al sistema', '3', '2020-04-17', '19:48:22');
INSERT INTO `log` VALUES ('361', 'Ingreso al sistema', '3', '2020-04-17', '19:49:47');
INSERT INTO `log` VALUES ('362', 'Ingreso al sistema', '3', '2020-04-17', '19:50:41');
INSERT INTO `log` VALUES ('363', 'Ingreso al sistema', '3', '2020-04-17', '19:51:34');
INSERT INTO `log` VALUES ('364', 'Ingreso al sistema', '3', '2020-04-17', '21:27:06');
INSERT INTO `log` VALUES ('365', 'Ingreso al sistema', '3', '2020-04-17', '21:27:51');
INSERT INTO `log` VALUES ('366', 'Ingreso al sistema', '3', '2020-04-17', '21:35:25');
INSERT INTO `log` VALUES ('367', 'Ingreso al sistema', '3', '2020-04-17', '21:36:38');
INSERT INTO `log` VALUES ('368', 'Ingreso al sistema', '3', '2020-04-17', '21:40:35');
INSERT INTO `log` VALUES ('369', 'Ingreso al sistema', '3', '2020-04-17', '21:59:25');
INSERT INTO `log` VALUES ('370', 'Ingreso al sistema', '3', '2020-04-17', '22:01:43');
INSERT INTO `log` VALUES ('371', 'Ingreso al sistema', '3', '2020-04-17', '22:07:25');
INSERT INTO `log` VALUES ('372', 'Ingreso al sistema', '3', '2020-04-17', '22:08:27');
INSERT INTO `log` VALUES ('373', 'Ingreso al sistema', '3', '2020-04-17', '22:09:49');
INSERT INTO `log` VALUES ('374', 'Ingreso al sistema', '3', '2020-04-17', '22:11:58');
INSERT INTO `log` VALUES ('375', 'Ingreso al sistema', '3', '2020-04-17', '22:12:40');
INSERT INTO `log` VALUES ('376', 'Ingreso al sistema', '3', '2020-04-17', '22:17:11');
INSERT INTO `log` VALUES ('377', 'Ingreso al sistema', '3', '2020-04-17', '22:22:09');
INSERT INTO `log` VALUES ('378', 'Ingreso al sistema', '3', '2020-04-17', '22:24:01');
INSERT INTO `log` VALUES ('379', 'Ingreso al sistema', '3', '2020-04-17', '22:25:09');
INSERT INTO `log` VALUES ('380', 'Ingreso al sistema', '3', '2020-04-17', '22:26:43');
INSERT INTO `log` VALUES ('381', 'Ingreso al sistema', '3', '2020-04-17', '22:28:27');
INSERT INTO `log` VALUES ('382', 'Ingreso al sistema', '3', '2020-04-17', '22:29:46');
INSERT INTO `log` VALUES ('383', 'Ingreso al sistema', '3', '2020-04-17', '22:30:43');
INSERT INTO `log` VALUES ('384', 'Ingreso al sistema', '3', '2020-04-17', '22:31:27');
INSERT INTO `log` VALUES ('385', 'Ingreso al sistema', '3', '2020-04-17', '22:33:37');
INSERT INTO `log` VALUES ('386', 'Ingreso al sistema', '3', '2020-04-17', '22:34:23');
INSERT INTO `log` VALUES ('387', 'Ingreso al sistema', '3', '2020-04-17', '22:35:56');
INSERT INTO `log` VALUES ('388', 'Ingreso al sistema', '3', '2020-04-17', '22:36:55');
INSERT INTO `log` VALUES ('389', 'Ingreso al sistema', '3', '2020-04-17', '22:37:50');
INSERT INTO `log` VALUES ('390', 'Ingreso al sistema', '3', '2020-04-17', '22:38:53');
INSERT INTO `log` VALUES ('391', 'Ingreso al sistema', '3', '2020-04-17', '22:40:03');
INSERT INTO `log` VALUES ('392', 'Ingreso al sistema', '3', '2020-04-17', '23:02:33');
INSERT INTO `log` VALUES ('393', 'Ingreso al sistema', '3', '2020-04-17', '23:13:53');
INSERT INTO `log` VALUES ('394', 'Ingreso al sistema', '3', '2020-04-17', '23:14:22');
INSERT INTO `log` VALUES ('395', 'Ingreso al sistema', '3', '2020-04-17', '23:15:26');
INSERT INTO `log` VALUES ('396', 'Ingreso al sistema', '3', '2020-04-17', '23:16:18');
INSERT INTO `log` VALUES ('397', 'Ingreso al sistema', '3', '2020-04-17', '23:21:15');
INSERT INTO `log` VALUES ('398', 'Ingreso al sistema', '3', '2020-04-17', '23:23:49');
INSERT INTO `log` VALUES ('399', 'Ingreso al sistema', '3', '2020-04-17', '23:29:02');
INSERT INTO `log` VALUES ('400', 'Ingreso al sistema', '3', '2020-04-17', '23:33:19');
INSERT INTO `log` VALUES ('401', 'Ingreso al sistema', '3', '2020-04-18', '16:39:52');
INSERT INTO `log` VALUES ('402', 'Ingreso al sistema', '3', '2020-04-18', '16:40:41');
INSERT INTO `log` VALUES ('403', 'Ingreso al sistema', '3', '2020-04-18', '16:42:24');
INSERT INTO `log` VALUES ('404', 'Ingreso al sistema', '3', '2020-04-18', '16:45:36');
INSERT INTO `log` VALUES ('405', 'Ingreso al sistema', '3', '2020-04-18', '16:50:18');
INSERT INTO `log` VALUES ('406', 'Ingreso al sistema', '3', '2020-04-18', '16:56:44');
INSERT INTO `log` VALUES ('407', 'Ingreso al sistema', '3', '2020-04-18', '17:08:49');
INSERT INTO `log` VALUES ('408', 'Ingreso al sistema', '3', '2020-04-18', '17:10:58');
INSERT INTO `log` VALUES ('409', 'Ingreso al sistema', '3', '2020-04-18', '17:14:01');
INSERT INTO `log` VALUES ('410', 'Ingreso al sistema', '3', '2020-04-18', '19:50:09');
INSERT INTO `log` VALUES ('411', 'Ingreso al sistema', '3', '2020-04-18', '19:50:58');
INSERT INTO `log` VALUES ('412', 'Ingreso al sistema', '3', '2020-04-18', '21:30:57');
INSERT INTO `log` VALUES ('413', 'Ingreso al sistema', '3', '2020-04-18', '21:32:39');
INSERT INTO `log` VALUES ('414', 'Ingreso al sistema', '3', '2020-04-18', '21:33:31');
INSERT INTO `log` VALUES ('415', 'Ingreso al sistema', '3', '2020-04-18', '21:41:49');
INSERT INTO `log` VALUES ('416', 'Ingreso al sistema', '3', '2020-04-18', '21:44:08');
INSERT INTO `log` VALUES ('417', 'Ingreso al sistema', '3', '2020-04-18', '21:46:08');
INSERT INTO `log` VALUES ('418', 'Ingreso al sistema', '3', '2020-04-18', '21:48:27');
INSERT INTO `log` VALUES ('419', 'Ingreso al sistema', '3', '2020-04-18', '22:06:55');
INSERT INTO `log` VALUES ('420', 'Ingreso al sistema', '3', '2020-04-18', '22:07:18');
INSERT INTO `log` VALUES ('421', 'Ingreso al sistema', '3', '2020-04-18', '22:13:22');
INSERT INTO `log` VALUES ('422', 'Ingreso al sistema', '3', '2020-04-18', '22:19:56');
INSERT INTO `log` VALUES ('423', 'Ingreso al sistema', '3', '2020-04-18', '22:21:45');
INSERT INTO `log` VALUES ('424', 'Ingreso al sistema', '3', '2020-04-18', '22:24:01');
INSERT INTO `log` VALUES ('425', 'Ingreso al sistema', '3', '2020-04-18', '22:25:40');
INSERT INTO `log` VALUES ('426', 'Se ha actualizado el horario para la persona José Luis Margarito Escalona Garza', '3', '2020-04-18', '22:25:58');
INSERT INTO `log` VALUES ('427', 'Ingreso al sistema', '3', '2020-04-18', '22:34:23');
INSERT INTO `log` VALUES ('428', 'Se ha actualizado el horario para la persona José Luis Margarito Escalona Garza', '3', '2020-04-18', '22:34:34');
INSERT INTO `log` VALUES ('429', 'Ingreso al sistema', '3', '2020-04-18', '22:35:56');
INSERT INTO `log` VALUES ('430', 'Se ha actualizado el horario para la persona José Luis Margarito Escalona Garza', '3', '2020-04-18', '22:36:04');
INSERT INTO `log` VALUES ('431', 'Ingreso al sistema', '3', '2020-04-18', '22:38:50');
INSERT INTO `log` VALUES ('432', 'Se ha creado un horario para la persona José Luis Margarito Escalona Garza', '3', '2020-04-18', '22:38:58');
INSERT INTO `log` VALUES ('433', 'Ingreso al sistema', '3', '2020-04-18', '22:51:51');
INSERT INTO `log` VALUES ('434', 'Ingreso al sistema', '3', '2020-04-18', '22:55:13');
INSERT INTO `log` VALUES ('435', 'Ingreso al sistema', '3', '2020-04-18', '22:56:44');
INSERT INTO `log` VALUES ('436', 'Ingreso al sistema', '3', '2020-04-18', '22:58:24');
INSERT INTO `log` VALUES ('437', 'Ingreso al sistema', '3', '2020-04-18', '22:59:02');
INSERT INTO `log` VALUES ('438', 'Se ha creado un horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '22:59:13');
INSERT INTO `log` VALUES ('439', 'Ingreso al sistema', '3', '2020-04-18', '22:59:38');
INSERT INTO `log` VALUES ('440', 'Ingreso al sistema', '3', '2020-04-18', '23:02:27');
INSERT INTO `log` VALUES ('441', 'Ingreso al sistema', '3', '2020-04-18', '23:03:38');
INSERT INTO `log` VALUES ('442', 'Ingreso al sistema', '3', '2020-04-18', '23:04:14');
INSERT INTO `log` VALUES ('443', 'Ingreso al sistema', '3', '2020-04-18', '23:09:46');
INSERT INTO `log` VALUES ('444', 'Ingreso al sistema', '3', '2020-04-18', '23:10:24');
INSERT INTO `log` VALUES ('445', 'Ingreso al sistema', '3', '2020-04-18', '23:12:48');
INSERT INTO `log` VALUES ('446', 'Se ha actualizado el horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '23:13:05');
INSERT INTO `log` VALUES ('447', 'Ingreso al sistema', '3', '2020-04-18', '23:14:33');
INSERT INTO `log` VALUES ('448', 'Se ha actualizado el horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '23:14:46');
INSERT INTO `log` VALUES ('449', 'Ingreso al sistema', '3', '2020-04-18', '23:16:20');
INSERT INTO `log` VALUES ('450', 'Se ha actualizado el horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '23:16:29');
INSERT INTO `log` VALUES ('451', 'Ingreso al sistema', '3', '2020-04-18', '23:17:28');
INSERT INTO `log` VALUES ('452', 'Se ha actualizado el horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '23:17:39');
INSERT INTO `log` VALUES ('453', 'Se ha actualizado el horario para la persona Víctor Hugo Perez Briseño', '3', '2020-04-18', '23:18:54');
INSERT INTO `log` VALUES ('454', 'Ingreso al sistema', '3', '2020-04-18', '23:25:24');
INSERT INTO `log` VALUES ('455', 'Ingreso al sistema', '3', '2020-04-18', '23:28:13');
INSERT INTO `log` VALUES ('456', 'Ingreso al sistema', '3', '2020-04-18', '23:31:39');
INSERT INTO `log` VALUES ('457', 'Ingreso al sistema', '3', '2020-04-18', '23:35:24');
INSERT INTO `log` VALUES ('458', 'Ingreso al sistema', '3', '2020-04-18', '23:37:57');
INSERT INTO `log` VALUES ('459', 'Ingreso al sistema', '3', '2020-04-18', '23:38:23');
INSERT INTO `log` VALUES ('460', 'Ingreso al sistema', '3', '2020-04-18', '23:38:46');
INSERT INTO `log` VALUES ('461', 'Ingreso al sistema', '3', '2020-04-18', '23:39:08');
INSERT INTO `log` VALUES ('462', 'Ingreso al sistema', '3', '2020-04-18', '23:39:30');
INSERT INTO `log` VALUES ('463', 'Ingreso al sistema', '3', '2020-04-18', '23:40:59');
INSERT INTO `log` VALUES ('464', 'Ingreso al sistema', '3', '2020-04-18', '23:41:49');
INSERT INTO `log` VALUES ('465', 'Ingreso al sistema', '3', '2020-04-18', '23:42:02');
INSERT INTO `log` VALUES ('466', 'Ingreso al sistema', '3', '2020-04-18', '23:42:20');
INSERT INTO `log` VALUES ('467', 'Ingreso al sistema', '3', '2020-04-18', '23:43:14');
INSERT INTO `log` VALUES ('468', 'Ingreso al sistema', '3', '2020-04-18', '23:45:16');
INSERT INTO `log` VALUES ('469', 'Ingreso al sistema', '3', '2020-04-18', '23:46:07');
INSERT INTO `log` VALUES ('470', 'Ingreso al sistema', '3', '2020-04-18', '23:46:36');
INSERT INTO `log` VALUES ('471', 'Ingreso al sistema', '3', '2020-04-18', '23:47:02');
INSERT INTO `log` VALUES ('472', 'Se ha actualizado el horario para la persona José Luis Margarito Escalona Garza', '3', '2020-04-18', '23:48:43');
INSERT INTO `log` VALUES ('473', 'Ingreso al sistema', '3', '2020-04-18', '23:50:13');
INSERT INTO `log` VALUES ('474', 'Ingreso al sistema', '3', '2020-04-18', '23:51:03');
INSERT INTO `log` VALUES ('475', 'Ingreso al sistema', '3', '2020-04-18', '23:52:23');
INSERT INTO `log` VALUES ('476', 'Ingreso al sistema', '3', '2020-04-18', '23:52:53');
INSERT INTO `log` VALUES ('477', 'Ingreso al sistema', '3', '2020-04-19', '00:23:54');
INSERT INTO `log` VALUES ('478', 'Ingreso al sistema', '3', '2020-04-19', '00:24:19');
INSERT INTO `log` VALUES ('479', 'Ingreso al sistema', '3', '2020-04-19', '00:24:44');
INSERT INTO `log` VALUES ('480', 'Ha cambiado al tema Azul Britanico', '3', '2020-04-19', '00:24:51');
INSERT INTO `log` VALUES ('481', 'Ha cambiado al tema Dark Green', '3', '2020-04-19', '00:24:57');
INSERT INTO `log` VALUES ('482', 'Ha cambiado al tema Obscuro Clasico', '3', '2020-04-19', '00:25:01');
INSERT INTO `log` VALUES ('483', 'Ha cambiado al tema Chopes', '3', '2020-04-19', '00:25:04');
INSERT INTO `log` VALUES ('484', 'Ingreso al sistema', '3', '2020-04-19', '00:26:47');
INSERT INTO `log` VALUES ('485', 'Salio del sistema', '3', '2020-04-19', '00:26:52');
INSERT INTO `log` VALUES ('486', 'Ingreso al sistema', '3', '2020-04-19', '00:28:12');
INSERT INTO `log` VALUES ('487', 'Ingreso al sistema', '3', '2020-04-19', '00:28:39');
INSERT INTO `log` VALUES ('488', 'Ingreso al sistema', '3', '2020-04-19', '00:31:58');
INSERT INTO `log` VALUES ('489', 'Ingreso al sistema', '3', '2020-04-19', '01:02:14');
INSERT INTO `log` VALUES ('490', 'Ingreso al sistema', '3', '2020-04-19', '01:05:37');
INSERT INTO `log` VALUES ('491', 'Ingreso al sistema', '3', '2020-04-19', '01:10:34');
INSERT INTO `log` VALUES ('492', 'Ingreso al sistema', '3', '2020-04-19', '01:14:55');
INSERT INTO `log` VALUES ('493', 'Ingreso al sistema', '3', '2020-04-19', '16:42:03');
INSERT INTO `log` VALUES ('494', 'Ingreso al sistema', '3', '2020-04-19', '16:44:32');
INSERT INTO `log` VALUES ('495', 'Ingreso al sistema', '3', '2020-04-19', '16:45:20');
INSERT INTO `log` VALUES ('496', 'Ingreso al sistema', '3', '2020-04-19', '16:57:25');
INSERT INTO `log` VALUES ('497', 'Ingreso al sistema', '3', '2020-04-19', '17:06:13');
INSERT INTO `log` VALUES ('498', 'Ingreso al sistema', '3', '2020-04-19', '17:08:31');
INSERT INTO `log` VALUES ('499', 'Ingreso al sistema', '3', '2020-04-19', '17:11:42');
INSERT INTO `log` VALUES ('500', 'Ingreso al sistema', '3', '2020-04-19', '17:14:07');
INSERT INTO `log` VALUES ('501', 'Ingreso al sistema', '3', '2020-04-19', '17:18:59');
INSERT INTO `log` VALUES ('502', 'Ingreso al sistema', '3', '2020-04-19', '17:20:51');
INSERT INTO `log` VALUES ('503', 'Ingreso al sistema', '3', '2020-04-19', '17:21:14');
INSERT INTO `log` VALUES ('504', 'Ingreso al sistema', '3', '2020-04-19', '17:29:03');
INSERT INTO `log` VALUES ('505', 'Ingreso al sistema', '3', '2020-04-19', '17:34:14');
INSERT INTO `log` VALUES ('506', 'Ingreso al sistema', '3', '2020-04-19', '17:38:30');
INSERT INTO `log` VALUES ('507', 'Ingreso al sistema', '3', '2020-04-19', '17:39:30');
INSERT INTO `log` VALUES ('508', 'Ingreso al sistema', '3', '2020-04-19', '17:42:05');
INSERT INTO `log` VALUES ('509', 'Ingreso al sistema', '3', '2020-04-19', '17:42:51');
INSERT INTO `log` VALUES ('510', 'Ingreso al sistema', '3', '2020-04-19', '17:45:46');
INSERT INTO `log` VALUES ('511', 'Ingreso al sistema', '3', '2020-04-19', '17:47:21');
INSERT INTO `log` VALUES ('512', 'Ingreso al sistema', '3', '2020-04-19', '17:59:19');
INSERT INTO `log` VALUES ('513', 'Ingreso al sistema', '3', '2020-04-19', '18:02:28');
INSERT INTO `log` VALUES ('514', 'Ingreso al sistema', '3', '2020-04-19', '18:03:39');
INSERT INTO `log` VALUES ('515', 'Ingreso al sistema', '3', '2020-04-19', '18:04:32');
INSERT INTO `log` VALUES ('516', 'Ingreso al sistema', '3', '2020-04-19', '18:05:24');
INSERT INTO `log` VALUES ('517', 'Ingreso al sistema', '3', '2020-04-19', '18:06:44');
INSERT INTO `log` VALUES ('518', 'Ingreso al sistema', '3', '2020-04-19', '18:08:12');
INSERT INTO `log` VALUES ('519', 'Ingreso al sistema', '3', '2020-04-19', '18:13:18');
INSERT INTO `log` VALUES ('520', 'Ingreso al sistema', '3', '2020-04-19', '18:16:55');
INSERT INTO `log` VALUES ('521', 'Ingreso al sistema', '3', '2020-04-19', '18:17:12');
INSERT INTO `log` VALUES ('522', 'Ingreso al sistema', '3', '2020-04-19', '18:22:05');
INSERT INTO `log` VALUES ('523', 'Ingreso al sistema', '3', '2020-04-19', '18:24:12');
INSERT INTO `log` VALUES ('524', 'Ingreso al sistema', '3', '2020-04-19', '18:32:35');
INSERT INTO `log` VALUES ('525', 'Ingreso al sistema', '3', '2020-04-19', '18:40:06');
INSERT INTO `log` VALUES ('526', 'Se ha creado un horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '18:40:21');
INSERT INTO `log` VALUES ('527', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '18:40:57');
INSERT INTO `log` VALUES ('528', 'Salio del sistema', '3', '2020-04-19', '18:42:16');
INSERT INTO `log` VALUES ('529', 'Ingreso al sistema', '3', '2020-04-19', '20:11:05');
INSERT INTO `log` VALUES ('530', 'Se ha creado un horario para la persona Silvia Guadalupe Muñiz Tienda', '3', '2020-04-19', '20:19:29');
INSERT INTO `log` VALUES ('531', 'Se ha creado un horario para la persona Yulisa Luna Rodriguez', '3', '2020-04-19', '20:21:49');
INSERT INTO `log` VALUES ('532', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:22:58');
INSERT INTO `log` VALUES ('533', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:26:34');
INSERT INTO `log` VALUES ('534', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:26:57');
INSERT INTO `log` VALUES ('535', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:29:20');
INSERT INTO `log` VALUES ('536', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:29:56');
INSERT INTO `log` VALUES ('537', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:30:47');
INSERT INTO `log` VALUES ('538', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:31:27');
INSERT INTO `log` VALUES ('539', 'Ingreso al sistema', '3', '2020-04-19', '20:33:09');
INSERT INTO `log` VALUES ('540', 'Ingreso al sistema', '3', '2020-04-19', '20:34:20');
INSERT INTO `log` VALUES ('541', 'Ingreso al sistema', '3', '2020-04-19', '20:36:20');
INSERT INTO `log` VALUES ('542', 'Ingreso al sistema', '3', '2020-04-19', '20:37:27');
INSERT INTO `log` VALUES ('543', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:37:59');
INSERT INTO `log` VALUES ('544', 'Se ha actualizado el horario para la persona Judith Guadalupe Zamarripa Villanueva', '3', '2020-04-19', '20:38:16');
INSERT INTO `log` VALUES ('545', 'Ingreso al sistema', '3', '2020-04-19', '20:42:16');
INSERT INTO `log` VALUES ('546', 'Ingreso al sistema', '3', '2020-04-19', '20:57:22');
INSERT INTO `log` VALUES ('547', 'Ingreso al sistema', '3', '2020-04-19', '20:58:29');
INSERT INTO `log` VALUES ('548', 'Ingreso al sistema', '3', '2020-04-19', '20:59:44');
INSERT INTO `log` VALUES ('549', 'Ingreso al sistema', '3', '2020-04-19', '21:01:43');
INSERT INTO `log` VALUES ('550', 'Ingreso al sistema', '3', '2020-04-19', '21:07:13');
INSERT INTO `log` VALUES ('551', 'Ingreso al sistema', '3', '2020-04-19', '21:07:52');
INSERT INTO `log` VALUES ('552', 'Se ha creado un horario para la persona José Manuel Rosales Bravó', '3', '2020-04-19', '21:15:34');
INSERT INTO `log` VALUES ('553', 'Se ha actualizado el horario para la persona José Manuel Rosales Bravó', '3', '2020-04-19', '21:16:14');
INSERT INTO `log` VALUES ('554', 'Ingreso al sistema', '3', '2020-04-22', '16:45:42');
INSERT INTO `log` VALUES ('555', 'Ingreso al sistema', '3', '2020-04-22', '16:59:13');
INSERT INTO `log` VALUES ('556', 'Ingreso al sistema', '3', '2020-04-22', '16:59:37');
INSERT INTO `log` VALUES ('557', 'Ingreso al sistema', '3', '2020-04-22', '17:03:36');
INSERT INTO `log` VALUES ('558', 'Ingreso al sistema', '3', '2020-04-22', '17:04:23');
INSERT INTO `log` VALUES ('559', 'Ingreso al sistema', '3', '2020-04-22', '17:15:48');
INSERT INTO `log` VALUES ('560', 'Ingreso al sistema', '3', '2020-04-22', '17:22:27');
INSERT INTO `log` VALUES ('561', 'Ingreso al sistema', '3', '2020-04-22', '17:35:49');
INSERT INTO `log` VALUES ('562', 'Ingreso al sistema', '3', '2020-04-22', '17:37:23');
INSERT INTO `log` VALUES ('563', 'Ingreso al sistema', '3', '2020-04-22', '18:39:46');
INSERT INTO `log` VALUES ('564', 'Ingreso al sistema', '3', '2020-04-22', '19:03:35');
INSERT INTO `log` VALUES ('565', 'Ingreso al sistema', '3', '2020-04-22', '19:07:42');
INSERT INTO `log` VALUES ('566', 'Ingreso al sistema', '3', '2020-04-22', '19:14:26');
INSERT INTO `log` VALUES ('567', 'Ingreso al sistema', '3', '2020-04-24', '18:04:18');
INSERT INTO `log` VALUES ('568', 'Ingreso al sistema', '3', '2020-04-24', '18:17:43');
INSERT INTO `log` VALUES ('569', 'Se ha desactivado un registro de la tabla tabla Temas', '3', '2020-04-24', '18:22:56');
INSERT INTO `log` VALUES ('570', 'Se ha reactivado un registro de la tabla tabla Temas', '3', '2020-04-24', '18:23:08');
INSERT INTO `log` VALUES ('571', 'Ingreso al sistema', '3', '2020-04-27', '14:20:55');
INSERT INTO `log` VALUES ('572', 'Ingreso al sistema', '3', '2020-05-07', '21:06:42');
INSERT INTO `log` VALUES ('573', 'Se insertado un nuevo registro a la tabla Temas', '3', '2020-05-07', '21:37:52');
INSERT INTO `log` VALUES ('574', 'Se ha modificado un registro de la tabla tabla Temas', '3', '2020-05-07', '21:38:31');
INSERT INTO `log` VALUES ('575', 'Ha cambiado al tema Prueba', '3', '2020-05-07', '21:39:01');
INSERT INTO `log` VALUES ('576', 'Se ha desactivado un registro de la tabla tabla Temas', '3', '2020-05-07', '21:39:05');
INSERT INTO `log` VALUES ('577', 'Se ha reactivado un registro de la tabla tabla Temas', '3', '2020-05-07', '21:39:12');
INSERT INTO `log` VALUES ('578', 'Ha cambiado al tema Grey and Blue', '3', '2020-05-07', '21:39:48');
INSERT INTO `log` VALUES ('579', 'Ingreso al sistema', '3', '2020-05-08', '16:13:23');
INSERT INTO `log` VALUES ('580', 'Ingreso al sistema', '3', '2020-05-08', '16:16:00');
INSERT INTO `log` VALUES ('581', 'Ingreso al sistema', '3', '2020-05-08', '16:26:21');
INSERT INTO `log` VALUES ('582', 'Ingreso al sistema', '3', '2020-05-08', '16:31:14');
INSERT INTO `log` VALUES ('583', 'Ingreso al sistema', '3', '2020-05-08', '16:32:12');
INSERT INTO `log` VALUES ('584', 'Ingreso al sistema', '3', '2020-05-08', '16:33:46');
INSERT INTO `log` VALUES ('585', 'Ingreso al sistema', '3', '2020-05-08', '16:36:44');
INSERT INTO `log` VALUES ('586', 'Ingreso al sistema', '3', '2020-05-08', '16:39:09');
INSERT INTO `log` VALUES ('587', 'Ingreso al sistema', '3', '2020-05-08', '16:45:02');
INSERT INTO `log` VALUES ('588', 'Ingreso al sistema', '3', '2020-05-08', '16:46:00');
INSERT INTO `log` VALUES ('589', 'Ingreso al sistema', '3', '2020-05-08', '16:46:38');
INSERT INTO `log` VALUES ('590', 'Ingreso al sistema', '3', '2020-05-08', '16:47:18');
INSERT INTO `log` VALUES ('591', 'Ingreso al sistema', '3', '2020-05-09', '18:41:31');
INSERT INTO `log` VALUES ('592', 'Ingreso al sistema', '3', '2020-05-09', '18:45:43');
INSERT INTO `log` VALUES ('593', 'Ha cambiado al tema Oscuro', '3', '2020-05-09', '22:36:11');
INSERT INTO `log` VALUES ('594', 'Ingreso al sistema', '3', '2020-05-22', '17:02:49');
INSERT INTO `log` VALUES ('595', 'Ha cambiado al tema Chopes', '3', '2020-05-22', '17:21:16');
INSERT INTO `log` VALUES ('596', 'Ha cambiado al tema Azul Britanico', '3', '2020-05-22', '17:21:33');
INSERT INTO `log` VALUES ('597', 'Ha cambiado al tema Chopes', '3', '2020-05-22', '17:21:36');
INSERT INTO `log` VALUES ('598', 'Ingreso al sistema', '3', '2020-05-22', '17:23:24');
INSERT INTO `log` VALUES ('599', 'Se insertado un nuevo registro a la tabla Usuarios', '3', '2020-05-22', '17:26:51');
INSERT INTO `log` VALUES ('600', 'Se ha modificado un registro de la tabla tabla Usuarios', '3', '2020-05-22', '17:27:39');
INSERT INTO `log` VALUES ('601', 'Se han guardado permisos para el usuario cano1', '3', '2020-05-22', '17:28:03');
INSERT INTO `log` VALUES ('602', 'Se ha restablecido la contraseña para el usuariomaiin', '3', '2020-05-22', '17:28:20');
INSERT INTO `log` VALUES ('603', 'Se ha desactivado un registro de la tabla tabla Usuarios', '3', '2020-05-22', '17:28:30');
INSERT INTO `log` VALUES ('604', 'Se ha reactivado un registro de la tabla tabla Usuarios', '3', '2020-05-22', '17:28:37');
INSERT INTO `log` VALUES ('605', 'Ingreso al sistema', '3', '2020-05-22', '18:16:25');
INSERT INTO `log` VALUES ('606', 'Ingreso al sistema', '3', '2020-06-01', '18:49:03');
INSERT INTO `log` VALUES ('607', 'Se ha registrado una entrada para la clave 117', '3', '2020-06-01', '06:00:09');
INSERT INTO `log` VALUES ('608', 'Se ha registrado una entrada para la clave 116', '3', '2020-06-01', '06:07:34');
INSERT INTO `log` VALUES ('609', 'Se ha registrado una entrada para la clave 1358', '3', '2020-06-01', '12:26:11');
INSERT INTO `log` VALUES ('610', 'Se ha registrado una salida para la clave 1358', '3', '2020-06-01', '18:03:46');
INSERT INTO `log` VALUES ('611', 'Se ha registrado una salida para la clave 116', '3', '2020-06-01', '12:04:08');
INSERT INTO `log` VALUES ('612', 'Se ha registrado una salida para la clave 117', '3', '2020-06-01', '12:04:22');

-- ----------------------------
-- Table structure for temas
-- ----------------------------
DROP TABLE IF EXISTS `temas`;
CREATE TABLE `temas` (
  `id_tema` int(11) NOT NULL auto_increment,
  `nombre_tema` text,
  `color_letra` text,
  `color_base` text,
  `color_base_fuerte` text,
  `color_borde` text,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `activo` int(11) default NULL,
  PRIMARY KEY  (`id_tema`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temas
-- ----------------------------
INSERT INTO `temas` VALUES ('1', 'Obscuro Clasico', '#fff', '#34495e', '#2c3e50', '#c23616', '2020-03-26', '07:18:58', '1');
INSERT INTO `temas` VALUES ('2', 'ITLinares', '#fff', '#3498db', '#2980b9', '#d35400', '2020-03-26', '19:51:03', '1');
INSERT INTO `temas` VALUES ('3', 'UTLinares', '#fff', '#2ecc71', '#27ae60', '#7f8c8d', '2020-03-26', '19:52:10', '1');
INSERT INTO `temas` VALUES ('4', 'ITLinares Alternativo', '#fff', '#e67e22', '#d35400', '#3498db', '2020-03-26', '19:57:51', '1');
INSERT INTO `temas` VALUES ('5', 'Hospital Linares', '#fff', '#9b59b6', '#3A293C', '#C1D101', '2020-03-26', '20:00:39', '1');
INSERT INTO `temas` VALUES ('6', 'Warning Bootstrap', '#000', '#FFC107', '#6C757D', '#343A40', '2020-03-27', '12:12:05', '1');
INSERT INTO `temas` VALUES ('7', 'Azul Britanico', '#fff', '#273c75', '#192a56', '#44bd32', '2020-03-28', '08:20:37', '1');
INSERT INTO `temas` VALUES ('8', 'German Team', '#fff', '#f7b731', '#2C3A47', '#ff4757', '2020-03-30', '17:57:15', '1');
INSERT INTO `temas` VALUES ('9', 'CHyP', '$fff', '#ff9ff3', '#f368e0', '#222f3e', '2020-03-31', '13:15:51', '1');
INSERT INTO `temas` VALUES ('10', 'Chopes', '#d2dae2', '#4b4b4b', '#3d3d3d', '#ff3838', '2020-04-02', '00:50:33', '1');
INSERT INTO `temas` VALUES ('11', 'Adolfo', '#E3E2DE', '#9B1750', '#5D001D', '#9B1750', '2020-04-03', '17:14:10', '1');
INSERT INTO `temas` VALUES ('12', 'Cool', '#ffeaa7', '#6D214F', '#5758BB', '#2f3542', '2020-03-31', '16:50:31', '1');
INSERT INTO `temas` VALUES ('13', 'Dark Green', '#F2F2F2', '#19261B', '#2B402C', '#070D0A', '2020-03-01', '17:54:55', '1');
INSERT INTO `temas` VALUES ('14', 'Grey and Blue', '#fff', '#224277', '#3C4C59', '#65768C', '2020-03-31', '18:23:09', '1');
INSERT INTO `temas` VALUES ('15', 'Oscuro', '#ffffff', '#050505', '#050505', '#40F70E', '2020-03-16', '17:45:52', '1');
INSERT INTO `temas` VALUES ('16', 'Snarky', '#fff', '#576574', '#739fd1', '#95a5a6', '2020-03-31', '16:48:40', '1');
INSERT INTO `temas` VALUES ('18', 'Night', '#fff', '#2d3436', '#34495e', '#95a5a6', '2020-03-31', '17:37:30', '1');
INSERT INTO `temas` VALUES ('19', 'Prueba', '#0000ff', '#800000', '#ffffff', '#000000', '2020-05-07', '21:39:12', '1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL auto_increment,
  `id_dato` int(11) default NULL,
  `id_tema` int(11) default NULL,
  `nombre_usuario` text,
  `contra` text,
  `permiso_datos_persona` text,
  `permiso_ecivil` text,
  `permiso_usuario` text,
  `permiso_temas` text,
  `fecha_caducidad` date default NULL,
  `fecha_registro` date default NULL,
  `activo` int(11) default NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', '1', '7', 'doe', '12345678', 'si', 'si', 'si', 'si', '2021-03-26', '2020-05-22', '1');
INSERT INTO `usuarios` VALUES ('2', '44', '2', 'paperez', '12345', 'no', 'no', 'no', 'no', '2021-03-29', '2020-03-29', '1');
INSERT INTO `usuarios` VALUES ('3', '48', '10', 'maiin', '123', 'si', 'si', 'si', 'si', '2021-03-29', '2020-04-12', '1');
INSERT INTO `usuarios` VALUES ('4', '2', '3', 'cano1', '12345678', 'si', 'si', 'si', 'si', '2020-05-26', '2020-05-22', '1');

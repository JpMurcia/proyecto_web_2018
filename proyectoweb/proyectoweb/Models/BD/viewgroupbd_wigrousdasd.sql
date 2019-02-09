-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.21-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para viewgroup
CREATE DATABASE IF NOT EXISTS `viewgroup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup`;

-- Volcando estructura para tabla viewgroup.actividad
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_Actividad` int(11) NOT NULL,
  `fk_id_produc` int(11) DEFAULT NULL,
  `nom_actividad` varchar(45) DEFAULT NULL,
  `descripcion_actividad` varchar(45) DEFAULT NULL,
  `fecha_actividad` date DEFAULT NULL,
  `entregas_actividad` varchar(45) DEFAULT NULL,
  `conclusion_actividad` varchar(45) DEFAULT NULL,
  `avanze_actividad` varchar(45) DEFAULT NULL,
  `apreciacion_actividad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Actividad`),
  KEY `fk_Actividad_eventos_proyecto1_idx` (`fk_id_produc`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`fk_id_produc`) REFERENCES `actividad` (`id_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.actividad: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
REPLACE INTO `actividad` (`id_Actividad`, `fk_id_produc`, `nom_actividad`, `descripcion_actividad`, `fecha_actividad`, `entregas_actividad`, `conclusion_actividad`, `avanze_actividad`, `apreciacion_actividad`) VALUES
	(101, 101, 'activida super de alevinos ', 'objetivo general ', '2018-12-03', 'algun documento ajustado\r\n', NULL, '15%', 'corregir caligrafia '),
	(102, 101, 'sub_atividad ', 'objetivo especifico ', '2018-09-15', 'ajujstado2', 'algo', '12%', 'atrasaste '),
	(103, 101, 'sub_actividad2', 'objetivo especifico2', '2018-08-13', 'anjunto3', 'conlsuicon alfoa', '22%', 'adelanteste');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.actividad_has_usuario
CREATE TABLE IF NOT EXISTS `actividad_has_usuario` (
  `pk_fk_id_Actividad` int(11) NOT NULL,
  `pk_fk_id_usuario` int(11) NOT NULL,
  `fecha_asigna` date DEFAULT NULL,
  `descripcion_tarea` varchar(45) DEFAULT NULL,
  `asistencia` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_id_Actividad`,`pk_fk_id_usuario`),
  KEY `fk_Actividad_has_usuario_usuario1_idx` (`pk_fk_id_usuario`),
  KEY `fk_Actividad_has_usuario_Actividad1_idx` (`pk_fk_id_Actividad`),
  CONSTRAINT `fk_Actividad_has_usuario_Actividad1` FOREIGN KEY (`pk_fk_id_Actividad`) REFERENCES `mydb`.`actividad` (`id_Actividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Actividad_has_usuario_usuario1` FOREIGN KEY (`pk_fk_id_usuario`) REFERENCES `mydb`.`usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.actividad_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad_has_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.diseno
CREATE TABLE IF NOT EXISTS `diseno` (
  `id_diseno` int(11) NOT NULL,
  `Color_diseno` varchar(45) DEFAULT NULL,
  `fuente_letra` varchar(45) DEFAULT NULL,
  `lugar_seccion` varchar(45) DEFAULT NULL,
  `plantilla_id_plantilla` int(11) NOT NULL,
  PRIMARY KEY (`id_diseno`,`plantilla_id_plantilla`),
  KEY `fk_Diseno_plantilla1_idx` (`plantilla_id_plantilla`),
  CONSTRAINT `fk_Diseno_plantilla1` FOREIGN KEY (`plantilla_id_plantilla`) REFERENCES `mydb`.`plantilla` (`id_plantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.diseno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `diseno` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseno` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.fases_cronogra
CREATE TABLE IF NOT EXISTS `fases_cronogra` (
  `id_fases_cronogra` int(11) NOT NULL,
  `nom_fases_cronogra` varchar(45) DEFAULT NULL,
  `producto_id_produc` int(11) NOT NULL,
  PRIMARY KEY (`id_fases_cronogra`,`producto_id_produc`),
  KEY `fk_fases_cronogra_producto1_idx` (`producto_id_produc`),
  CONSTRAINT `fk_fases_cronogra_producto1` FOREIGN KEY (`producto_id_produc`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.fases_cronogra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fases_cronogra` DISABLE KEYS */;
/*!40000 ALTER TABLE `fases_cronogra` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.grupo_invest
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.grupo_invest: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.informacion_integrantes_proyecto
CREATE TABLE IF NOT EXISTS `informacion_integrantes_proyecto` (
  `pk_fk_id_evento` int(11) NOT NULL,
  `pk_fk_id_usuario` int(11) NOT NULL,
  `funcion_miembro` int(11) DEFAULT NULL,
  `Descrip_miembro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_id_evento`,`pk_fk_id_usuario`),
  KEY `fk_eventos_proyecto_has_usuario_usuario1_idx` (`pk_fk_id_usuario`),
  KEY `fk_eventos_proyecto_has_usuario_eventos_proyecto1_idx` (`pk_fk_id_evento`),
  CONSTRAINT `fk_eventos_proyecto_has_usuario_eventos_proyecto1` FOREIGN KEY (`pk_fk_id_evento`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventos_proyecto_has_usuario_usuario1` FOREIGN KEY (`pk_fk_id_usuario`) REFERENCES `mydb`.`usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.informacion_integrantes_proyecto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.pagina_web
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(45) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `mydb`.`grupo_invest` (`id_grupo_invest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `mydb`.`plantilla` (`id_plantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.pagina_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.permisos
CREATE TABLE IF NOT EXISTS `permisos` (
  `id_permisos` int(11) NOT NULL,
  `nom_perimisos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.plantilla
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(45) DEFAULT NULL,
  `url_imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.plantilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id_produc` int(11) NOT NULL,
  `fecha_de_produc` date DEFAULT NULL,
  `estado_produc` tinyint(4) DEFAULT NULL,
  `lugar_produc` varchar(45) DEFAULT NULL,
  `publico_produc` tinyint(4) DEFAULT NULL,
  `producto_pricipal_fk_id_producto` int(11) NOT NULL,
  `fk_id_grupo_invest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produc`),
  KEY `fk_producto_grupo_invest1_idx` (`fk_id_grupo_invest`),
  KEY `producto_pricipal_fk_id_producto` (`producto_pricipal_fk_id_producto`),
  CONSTRAINT `fk_pk_producto` FOREIGN KEY (`producto_pricipal_fk_id_producto`) REFERENCES `producto` (`id_produc`),
  CONSTRAINT `fk_producto_grupo_invest1` FOREIGN KEY (`fk_id_grupo_invest`) REFERENCES `mydb`.`grupo_invest` (`id_grupo_invest`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.roles: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id_rol`, `nom_rol`) VALUES
	(1, 'Administrador'),
	(2, 'Miembro'),
	(3, 'Estudiante');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.roles_permisos
CREATE TABLE IF NOT EXISTS `roles_permisos` (
  `roles_id_rol` int(11) NOT NULL,
  `permisos_id_permisos` int(11) NOT NULL,
  `fecha_permiso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roles_id_rol`,`permisos_id_permisos`),
  UNIQUE KEY `permisos_id_permisos_UNIQUE` (`permisos_id_permisos`),
  KEY `fk_roles_has_permisos_permisos1_idx` (`permisos_id_permisos`),
  KEY `fk_roles_has_permisos_roles1_idx` (`roles_id_rol`),
  CONSTRAINT `fk_roles_has_permisos_permisos1` FOREIGN KEY (`permisos_id_permisos`) REFERENCES `mydb`.`permisos` (`id_permisos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_has_permisos_roles1` FOREIGN KEY (`roles_id_rol`) REFERENCES `mydb`.`roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.roles_permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permisos` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.soporte
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(45) DEFAULT NULL,
  `pk_fk_id_produc` int(11) NOT NULL,
  PRIMARY KEY (`id_soporte`,`pk_fk_id_produc`),
  KEY `fk_soporte_producto1_idx` (`pk_fk_id_produc`),
  CONSTRAINT `fk_soporte_producto1` FOREIGN KEY (`pk_fk_id_produc`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.soporte: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `url_foto_usuario` varchar(45) DEFAULT NULL,
  `roles_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_roles1_idx` (`roles_id_rol`),
  CONSTRAINT `fk_usuario_roles1` FOREIGN KEY (`roles_id_rol`) REFERENCES `mydb`.`roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.vistas
CREATE TABLE IF NOT EXISTS `vistas` (
  `id_vistas` int(11) NOT NULL,
  `nom_vistas` varchar(45) DEFAULT NULL,
  `permisos_id_permisos` int(11) NOT NULL,
  PRIMARY KEY (`id_vistas`),
  KEY `fk_vistas_permisos1_idx` (`permisos_id_permisos`),
  CONSTRAINT `fk_vistas_permisos1` FOREIGN KEY (`permisos_id_permisos`) REFERENCES `mydb`.`permisos` (`id_permisos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.vistas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vistas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.21-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para sigepi
DROP DATABASE IF EXISTS `sigepi`;
CREATE DATABASE IF NOT EXISTS `sigepi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sigepi`;

-- Volcando estructura para tabla sigepi.grupo_inve_semillero
DROP TABLE IF EXISTS `grupo_inve_semillero`;
CREATE TABLE IF NOT EXISTS `grupo_inve_semillero` (
  `id_grupo` int(11) NOT NULL,
  `nom_grupo` varchar(600) DEFAULT NULL,
  `sigla_signif_grupo` varchar(600) DEFAULT NULL,
  `objetivo_grupo` varchar(600) DEFAULT NULL,
  `programa_grupo` varchar(600) DEFAULT NULL,
  `url_logo_grupo` varchar(600) DEFAULT NULL,
  `mision_grupo` varchar(600) DEFAULT NULL,
  `vision_grupo` varchar(600) DEFAULT NULL,
  `justif_grupo` varchar(600) DEFAULT NULL,
  `quien_somos_grupo` varchar(600) DEFAULT NULL,
  `grupo_inve_semillero_id_grupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `FK_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.integrante_has_grupo_inve_semillero
DROP TABLE IF EXISTS `integrante_has_grupo_inve_semillero`;
CREATE TABLE IF NOT EXISTS `integrante_has_grupo_inve_semillero` (
  `usuario_id_usuario` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`grupo_inve_semillero_id_grupo`),
  KEY `FK_integrante_has_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_integrante_has_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_integrante_has_grupo_inve_semillero_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.proyecto
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(500) DEFAULT NULL,
  `fecha_proyecto` date DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.proyecto_has_grupo_inve_semillero
DROP TABLE IF EXISTS `proyecto_has_grupo_inve_semillero`;
CREATE TABLE IF NOT EXISTS `proyecto_has_grupo_inve_semillero` (
  `proyecto_id_proyecto` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`proyecto_id_proyecto`,`grupo_inve_semillero_id_grupo`),
  KEY `FK_proyecto_has_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_proyecto_has_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_has_grupo_inve_semillero_proyecto` FOREIGN KEY (`proyecto_id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.tipo_usuario
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nom_tipo_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(45) NOT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `contra_usuario` varchar(45) DEFAULT NULL,
  `url_foto_usuario` varchar(45) DEFAULT NULL,
  `Programa` varchar(45) DEFAULT NULL,
  `fk_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_usuario_tipo_usuario` (`fk_tipo_usuario`),
  CONSTRAINT `FK_usuario_tipo_usuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.usuario_has_proyecto
DROP TABLE IF EXISTS `usuario_has_proyecto`;
CREATE TABLE IF NOT EXISTS `usuario_has_proyecto` (
  `usuario_id_usuario` int(11) NOT NULL,
  `proyecto_id_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`proyecto_id_proyecto`),
  KEY `FK_usuario_has_proyecto_proyecto` (`proyecto_id_proyecto`),
  CONSTRAINT `FK_usuario_has_proyecto_proyecto` FOREIGN KEY (`proyecto_id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_usuario_has_proyecto_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

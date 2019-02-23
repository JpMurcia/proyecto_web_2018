-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.21 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for viewgroup3
CREATE DATABASE IF NOT EXISTS `viewgroup3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup3`;

-- Dumping structure for table viewgroup3.actividad
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_Actividad` int(11) NOT NULL,
  `nom_actividad` varchar(255) DEFAULT NULL,
  `descripcion_actividad` varchar(255) DEFAULT NULL,
  `fecha_actividad` date DEFAULT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_Actividad`,`grupo_invest_id_grupo_invest`),
  KEY `fk_Actividad_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_Actividad_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.auditoria
CREATE TABLE IF NOT EXISTS `auditoria` (
  `id_auditoria` int(11) NOT NULL,
  `nom_grupo` varchar(45) DEFAULT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `fecha_acciion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_Categoria` int(11) NOT NULL,
  `id_nom_categoria` varchar(45) DEFAULT NULL,
  `estado_categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.facultad
CREATE TABLE IF NOT EXISTS `facultad` (
  `id_facultad` int(11) NOT NULL,
  `nom_facultad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.grupo_invest
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `nom_grupo` varchar(255) DEFAULT NULL,
  `grupo_investcol` varchar(45) DEFAULT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  `url_logo_grupo` varchar(255) DEFAULT NULL,
  `estado_grupo` tinyint(4) DEFAULT NULL,
  `siglas_signif_grupo` varchar(450) DEFAULT NULL,
  `objetivo_grupo` varchar(450) DEFAULT NULL,
  `mision_grupo` varchar(450) DEFAULT NULL,
  `vision_grupo` varchar(450) DEFAULT NULL,
  `justif_grupo` varchar(450) DEFAULT NULL,
  `quien_somos_grupo` varchar(45) DEFAULT NULL,
  `fk_grupo_semi` int(11) NOT NULL,
  `fk_id_Programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`),
  KEY `fk_grupo_invest_Programa1_idx` (`fk_id_Programa`),
  KEY `FK_grupo_invest_grupo_invest` (`fk_grupo_semi`),
  CONSTRAINT `FK_grupo_invest_programa` FOREIGN KEY (`fk_id_Programa`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_grupo_invest` FOREIGN KEY (`fk_grupo_semi`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.grupo_invest_has_usuario
CREATE TABLE IF NOT EXISTS `grupo_invest_has_usuario` (
  `pkf_id_grupo_invest` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `fk_tipo_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkf_id_grupo_invest`,`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_usuario1_idx` (`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_grupo_invest1_idx` (`pkf_id_grupo_invest`),
  KEY `FK_grupo_invest_has_usuario_tipo_usuario` (`fk_tipo_usuario`),
  CONSTRAINT `FK_grupo_invest_has_usuario_tipo_usuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_grupo_invest` FOREIGN KEY (`pkf_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.habilidades
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id_Habilidades` int(11) NOT NULL,
  `nom_Habili` varchar(45) DEFAULT NULL,
  `estado_habili` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Habilidades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.habilidades_has_usuario
CREATE TABLE IF NOT EXISTS `habilidades_has_usuario` (
  `pkf_id_Habilidades` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha_habilidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkf_id_Habilidades`,`pkf_id_usuario`),
  KEY `fk_habilidades_has_usuario_usuario1_idx` (`pkf_id_usuario`),
  KEY `fk_habilidades_has_usuario_habilidades1_idx` (`pkf_id_Habilidades`),
  CONSTRAINT `FK_habilidades_has_usuario_habilidades` FOREIGN KEY (`pkf_id_Habilidades`) REFERENCES `habilidades` (`id_Habilidades`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_habilidades_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(45) DEFAULT NULL,
  `id_menu_padre` varchar(45) DEFAULT NULL,
  `url_pagina` varchar(45) DEFAULT NULL,
  `icono` varchar(45) DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.pagina_propia
CREATE TABLE IF NOT EXISTS `pagina_propia` (
  `id_Pagina Propia` int(11) NOT NULL,
  `Nom_grupo` varchar(45) DEFAULT NULL,
  `Contenido` varchar(45) DEFAULT NULL,
  `Creadores` varchar(45) DEFAULT NULL,
  `Acredicimiento` varchar(45) DEFAULT NULL,
  `Logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Pagina Propia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.pagina_web
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(255) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `plantilla` (`id_plantilla`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.plantilla
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `id_programa` int(11) NOT NULL,
  `nom_programa` varchar(45) DEFAULT NULL,
  `fk_id_facultad` int(11) NOT NULL,
  PRIMARY KEY (`id_programa`),
  KEY `fk_Programa_facultad1_idx` (`fk_id_facultad`),
  CONSTRAINT `FK_programa_facultad` FOREIGN KEY (`fk_id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.proyecto
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_produc` int(11) NOT NULL,
  `nom_proyecto` varchar(45) DEFAULT NULL,
  `fecha_de_produc` date DEFAULT NULL,
  `estado_produc` tinyint(4) DEFAULT NULL,
  `publico_produc` tinyint(4) DEFAULT NULL,
  `fk_id_grupo_invest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produc`),
  KEY `fk_producto_grupo_invest1_idx` (`fk_id_grupo_invest`),
  CONSTRAINT `FK_proyecto_grupo_invest` FOREIGN KEY (`fk_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.proyecto_has_usuario
CREATE TABLE IF NOT EXISTS `proyecto_has_usuario` (
  `pkf_id_proyecto` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`pkf_id_proyecto`,`pkf_id_usuario`),
  KEY `FK_proyecto_has_usuario_usuario` (`pkf_id_usuario`),
  CONSTRAINT `FK_proyecto_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_has_usuario_proyecto` FOREIGN KEY (`pkf_id_proyecto`) REFERENCES `proyecto` (`id_produc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.soporte
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(255) DEFAULT NULL,
  `titulo_soporte` varchar(255) DEFAULT NULL,
  `descrip_soperte` varchar(255) DEFAULT NULL,
  `estado_soporte` varchar(45) DEFAULT NULL,
  `Fecha_publica` date DEFAULT NULL,
  `Categoria_id_Categoria` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_soporte`),
  KEY `fk_soporte_Categoria1_idx` (`Categoria_id_Categoria`),
  KEY `fk_soporte_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_soporte_Categoria1` FOREIGN KEY (`Categoria_id_Categoria`) REFERENCES `categoria` (`id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_soporte_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.tipo_usuario_has_menu
CREATE TABLE IF NOT EXISTS `tipo_usuario_has_menu` (
  `pk_fk_tipo_usuario` int(11) NOT NULL,
  `pk_fk_menu` int(11) NOT NULL,
  `fecha_menu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_tipo_usuario`,`pk_fk_menu`),
  KEY `fk_tipo_usuario_has_Menu_Menu1_idx` (`pk_fk_menu`),
  KEY `fk_tipo_usuario_has_Menu_tipo_usuario1_idx` (`pk_fk_tipo_usuario`),
  CONSTRAINT `fk_tipo_usuario_has_Menu_Menu1` FOREIGN KEY (`pk_fk_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_usuario_has_Menu_tipo_usuario1` FOREIGN KEY (`pk_fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup3.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  `email_usaurio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
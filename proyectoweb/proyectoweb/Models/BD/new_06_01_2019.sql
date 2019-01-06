-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.21 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sigepi
DROP DATABASE IF EXISTS `sigepi`;
CREATE DATABASE IF NOT EXISTS `sigepi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sigepi`;

-- Dumping structure for procedure sigepi.consultagrupo
DROP PROCEDURE IF EXISTS `consultagrupo`;
DELIMITER //
CREATE DEFINER=`root`@`%` PROCEDURE `consultagrupo`(
	IN `nombre` varchar(45)


)
begin 

select 
nom_grupo ,
sigla_signif_grupo,
objetivo_grupo ,
programa_grupo ,
mision_grupo ,
vision_grupo ,
justif_grupo ,
quien_somos_grupo ,
url_logo_grupo 
from grupo_inve_semillero	
where grupo_inve_semillero.id_grupo=grupo_inve_semillero.grupo_inve_semillero_id_grupo 
and 
grupo_inve_semillero.nom_grupo=nombre; 
	
end//
DELIMITER ;

-- Dumping structure for view sigepi.grupo_investi
DROP VIEW IF EXISTS `grupo_investi`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `grupo_investi` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for table sigepi.grupo_inve_semillero
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
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for view sigepi.hola
DROP VIEW IF EXISTS `hola`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `hola` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for table sigepi.integrante_has_grupo_inve_semillero
DROP TABLE IF EXISTS `integrante_has_grupo_inve_semillero`;
CREATE TABLE IF NOT EXISTS `integrante_has_grupo_inve_semillero` (
  `usuario_id_usuario` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`grupo_inve_semillero_id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for procedure sigepi.miembros
DROP PROCEDURE IF EXISTS `miembros`;
DELIMITER //
CREATE DEFINER=`root`@`%` PROCEDURE `miembros`(
in `id_grupo` int)
begin 

select 
usuario.nom_usuario

from usuario
inner join usuario_has_proyecto 
on usuario.id_usuario= usuario_has_proyecto.usuario_id_usuario
inner join proyecto on 
usuario_has_proyecto.proyecto_id_proyecto=proyecto.id_proyecto
inner join proyecto_has_grupo_inve_semillero on
proyecto.id_proyecto=proyecto_has_grupo_inve_semillero.proyecto_id_proyecto
where 
proyecto_has_grupo_inve_semillero.grupo_inve_semillero_id_grupo=`id_grupo`;


end//
DELIMITER ;

-- Dumping structure for view sigepi.miembroview
DROP VIEW IF EXISTS `miembroview`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `miembroview` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`id_usuario` INT(11) NOT NULL,
	`proyecto_id_proyecto` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for table sigepi.proyecto
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(45) DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sigepi.proyecto_has_grupo_inve_semillero
DROP TABLE IF EXISTS `proyecto_has_grupo_inve_semillero`;
CREATE TABLE IF NOT EXISTS `proyecto_has_grupo_inve_semillero` (
  `proyecto_id_proyecto` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`proyecto_id_proyecto`,`grupo_inve_semillero_id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for view sigepi.semillero
DROP VIEW IF EXISTS `semillero`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `semillero` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for procedure sigepi.semilleros
DROP PROCEDURE IF EXISTS `semilleros`;
DELIMITER //
CREATE DEFINER=`root`@`%` PROCEDURE `semilleros`(
	IN `nombre` VARCHAR(50)

)
begin 
select semillero.nom_grupo,
semillero.sigla_signif_grupo,
semillero.objetivo_grupo,
semillero.programa_grupo,
semillero.mision_grupo,
semillero.vision_grupo,
semillero.justif_grupo,
semillero.quien_somos_grupo
from grupo_inve_semillero 
inner join grupo_inve_semillero  as semillero
on grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
where 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo 
and
grupo_inve_semillero.nom_grupo=nombre;
end//
DELIMITER ;

-- Dumping structure for table sigepi.tipo_usuario
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nom_tipo_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sigepi.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `contra_usuario` varchar(45) DEFAULT NULL,
  `url_foto_usuario` varchar(45) DEFAULT NULL,
  `tipo_usuario_id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sigepi.usuario_has_proyecto
DROP TABLE IF EXISTS `usuario_has_proyecto`;
CREATE TABLE IF NOT EXISTS `usuario_has_proyecto` (
  `usuario_id_usuario` int(11) NOT NULL,
  `proyecto_id_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`proyecto_id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for procedure sigepi.validar_user
DROP PROCEDURE IF EXISTS `validar_user`;
DELIMITER //
CREATE DEFINER=`root`@`%` PROCEDURE `validar_user`(
in `usuari` varchar(45),
in `contra` varchar(45)
)
begin 
 
 declare nombreUsuario varchar(45);
 declare idUsuario int;
 
select 
	usu.id_usuario into idUsuario
from usuario usu
where usu.nom_usuario=usuari 
and usu.contra_usuario=contra;



if( idUsuario is null) then
	select "nada perro" as mensaje;
else 
	select 
		nom_usuario into nombreUsuario
	from usuario usu
	where usu.nom_usuario=usuari 
	and usu.contra_usuario=contra;

	select "bueeeeena perro" as mensaje,
	idUsuario as usuari,
	nombreUsuario as nombreeee;
end if;

end//
DELIMITER ;

-- Dumping structure for view sigepi.grupo_investi
DROP VIEW IF EXISTS `grupo_investi`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `grupo_investi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `grupo_investi` AS select `grupo_inve_semillero`.`nom_grupo` AS `nom_grupo`,`grupo_inve_semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_inve_semillero`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_inve_semillero`.`programa_grupo` AS `programa_grupo`,`grupo_inve_semillero`.`mision_grupo` AS `mision_grupo`,`grupo_inve_semillero`.`vision_grupo` AS `vision_grupo`,`grupo_inve_semillero`.`justif_grupo` AS `justif_grupo`,`grupo_inve_semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_inve_semillero` where (`grupo_inve_semillero`.`id_grupo` = `grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`) ;

-- Dumping structure for view sigepi.hola
DROP VIEW IF EXISTS `hola`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `hola`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hola` AS select `grupo_investi`.`nom_grupo` AS `nom_grupo`,`grupo_investi`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_investi`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_investi`.`programa_grupo` AS `programa_grupo`,`grupo_investi`.`mision_grupo` AS `mision_grupo`,`grupo_investi`.`vision_grupo` AS `vision_grupo`,`grupo_investi`.`justif_grupo` AS `justif_grupo`,`grupo_investi`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_investi` ;

-- Dumping structure for view sigepi.miembroview
DROP VIEW IF EXISTS `miembroview`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `miembroview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `miembroview` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`id_usuario` AS `id_usuario`,`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`usuario` join `usuario_has_proyecto` on((`usuario`.`id_usuario` = `usuario_has_proyecto`.`usuario_id_usuario`))) join `proyecto` on((`usuario_has_proyecto`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) join `proyecto_has_grupo_inve_semillero` on((`proyecto`.`id_proyecto` = `proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`))) where (`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo` = 111) ;

-- Dumping structure for view sigepi.semillero
DROP VIEW IF EXISTS `semillero`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `semillero`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `semillero` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where ((`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`) and (`semillero`.`grupo_inve_semillero_id_grupo` = 115)) ;


-- Dumping database structure for viewgroup
DROP DATABASE IF EXISTS `viewgroup`;
CREATE DATABASE IF NOT EXISTS `viewgroup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup`;

-- Dumping structure for table viewgroup.actividad
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_Actividad` int(11) NOT NULL,
  `fk_id_produc` int(11) DEFAULT NULL,
  `nom_actividad` varchar(255) DEFAULT NULL,
  `descripcion_actividad` varchar(255) DEFAULT NULL,
  `fecha_actividad` date DEFAULT NULL,
  `entregas_actividad` varchar(255) DEFAULT NULL,
  `conclusion_actividad` varchar(45) DEFAULT NULL,
  `avanze_actividad` varchar(45) DEFAULT NULL,
  `apreciacion_actividad` varchar(45) DEFAULT NULL,
  `fk_id_subactividad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Actividad`),
  KEY `fk_Actividad_eventos_proyecto1_idx` (`fk_id_produc`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`fk_id_produc`) REFERENCES `actividad` (`id_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.actividad_has_usuario
DROP TABLE IF EXISTS `actividad_has_usuario`;
CREATE TABLE IF NOT EXISTS `actividad_has_usuario` (
  `pk_fk_id_Actividad` int(11) NOT NULL,
  `pk_fk_id_usuario` int(11) NOT NULL,
  `fecha_asigna` date DEFAULT NULL,
  `descripcion_tarea` varchar(255) DEFAULT NULL,
  `asistencia` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_id_Actividad`,`pk_fk_id_usuario`),
  KEY `fk_Actividad_has_usuario_usuario1_idx` (`pk_fk_id_usuario`),
  KEY `fk_Actividad_has_usuario_Actividad1_idx` (`pk_fk_id_Actividad`),
  CONSTRAINT `fk_Actividad_has_usuario_Actividad1` FOREIGN KEY (`pk_fk_id_Actividad`) REFERENCES `mydb`.`actividad` (`id_Actividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Actividad_has_usuario_usuario1` FOREIGN KEY (`pk_fk_id_usuario`) REFERENCES `mydb`.`usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.diseno
DROP TABLE IF EXISTS `diseno`;
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

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.fases_cronogra
DROP TABLE IF EXISTS `fases_cronogra`;
CREATE TABLE IF NOT EXISTS `fases_cronogra` (
  `id_fases_cronogra` int(11) NOT NULL,
  `nom_fases_cronogra` varchar(255) DEFAULT NULL,
  `producto_id_produc` int(11) NOT NULL,
  PRIMARY KEY (`id_fases_cronogra`,`producto_id_produc`),
  KEY `fk_fases_cronogra_producto1_idx` (`producto_id_produc`),
  CONSTRAINT `fk_fases_cronogra_producto1` FOREIGN KEY (`producto_id_produc`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.grupo_invest
DROP TABLE IF EXISTS `grupo_invest`;
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  `nom_grupo` varchar(255) DEFAULT NULL,
  `url_lego_grupo` varchar(255) DEFAULT NULL,
  `estado_grupo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.informacion_integrantes_proyecto
DROP TABLE IF EXISTS `informacion_integrantes_proyecto`;
CREATE TABLE IF NOT EXISTS `informacion_integrantes_proyecto` (
  `pk_fk_id_evento` int(11) NOT NULL,
  `pk_fk_id_usuario` int(11) NOT NULL,
  `funcion_miembro` varchar(255) DEFAULT NULL,
  `Descrip_miembro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_id_evento`,`pk_fk_id_usuario`),
  KEY `fk_eventos_proyecto_has_usuario_usuario1_idx` (`pk_fk_id_usuario`),
  KEY `fk_eventos_proyecto_has_usuario_eventos_proyecto1_idx` (`pk_fk_id_evento`),
  CONSTRAINT `fk_eventos_proyecto_has_usuario_eventos_proyecto1` FOREIGN KEY (`pk_fk_id_evento`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventos_proyecto_has_usuario_usuario1` FOREIGN KEY (`pk_fk_id_usuario`) REFERENCES `mydb`.`usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `pk_fk_permiso` int(11) NOT NULL,
  `pk_fk_usuario` int(11) NOT NULL,
  `nom_menu` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_fk_permiso`,`pk_fk_usuario`),
  KEY `FK_menu_usuario` (`pk_fk_usuario`),
  CONSTRAINT `FK_menu_permiso` FOREIGN KEY (`pk_fk_permiso`) REFERENCES `permisos` (`id_permisos`),
  CONSTRAINT `FK_menu_usuario` FOREIGN KEY (`pk_fk_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.pagina_web
DROP TABLE IF EXISTS `pagina_web`;
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(255) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `mydb`.`grupo_invest` (`id_grupo_invest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `mydb`.`plantilla` (`id_plantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.permisos
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `id_permisos` int(11) NOT NULL,
  `nom_perimisos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.plantilla
DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.producto
DROP TABLE IF EXISTS `producto`;
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

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.roles_permisos
DROP TABLE IF EXISTS `roles_permisos`;
CREATE TABLE IF NOT EXISTS `roles_permisos` (
  `roles_id_rol` int(11) NOT NULL,
  `permisos_id_permisos` int(11) NOT NULL,
  `fecha_permiso` datetime DEFAULT NULL,
  PRIMARY KEY (`roles_id_rol`,`permisos_id_permisos`),
  KEY `fk_roles_has_permisos_permisos1_idx` (`permisos_id_permisos`),
  KEY `fk_roles_has_permisos_roles1_idx` (`roles_id_rol`),
  CONSTRAINT `fk_roles_has_permisos_permisos1` FOREIGN KEY (`permisos_id_permisos`) REFERENCES `mydb`.`permisos` (`id_permisos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_has_permisos_roles1` FOREIGN KEY (`roles_id_rol`) REFERENCES `mydb`.`roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.soporte
DROP TABLE IF EXISTS `soporte`;
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(255) DEFAULT NULL,
  `pk_fk_id_produc` int(11) NOT NULL,
  `titulo_soporte` varchar(255) NOT NULL,
  `descrip_soporte` varchar(255) NOT NULL,
  PRIMARY KEY (`id_soporte`,`pk_fk_id_produc`),
  KEY `fk_soporte_producto1_idx` (`pk_fk_id_produc`),
  CONSTRAINT `fk_soporte_producto1` FOREIGN KEY (`pk_fk_id_produc`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table viewgroup.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

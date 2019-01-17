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


-- Volcando estructura de base de datos para sigepi
CREATE DATABASE IF NOT EXISTS `sigepi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sigepi`;

-- Volcando estructura para tabla sigepi.grupo_inve_semillero
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

-- Volcando datos para la tabla sigepi.grupo_inve_semillero: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `grupo_inve_semillero` (`id_grupo`, `nom_grupo`, `sigla_signif_grupo`, `objetivo_grupo`, `programa_grupo`, `url_logo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `grupo_inve_semillero_id_grupo`) VALUES
	(111, 'Giecom', 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', '', 'Sistema', 'giecom.jpg', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', 'Justificasion falta :D', 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', 111),
	(112, 'Alecout', '', 'crear contador de alevinos', 'Sistemas', '', '', '', '', '', 111),
	(113, 'Giecom Semillero', 'hola singf invtiga3', 'objetivofhdskjha3', 'programa3', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   3', 'vison     3', 'justificasion   3', 'quienes somos     3', 111),
	(114, 'Sara', 'hola singf invtiga4', 'objetivofhdskjha4', 'programa4', 'sara.jpg', 'misio_grupo1dfsfsafsfs   4', 'vison     4', 'justificasion   4', 'quienes somos     4', 115),
	(115, 'GIIE', 'GRUPO DE INVESTIGACION EN INFORMATICA EDUCATIVA', 'Construir el grupo de investigación encargado de liderar los procesos investigativos en el área de la informática educativa en la Universidad de la Amazonia, por medio del cual se generen resultados con claridad y pertinencia, representados en productos tales como publicaciones científicas, procesos de formación y trabajos de investigación.', 'sistema', 'kjlkjdoanm.jpg', 'Generar procesos de ciencia y tecnologia que contribuyan al desarrollo científico de la informática Educativa en la región Amazónica.', 'El grupo de investigación de desarrollará los elementos constitutivos en el área de la informática educativa de lineas de investigación de la Uniamazonia tales como: Educación Ambiental, Pedagogía y Didáctica, Administración y Educación, etc.', 'justificasion   5', 'quienes somos     5', 115),
	(116, 'nom_grupo6', 'hola singf invtiga6', 'objetivofhdskjha6', 'programa2', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   6', 'vison     6', 'justificasion   6', 'quienes somos     6', NULL),
	(117, 'ECQ', 'Estrategias Computacionales en Química', 'objetivofhdskjha8', 'Quimica', 'quimica.png', 'La misión del grupo de investigación ¿Estrategias Computacionales en Química¿ es ampliar el conocimiento sobre los sistemas químicos empleando simulaciones computacionales. El grupo promueve la formación de talento humano con la capacidad de emplear los modelos computacionales modernos y desarrollar nuevas metodologías teóricas. Los proyectos de investigación están enfocados en proponer, predecir, analizar y aplicar las propiedades físicas, químicas y biológicas de compuestos químicos de interés regional, nacional o mundial.', 'Para el año 2020 nuestro grupo se habrá consolidado como uno de los grupos líderes en Colombia en el área de la química computacional. Contará con un amplio número de estudiantes de pregrado y posgrado. Los proyectos realizados por el grupo estarán estrechamente relacionados con estudios experimentales de punta, en el marco de colaboraciones interdisciplinares.', 'justificasion   8', 'quienes somos     8', 117),
	(118, 'ESTRATEGÍAS COMPUTACIONALES ', '', 'El semillero de investigación Estrategias Computacionales a puesto atención a los problemas de la región amazónica intentando brindar soluciones mediante la utilización de herramienta informáticas propias de la química, los cuales en la mayoría son libre acceso, generando propuesta de de investigación de bahjo costos de financiación pero de gran interés para la región amazónica.', 'Quimica', 'quimica.png', 'El semillero de investigación Estrategias Computacionales, buscamos la generación de nuevos conocimientos utilizando una gran variedad de herramientas computacionales de libre acceso que pueden ser de gran utilidad para la predicción de las propiedades físicas y químicas de compuestos desconocidos o difíciles de caracterizar experimentalmente, así como el análisis de las propiedades físicas y químicas de compuestos existentes, interpretando información experimental o prediciendo propiedades aún no determinadas', 'El semillero Estrategias Computacionales familiarizar a sus nuevos integrantes con las herramientas computaciones de interés químico y corroborando los resultados teóricos obtenidos con los datos experimentales reportados en la literatura. Actualmente nuestro semillero está enfocado en el estudio de la resistencia del vector del dengue, chicunguya y Zica, Aedes aegyty, utilizando para ello tanto herramientas experimentales como teóricas. Esperando obtener resultados que puedan ser de utilidad para la solución de los problemas de salud pública.', 'justificasion   7', 'quienes somos     7', 117),
	(119, 'nom_grupo9', 'hola singf invtiga9', 'objetivofhdskjha9', 'programa5', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   9', 'vison     9', 'justificasion   9', 'quienes somos     9', NULL),
	(120, 'PICARDIE', 'Producir, Integrar, Compartir para Aprender con Recursos Didácticos E-learning', 'objetivofhdskjha20', 'programa1', 'picardie.jpg', 'misio_grupo1dfsfsafsfs   20', 'vison     20', 'justificasion   20', 'quienes somos     20', 115);
/*!40000 ALTER TABLE `grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.integrante_has_grupo_inve_semillero
CREATE TABLE IF NOT EXISTS `integrante_has_grupo_inve_semillero` (
  `usuario_id_usuario` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`grupo_inve_semillero_id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.integrante_has_grupo_inve_semillero: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `integrante_has_grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `integrante_has_grupo_inve_semillero` (`usuario_id_usuario`, `grupo_inve_semillero_id_grupo`) VALUES
	(11, 111),
	(11, 112),
	(11, 113),
	(11, 114),
	(15, 115),
	(15, 116),
	(15, 117),
	(15, 118),
	(15, 119),
	(15, 120);
/*!40000 ALTER TABLE `integrante_has_grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.proyecto
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(45) DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.proyecto: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
REPLACE INTO `proyecto` (`id_proyecto`, `nom_proyecto`, `estado_proyecto`) VALUES
	(22, 'AntonioProyect', 1),
	(23, 'cacao tic', 1),
	(24, 'proyecto buena vida', 0),
	(25, 'Proyect5', 0),
	(26, 'Proyect6', 1),
	(27, 'Proyect7', 0);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.proyecto_has_grupo_inve_semillero
CREATE TABLE IF NOT EXISTS `proyecto_has_grupo_inve_semillero` (
  `proyecto_id_proyecto` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`proyecto_id_proyecto`,`grupo_inve_semillero_id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.proyecto_has_grupo_inve_semillero: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto_has_grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `proyecto_has_grupo_inve_semillero` (`proyecto_id_proyecto`, `grupo_inve_semillero_id_grupo`) VALUES
	(22, 111),
	(24, 111),
	(25, 112),
	(25, 115),
	(26, 115),
	(27, 114);
/*!40000 ALTER TABLE `proyecto_has_grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nom_tipo_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.tipo_usuario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
REPLACE INTO `tipo_usuario` (`id_tipo_usuario`, `nom_tipo_usuario`) VALUES
	(1, 'Lider'),
	(2, 'miembro'),
	(3, 'estudiante');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `contra_usuario` varchar(45) DEFAULT NULL,
  `url_foto_usuario` varchar(45) DEFAULT NULL,
  `tipo_usuario_id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.usuario: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`id_usuario`, `nom_usuario`, `contra_usuario`, `url_foto_usuario`, `tipo_usuario_id_tipo_usuario`) VALUES
	(11, 'antonio', 'contra_antorio', 'url.../dsajk', 1),
	(12, 'carlos', '12345', 'url.../dsajk', 2),
	(13, 'carlos2', '12345', 'url.../dsajk', 2),
	(14, 'brayan', 'yisus', 'url.../dsajk', 3),
	(15, 'heri', 'giecom', 'gieco', 1),
	(16, 'micht', 'giecom1', 'url.../dsajk', 2),
	(17, 'alcalde', 'giecom2', 'url.../dsajk', 2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.usuario_has_proyecto
CREATE TABLE IF NOT EXISTS `usuario_has_proyecto` (
  `usuario_id_usuario` int(11) NOT NULL,
  `proyecto_id_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`proyecto_id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.usuario_has_proyecto: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_has_proyecto` DISABLE KEYS */;
REPLACE INTO `usuario_has_proyecto` (`usuario_id_usuario`, `proyecto_id_proyecto`) VALUES
	(11, 22),
	(11, 23),
	(12, 22),
	(12, 24),
	(13, 22),
	(13, 25),
	(14, 24),
	(15, 24),
	(15, 25),
	(15, 26),
	(15, 27),
	(16, 26),
	(16, 27),
	(17, 27);
/*!40000 ALTER TABLE `usuario_has_proyecto` ENABLE KEYS */;

-- Volcando estructura para vista sigepi.grupo_investi
-- Creando tabla temporal para superar errores de dependencia de VIEW
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

-- Volcando estructura para vista sigepi.hola
-- Creando tabla temporal para superar errores de dependencia de VIEW
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

-- Volcando estructura para vista sigepi.miembroview
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `miembroview` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`id_usuario` INT(11) NOT NULL,
	`proyecto_id_proyecto` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.semillero
-- Creando tabla temporal para superar errores de dependencia de VIEW
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

-- Volcando estructura para procedimiento sigepi.consultagrupo
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

-- Volcando estructura para procedimiento sigepi.miembros
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

-- Volcando estructura para procedimiento sigepi.semilleros
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

-- Volcando estructura para procedimiento sigepi.validar_user
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

-- Volcando estructura para vista sigepi.grupo_investi
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `grupo_investi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `grupo_investi` AS select `grupo_inve_semillero`.`nom_grupo` AS `nom_grupo`,`grupo_inve_semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_inve_semillero`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_inve_semillero`.`programa_grupo` AS `programa_grupo`,`grupo_inve_semillero`.`mision_grupo` AS `mision_grupo`,`grupo_inve_semillero`.`vision_grupo` AS `vision_grupo`,`grupo_inve_semillero`.`justif_grupo` AS `justif_grupo`,`grupo_inve_semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_inve_semillero` where (`grupo_inve_semillero`.`id_grupo` = `grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.hola
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `hola`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hola` AS select `grupo_investi`.`nom_grupo` AS `nom_grupo`,`grupo_investi`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_investi`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_investi`.`programa_grupo` AS `programa_grupo`,`grupo_investi`.`mision_grupo` AS `mision_grupo`,`grupo_investi`.`vision_grupo` AS `vision_grupo`,`grupo_investi`.`justif_grupo` AS `justif_grupo`,`grupo_investi`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_investi`;

-- Volcando estructura para vista sigepi.miembroview
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `miembroview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `miembroview` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`id_usuario` AS `id_usuario`,`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`usuario` join `usuario_has_proyecto` on((`usuario`.`id_usuario` = `usuario_has_proyecto`.`usuario_id_usuario`))) join `proyecto` on((`usuario_has_proyecto`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) join `proyecto_has_grupo_inve_semillero` on((`proyecto`.`id_proyecto` = `proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`))) where (`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo` = 111);

-- Volcando estructura para vista sigepi.semillero
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `semillero`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `semillero` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where ((`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`) and (`semillero`.`grupo_inve_semillero_id_grupo` = 115));

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

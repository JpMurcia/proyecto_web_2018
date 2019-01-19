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
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.grupo_inve_semillero: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `grupo_inve_semillero` (`id_grupo`, `nom_grupo`, `sigla_signif_grupo`, `objetivo_grupo`, `programa_grupo`, `url_logo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `grupo_inve_semillero_id_grupo`) VALUES
	(111, 'Giecom', 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', '', 'Sistema', 'giecom.jpg', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', 'Justificasion falta :D', 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', 111),
	(112, 'Alecout', '', 'crear contador de alevinos', 'Sistemas', '', '', '', '', '', 111),
	(113, 'Giecom Semillero', 'hola singf invtiga3', 'objetivofhdskjha3', 'programa3', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   3', 'vison     3', 'justificasion   3', 'quienes somos     3', 111),
	(114, 'Sara', 'hola singf invtiga4', 'objetivofhdskjha4', 'programa4', 'sara.jpg', 'misio_grupo1dfsfsafsfs   4', 'vison     4', 'justificasion   4', 'quienes somos     4', 115),
	(115, 'GIIE', 'GRUPO DE INVESTIGACION EN INFORMATICA EDUCATIVA', 'Construir el grupo de investigación encargado de liderar los procesos investigativos en el área de la informática educativa en la Universidad de la Amazonia, por medio del cual se generen resultados con claridad y pertinencia, representados en productos tales como publicaciones científicas, procesos de formación y trabajos de investigación.', 'sistema', 'kjlkjdoanm.jpg', 'Generar procesos de ciencia y tecnologia que contribuyan al desarrollo científico de la informática Educativa en la región Amazónica.', 'El grupo de investigación de desarrollará los elementos constitutivos en el área de la informática educativa de lineas de investigación de la Uniamazonia tales como: Educación Ambiental, Pedagogía y Didáctica, Administración y Educación, etc.', 'justificasion   5', 'quienes somos     5', 115),
	(116, 'nom_grupo6', 'hola singf invtiga6', 'objetivofhdskjha6', 'programa2', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   6', 'vison     6', 'justificasion   6', 'quienes somos     6', 119),
	(117, 'ECQ', 'Estrategias Computacionales en Química', 'objetivofhdskjha8', 'Quimica', 'quimica.png', 'La misión del grupo de investigación ¿Estrategias Computacionales en Química¿ es ampliar el conocimiento sobre los sistemas químicos empleando simulaciones computacionales. El grupo promueve la formación de talento humano con la capacidad de emplear los modelos computacionales modernos y desarrollar nuevas metodologías teóricas. Los proyectos de investigación están enfocados en proponer, predecir, analizar y aplicar las propiedades físicas, químicas y biológicas de compuestos químicos de interés regional, nacional o mundial.', 'Para el año 2020 nuestro grupo se habrá consolidado como uno de los grupos líderes en Colombia en el área de la química computacional. Contará con un amplio número de estudiantes de pregrado y posgrado. Los proyectos realizados por el grupo estarán estrechamente relacionados con estudios experimentales de punta, en el marco de colaboraciones interdisciplinares.', 'justificasion   8', 'quienes somos     8', 117),
	(118, 'ESTRATEGÍAS COMPUTACIONALES ', '', 'El semillero de investigación Estrategias Computacionales a puesto atención a los problemas de la región amazónica intentando brindar soluciones mediante la utilización de herramienta informáticas propias de la química, los cuales en la mayoría son libre acceso, generando propuesta de de investigación de bahjo costos de financiación pero de gran interés para la región amazónica.', 'Quimica', 'quimica.png', 'El semillero de investigación Estrategias Computacionales, buscamos la generación de nuevos conocimientos utilizando una gran variedad de herramientas computacionales de libre acceso que pueden ser de gran utilidad para la predicción de las propiedades físicas y químicas de compuestos desconocidos o difíciles de caracterizar experimentalmente, así como el análisis de las propiedades físicas y químicas de compuestos existentes, interpretando información experimental o prediciendo propiedades aún no determinadas', 'El semillero Estrategias Computacionales familiarizar a sus nuevos integrantes con las herramientas computaciones de interés químico y corroborando los resultados teóricos obtenidos con los datos experimentales reportados en la literatura. Actualmente nuestro semillero está enfocado en el estudio de la resistencia del vector del dengue, chicunguya y Zica, Aedes aegyty, utilizando para ello tanto herramientas experimentales como teóricas. Esperando obtener resultados que puedan ser de utilidad para la solución de los problemas de salud pública.', 'justificasion   7', 'quienes somos     7', 117),
	(119, 'nom_grupo9', 'hola singf invtiga9', 'objetivofhdskjha9', 'programa5', 'kjlkjdoanm.jpg', 'misio_grupo1dfsfsafsfs   9', 'vison     9', 'justificasion   9', 'quienes somos     9', 119),
	(120, 'PICARDIE', 'Producir, Integrar, Compartir para Aprender con Recursos Didácticos E-learning', ' objetivo picardie', 'programa1', 'picardie.png', 'misio_grupo1dfsfsafsfs   20', 'vison     20', 'justificasion   20', 'quienes somos     20', 115),
	(121, 'Semillero de programacion', NULL, 'Elevar el nivel de algoritmia ', 'Sistemas', 'semillero_programacion.png', 'El Semillero de Programación de la Universidad de la Amazonia tiene como misión promover la participación de estudiantes en eventos de programación competitiva del orden nacional e internacional, propiciando espacios académicos donde por medio del aprendizaje colaborativo se desarrollen habilidades investigativas y se fortalezcan los conocimientos en estrategias de programación, todo basado en la lectura y comprensión del inglés como idioma utilizado mundialmente en estos procesos.', 'El Semillero de Programación proyecta para el 2020 representar a la Universidad de la Amazonia en competencias de programación ACM-ICPC a nivel nacional, regional y mundial, obteniendo resultados que destaquen la labor que de manera comprometida y articulada se genera desde la institución.', NULL, NULL, 111);
/*!40000 ALTER TABLE `grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.integrante_has_grupo_inve_semillero
DROP TABLE IF EXISTS `integrante_has_grupo_inve_semillero`;
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
DROP TABLE IF EXISTS `proyecto`;
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
DROP TABLE IF EXISTS `proyecto_has_grupo_inve_semillero`;
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
DROP TABLE IF EXISTS `tipo_usuario`;
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
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `contra_usuario` varchar(45) DEFAULT NULL,
  `url_foto_usuario` varchar(45) DEFAULT NULL,
  `fk_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.usuario: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`id_usuario`, `nom_usuario`, `contra_usuario`, `url_foto_usuario`, `fk_tipo_usuario`) VALUES
	(11, 'antonio', 'contra_antorio', 'url.../dsajk', 1),
	(12, 'carlos', '12345', 'url.../dsajk', 2),
	(13, 'carlos2', '12345', 'url.../dsajk', 2),
	(14, 'brayan', 'yisus', 'url.../dsajk', 3),
	(15, 'heri', 'giecom', 'gieco', 1),
	(16, 'micht', 'giecom1', 'url.../dsajk', 2),
	(17, 'alcalde', 'giecom2', 'url.../dsajk', 2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.usuario_has_proyecto
DROP TABLE IF EXISTS `usuario_has_proyecto`;
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

-- Volcando estructura para vista sigepi.view_grupo_investi
DROP VIEW IF EXISTS `view_grupo_investi`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_grupo_investi` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_miembro
DROP VIEW IF EXISTS `view_miembro`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_miembro` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`id_usuario` INT(11) NOT NULL,
	`proyecto_id_proyecto` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_miembro_x
DROP VIEW IF EXISTS `view_miembro_x`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_miembro_x` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`id_usuario` INT(11) NOT NULL,
	`proyecto_id_proyecto` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_proyectos_x
DROP VIEW IF EXISTS `view_proyectos_x`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_proyectos_x` (
	`nom_proyecto` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`estado_proyecto` TINYINT(4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_semilleros
DROP VIEW IF EXISTS `view_semilleros`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_semilleros` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_semillero_x
DROP VIEW IF EXISTS `view_semillero_x`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_semillero_x` (
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`sigla_signif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`objetivo_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`programa_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`mision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`vision_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`justif_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci',
	`quien_somos_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento sigepi.proced_consul_grupo
DROP PROCEDURE IF EXISTS `proced_consul_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo`(
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

-- Volcando estructura para procedimiento sigepi.proced_consul_miembros
DROP PROCEDURE IF EXISTS `proced_consul_miembros`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembros`(
	IN `id_grupo` INT
)
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

-- Volcando estructura para procedimiento sigepi.proced_consul_semilleros
DROP PROCEDURE IF EXISTS `proced_consul_semilleros`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_semilleros`(
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
semillero.quien_somos_grupo,
semillero.url_logo_grupo
from grupo_inve_semillero 
inner join grupo_inve_semillero  as semillero
on grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
where 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo 
and
grupo_inve_semillero.nom_grupo=nombre;
end//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_proyectos
DROP PROCEDURE IF EXISTS `proced_proyectos`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_proyectos`(
	IN `nombre` VARCHAR(50)

)
BEGIN




select 
proyecto.nom_proyecto,
proyecto.estado_proyecto

from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as grupo	ON proyec.grupo_inve_semillero_id_grupo=grupo.id_grupo


where 

grupo.nom_grupo=nombre; 
	



END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_validar_user
DROP PROCEDURE IF EXISTS `proced_validar_user`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_validar_user`(
	IN `usuari` varchar(45),
	IN `contra` varchar(45)



)
begin 
 
 declare nombreUsuario varchar(45);
 declare idUsuario int;
 declare tipoUsuario int;
 
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
	
	select 
	usu.fk_tipo_usuario into tipoUsuario from usuario usu
	where idUsuario=usu.id_usuario ;
	


	select "bueeeeena perro" as mensaje,
	idUsuario as usuari,
	nombreUsuario as nombreeee,
	tipoUsuario as tipo;
	
	end if;


end//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_validar_usuario
DROP PROCEDURE IF EXISTS `proced_validar_usuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_validar_usuario`(
	IN `usuari` VARCHAR(50),
	IN `contra` VARCHAR(50)
)
BEGIN
declare nombreUsuario varchar(45);
declare idUsuario int;

 
select 
	usu.id_usuario into idUsuario
from usuario usu
where usu.nom_usuario=usuari 
and usu.contra_usuario=contra;



if( idUsuario is null) then
	
  
   

  
   
   select * from usuario;
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
END//
DELIMITER ;

-- Volcando estructura para vista sigepi.view_grupo_investi
DROP VIEW IF EXISTS `view_grupo_investi`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_grupo_investi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grupo_investi` AS select `grupo_inve_semillero`.`nom_grupo` AS `nom_grupo`,`grupo_inve_semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_inve_semillero`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_inve_semillero`.`programa_grupo` AS `programa_grupo`,`grupo_inve_semillero`.`mision_grupo` AS `mision_grupo`,`grupo_inve_semillero`.`vision_grupo` AS `vision_grupo`,`grupo_inve_semillero`.`justif_grupo` AS `justif_grupo`,`grupo_inve_semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_inve_semillero` where (`grupo_inve_semillero`.`id_grupo` = `grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_miembro
DROP VIEW IF EXISTS `view_miembro`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_miembro` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`id_usuario` AS `id_usuario`,`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`usuario` join `usuario_has_proyecto` on((`usuario`.`id_usuario` = `usuario_has_proyecto`.`usuario_id_usuario`))) join `proyecto` on((`usuario_has_proyecto`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) join `proyecto_has_grupo_inve_semillero` on((`proyecto`.`id_proyecto` = `proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`)));

-- Volcando estructura para vista sigepi.view_miembro_x
DROP VIEW IF EXISTS `view_miembro_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_miembro_x` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`id_usuario` AS `id_usuario`,`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`usuario` join `usuario_has_proyecto` on((`usuario`.`id_usuario` = `usuario_has_proyecto`.`usuario_id_usuario`))) join `proyecto` on((`usuario_has_proyecto`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) join `proyecto_has_grupo_inve_semillero` on((`proyecto`.`id_proyecto` = `proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`))) where (`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo` = 111);

-- Volcando estructura para vista sigepi.view_proyectos_x
DROP VIEW IF EXISTS `view_proyectos_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_proyectos_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_proyectos_x` AS select `proyecto`.`nom_proyecto` AS `nom_proyecto`,`proyecto`.`estado_proyecto` AS `estado_proyecto` from ((`grupo_inve_semillero` join `proyecto_has_grupo_inve_semillero` on((`grupo_inve_semillero`.`id_grupo` = `proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`))) join `proyecto` on((`proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) where (`grupo_inve_semillero`.`nom_grupo` = 'giecom');

-- Volcando estructura para vista sigepi.view_semilleros
DROP VIEW IF EXISTS `view_semilleros`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semilleros`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_semilleros` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where (`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_semillero_x
DROP VIEW IF EXISTS `view_semillero_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semillero_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_semillero_x` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where ((`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`) and (`semillero`.`grupo_inve_semillero_id_grupo` = 111));


-- Volcando estructura de base de datos para viewgroup
DROP DATABASE IF EXISTS `viewgroup`;
CREATE DATABASE IF NOT EXISTS `viewgroup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup`;

-- Volcando estructura para tabla viewgroup.actividad
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_Actividad` int(11) NOT NULL,
  `fk_id_produc` int(11) DEFAULT NULL,
  `fk_id_sub_actividad` int(11) DEFAULT NULL,
  `nom_actividad` varchar(255) DEFAULT NULL,
  `descripcion_actividad` varchar(255) DEFAULT NULL,
  `fecha_actividad` date DEFAULT NULL,
  `entregas_actividad` varchar(255) DEFAULT NULL,
  `conclusion_actividad` varchar(45) DEFAULT NULL,
  `avanze_actividad` varchar(45) DEFAULT NULL,
  `apreciacion_actividad` varchar(45) DEFAULT NULL,
  `estado_actividad` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_Actividad`),
  KEY `fk_id_producto` (`fk_id_produc`),
  KEY `fk_id_actividad` (`fk_id_sub_actividad`),
  CONSTRAINT `fk_id_actividad` FOREIGN KEY (`fk_id_sub_actividad`) REFERENCES `actividad` (`id_Actividad`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`fk_id_produc`) REFERENCES `producto` (`id_produc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.actividad_has_usuario
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

-- Volcando datos para la tabla viewgroup.actividad_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad_has_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.diseno
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

-- Volcando datos para la tabla viewgroup.diseno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `diseno` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseno` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.fases_cronogra
DROP TABLE IF EXISTS `fases_cronogra`;
CREATE TABLE IF NOT EXISTS `fases_cronogra` (
  `id_fases_cronogra` int(11) NOT NULL,
  `nom_fases_cronogra` varchar(255) DEFAULT NULL,
  `producto_id_produc` int(11) NOT NULL,
  PRIMARY KEY (`id_fases_cronogra`,`producto_id_produc`),
  KEY `fk_fases_cronogra_producto1_idx` (`producto_id_produc`),
  CONSTRAINT `fk_fases_cronogra_producto1` FOREIGN KEY (`producto_id_produc`) REFERENCES `mydb`.`producto` (`id_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.fases_cronogra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fases_cronogra` DISABLE KEYS */;
/*!40000 ALTER TABLE `fases_cronogra` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.grupo_invest
DROP TABLE IF EXISTS `grupo_invest`;
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `nom_grupo` varchar(255) DEFAULT NULL,
  `url_logo_grupo` varchar(255) DEFAULT NULL,
  `siglas_signif_grupo` varchar(255) DEFAULT NULL,
  `objetivo_grupo` varchar(255) DEFAULT NULL,
  `programa_grupo` varchar(255) DEFAULT NULL,
  `vision_grupo` varchar(255) DEFAULT NULL,
  `mision_grupo` varchar(255) DEFAULT NULL,
  `justif_grupo` varchar(255) DEFAULT NULL,
  `quien_somos_grupo` varchar(255) DEFAULT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  `estado_grupo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.grupo_invest: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.informacion_integrantes_proyecto
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

-- Volcando datos para la tabla viewgroup.informacion_integrantes_proyecto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.menu
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

-- Volcando datos para la tabla viewgroup.menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.pagina_web
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

-- Volcando datos para la tabla viewgroup.pagina_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.permisos
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `id_permisos` int(11) NOT NULL,
  `nom_perimisos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.plantilla
DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.plantilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.producto
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

-- Volcando datos para la tabla viewgroup.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.roles_permisos
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

-- Volcando datos para la tabla viewgroup.roles_permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permisos` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.soporte
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

-- Volcando datos para la tabla viewgroup.soporte: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`id_usuario`, `nom_usuario`, `url_foto_usuario`) VALUES
	(1, 'juanes', 'juan.png');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento viewgroup.proced_consul_user
DROP PROCEDURE IF EXISTS `proced_consul_user`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user`(
	IN `id_user` INT





)
BEGIN
 Declare num int;  
 
 set num = (select COUNT(*) from usuario usu
 where id_user= usu.id_usuario);
  

 

 if ( num =0) then
	select "no wey" as mensaje;
else 
 	select "siii wey si existe :D" as mensaje ;
 	
 	end if;


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_pagina
DROP PROCEDURE IF EXISTS `proced_create_pagina`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_pagina`(
	IN `nom_grupo1` VARCHAR(50),
	IN `url_logo_grupo` VARCHAR(50),
	IN `email_grupo` VARCHAR(50)



,
	IN `telefo_grupo` VARCHAR(50),
	IN `direcc_grupo` VARCHAR(50)






















)
BEGIN

  	
   Declare num int;    
  
   SET num = (SELECT COUNT(*)+1 from grupo_invest); 	
   

  
   insert into grupo_invest VALUES(num,nom_grupo1,url_logo_grupo,email_grupo,telefo_grupo,direcc_grupo,1);
   
   
  
	



END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_usuario
DROP PROCEDURE IF EXISTS `proced_create_usuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_usuario`(
	IN `nombre_user` VARCHAR(50),
	IN `url_foto_user` VARCHAR(255)

)
BEGIN
	
   Declare num int;    
  
   SET num = (SELECT COUNT(*)+1 from usuario); 	
   

  
   insert into usuario VALUES(num,nombre_user,url_foto_user);
   
   select * from usuario;


END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

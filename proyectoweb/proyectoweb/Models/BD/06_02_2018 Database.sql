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
  PRIMARY KEY (`id_grupo`),
  KEY `FK_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.grupo_inve_semillero: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `grupo_inve_semillero` (`id_grupo`, `nom_grupo`, `sigla_signif_grupo`, `objetivo_grupo`, `programa_grupo`, `url_logo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `grupo_inve_semillero_id_grupo`) VALUES
	(111, 'Giecom', 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', '', 'Ingenieria de Sistema', 'giecom.jpg', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', '', 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', 111),
	(112, 'Alecout', '', 'crear contador de alevinos', 'Ingenieria de Sistema', '', '', '', '', '', 111),
	(113, 'Giecom Semillero', '', '', 'Ingenieria de Sistema', 'giecom.jpg', '', '', '', '', 111),
	(114, 'Sara', '', '', 'Ingenieria de Sistema', 'sara.jpg', 'misio_grupo1dfsfsafsfs   4', 'vison     4', '', '', 115),
	(115, 'GIIE', 'GRUPO DE INVESTIGACION EN INFORMATICA EDUCATIVA', 'Construir el grupo de investigación encargado de liderar los procesos investigativos en el área de la informática educativa en la Universidad de la Amazonia, por medio del cual se generen resultados con claridad y pertinencia, representados en productos tales como publicaciones científicas, procesos de formación y trabajos de investigación.', 'Ingenieria de Sistema', 'GIIE.png', 'Generar procesos de ciencia y tecnologia que contribuyan al desarrollo científico de la informática Educativa en la región Amazónica.', 'El grupo de investigación de desarrollará los elementos constitutivos en el área de la informática educativa de lineas de investigación de la Uniamazonia tales como: Educación Ambiental, Pedagogía y Didáctica, Administración y Educación, etc.', '', '', 115),
	(117, 'ECQ', 'Estrategias Computacionales en Química', '', 'Quimica', 'quimica.png', 'La misión del grupo de investigación ¿Estrategias Computacionales en Química¿ es ampliar el conocimiento sobre los sistemas químicos empleando simulaciones computacionales. El grupo promueve la formación de talento humano con la capacidad de emplear los modelos computacionales modernos y desarrollar nuevas metodologías teóricas. Los proyectos de investigación están enfocados en proponer, predecir, analizar y aplicar las propiedades físicas, químicas y biológicas de compuestos químicos de interés regional, nacional o mundial.', 'Para el año 2020 nuestro grupo se habrá consolidado como uno de los grupos líderes en Colombia en el área de la química computacional. Contará con un amplio número de estudiantes de pregrado y posgrado. Los proyectos realizados por el grupo estarán estrechamente relacionados con estudios experimentales de punta, en el marco de colaboraciones interdisciplinares.', '', '', 117),
	(118, 'ESTRATEGÍAS COMPUTACIONALES ', '', 'El semillero de investigación Estrategias Computacionales a puesto atención a los problemas de la región amazónica intentando brindar soluciones mediante la utilización de herramienta informáticas propias de la química, los cuales en la mayoría son libre acceso, generando propuesta de de investigación de bahjo costos de financiación pero de gran interés para la región amazónica.', 'Quimica', 'quimica.png', 'El semillero de investigación Estrategias Computacionales, buscamos la generación de nuevos conocimientos utilizando una gran variedad de herramientas computacionales de libre acceso que pueden ser de gran utilidad para la predicción de las propiedades físicas y químicas de compuestos desconocidos o difíciles de caracterizar experimentalmente, así como el análisis de las propiedades físicas y químicas de compuestos existentes, interpretando información experimental o prediciendo propiedades aún no determinadas', 'El semillero Estrategias Computacionales familiarizar a sus nuevos integrantes con las herramientas computaciones de interés químico y corroborando los resultados teóricos obtenidos con los datos experimentales reportados en la literatura. Actualmente nuestro semillero está enfocado en el estudio de la resistencia del vector del dengue, chicunguya y Zica, Aedes aegyty, utilizando para ello tanto herramientas experimentales como teóricas. Esperando obtener resultados que puedan ser de utilidad para la solución de los problemas de salud pública.', '', '', 117),
	(120, 'PICARDIE', 'Producir, Integrar, Compartir para Aprender con Recursos Didácticos E-learning', ' objetivo picardie', 'Ingenieria de Sistema', 'picardie.png', 'misio_grupo1dfsfsafsfs   20', 'vison     20', '', '', 115),
	(121, 'Semillero de programacion', NULL, 'Elevar el nivel de algoritmia ', 'Ingenieria de Sistema', 'semillero_programacion.png', 'El Semillero de Programación de la Universidad de la Amazonia tiene como misión promover la participación de estudiantes en eventos de programación competitiva del orden nacional e internacional, propiciando espacios académicos donde por medio del aprendizaje colaborativo se desarrollen habilidades investigativas y se fortalezcan los conocimientos en estrategias de programación, todo basado en la lectura y comprensión del inglés como idioma utilizado mundialmente en estos procesos.', 'El Semillero de Programación proyecta para el 2020 representar a la Universidad de la Amazonia en competencias de programación ACM-ICPC a nivel nacional, regional y mundial, obteniendo resultados que destaquen la labor que de manera comprometida y articulada se genera desde la institución.', NULL, NULL, 111);
/*!40000 ALTER TABLE `grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.integrante_has_grupo_inve_semillero
CREATE TABLE IF NOT EXISTS `integrante_has_grupo_inve_semillero` (
  `usuario_id_usuario` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`grupo_inve_semillero_id_grupo`),
  KEY `FK_integrante_has_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_integrante_has_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_integrante_has_grupo_inve_semillero_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.integrante_has_grupo_inve_semillero: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `integrante_has_grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `integrante_has_grupo_inve_semillero` (`usuario_id_usuario`, `grupo_inve_semillero_id_grupo`) VALUES
	(10, 111),
	(11, 112),
	(12, 112),
	(13, 112),
	(14, 112),
	(24, 112),
	(11, 113),
	(14, 113),
	(22, 114),
	(23, 114),
	(24, 114),
	(20, 115),
	(15, 117),
	(16, 118),
	(17, 118),
	(18, 118),
	(19, 118),
	(24, 118),
	(21, 120),
	(12, 121),
	(14, 121);
/*!40000 ALTER TABLE `integrante_has_grupo_inve_semillero` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.proyecto
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(500) DEFAULT NULL,
  `fecha_proyecto` date DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.proyecto: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
REPLACE INTO `proyecto` (`id_proyecto`, `nom_proyecto`, `fecha_proyecto`, `estado_proyecto`) VALUES
	(20, 'SIGEPI', '2013-11-11', 0),
	(21, 'RQSOFT', '2013-01-13', 0),
	(22, 'Estacion Meteriologica', NULL, 1),
	(23, 'Prototipo De Un Sistema Para La Gestión De Los Procesos Electorales De La Universidad De La Amazonia', NULL, 0),
	(24, 'Semillero De Programacion', NULL, 0),
	(25, 'MDD', NULL, 0),
	(26, 'Visibilidad', NULL, 1),
	(27, 'Mercado Campesino', NULL, 0),
	(28, 'Contador de alevinos ', NULL, 1),
	(29, 'Teletrabajo', NULL, 1),
	(30, 'DESARROLLO DE PÁGINA WEB - URUKI EL MANANTIAL', NULL, 0),
	(31, 'Las TIC y Objetos Virtuales de Aprendizaje OVA, para facilitar el aprendizaje de una segunda lengua (Inglés). Proyecto de extensión en la comunidad del barrio Piedrahita en el sector Altos de Capri.', NULL, 0),
	(32, 'Tecnologías de la Información y la Comunicación para generación de cultura de paz a través del uso responsable del Internet y las redes sociales a niños y jóvenes.', NULL, 0),
	(33, 'CHARLA EDUCATIVA SOBRE LAS REDES SOCIALES', NULL, 1),
	(34, ' Estudio computacional del espectro UV-Vis de moléculas orgánicas conjugadas con posibles aplicaciones en celdas solares orgánicas ', '2016-01-05', 0),
	(35, 'Investigación, desarrollo e innovación: Desarrollo de sensores potenciométricos basados en terpiridinas', '2016-01-01', 0),
	(36, 'Estudio teórico del espectro UV-Vis de moléculas orgánicas derivadas del diestirilbenceno ', '2015-08-08', 0),
	(37, 'Diseño de compuestos potencialmente activos frente a la enfermedad de Chagas por medio de un análisis de la relación estructura actividad (QSAR) ', '2015-08-08', 1),
	(38, ' Evaluación teórica de la resistencia del Aedes aegypti frente a distintos insecticidas por medio de métodos mecano-cuánticos de tipo ab-initio y del teoría del funcional de la densidad (DFT) ', '2015-08-08', 1),
	(39, 'Determinación del origen del café por medio de espectroscopía infrarroja ', '2015-07-07', 1);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.proyecto_has_grupo_inve_semillero
CREATE TABLE IF NOT EXISTS `proyecto_has_grupo_inve_semillero` (
  `proyecto_id_proyecto` int(11) NOT NULL,
  `grupo_inve_semillero_id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`proyecto_id_proyecto`,`grupo_inve_semillero_id_grupo`),
  KEY `FK_proyecto_has_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_proyecto_has_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_has_grupo_inve_semillero_proyecto` FOREIGN KEY (`proyecto_id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.proyecto_has_grupo_inve_semillero: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto_has_grupo_inve_semillero` DISABLE KEYS */;
REPLACE INTO `proyecto_has_grupo_inve_semillero` (`proyecto_id_proyecto`, `grupo_inve_semillero_id_grupo`) VALUES
	(20, 111),
	(21, 111),
	(22, 111),
	(23, 111),
	(24, 111),
	(25, 111),
	(26, 111),
	(27, 111),
	(28, 111),
	(29, 111),
	(30, 115),
	(31, 115),
	(32, 115),
	(33, 115),
	(34, 117),
	(35, 117),
	(36, 117),
	(37, 117),
	(38, 117),
	(39, 117);
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

-- Volcando datos para la tabla sigepi.usuario: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`id_usuario`, `email_usuario`, `nom_usuario`, `contra_usuario`, `url_foto_usuario`, `Programa`, `fk_tipo_usuario`) VALUES
	(10, 'h.ing@udla.edu.co', 'heriberto', 'giecom', '1 - copia (1).png', 'Sistemas', 1),
	(11, 'a.leal@udla.edu.co', 'antonio', 'contra_antorio', '1 - copia (1).png', 'Sistemas', 2),
	(12, 'c.carlos@udla.edu.co', 'carlos', '12345', '1 - copia (1).png', 'Sistemas', 2),
	(13, 'c.carlos2@udla.edu.co', 'carlos2', '12345', '1 - copia (1).png', 'Sistemas', 2),
	(14, 'b.yisus@udla.edu.co', 'brayan', 'yisus', '1 - copia (1).png', 'Sistemas', 2),
	(15, 'd.doctor@udla.edu.co', 'Doctor Quimico', 'quimico', '1 - copia (1).png', 'Quimica', 1),
	(16, 'm.agilar@udla.edu.co', 'micht', 'giecom1', '1 - copia (1).png', 'Quimica', 2),
	(17, 'j.alcalde@udla.edu.co', 'alcalde', 'giecom2', '1 - copia (1).png', 'Quimica', 2),
	(18, 'c.doctors@udla.edu.co', 'quimico', 'quimico', '1 - copia (1).png', 'Quimica', 2),
	(19, 'c.laura@udla.edu.co', 'laura camila ', 'minato', '1 - copia (1).png', 'Quimica', 2),
	(20, 'm.ing@udla.edu.co', 'Millan', 'giie', '1 - copia (1).png', 'Sistemas', 1),
	(21, 'j.juan@udla.edu.co', 'juanes ', 'giie', '1 - copia (1).png', 'Sistemas', 2),
	(22, 'd.antonio@udla.edu.co', 'johan', 'giie', '1 - copia (1).png', 'Sistemas', 2),
	(23, 'd.antonieta@udla.edu.co', 'antonieta', 'giie', '1 - copia (1).png', 'Sistemas', 2),
	(24, 'a.cuellar@udla.edu.co', 'angela', 'cuellar', '1 - copia (1).png', 'Quimica', 2),
	(25, 'ex.algo@udla.edu.co', 'algo', 'algo', '1 - copia (1).png', 'Sistemas', 3),
	(26, 'ex.carlos@udla.edu.co', NULL, NULL, '1 - copia (1).png', 'Sistemas', 3),
	(27, 'ex.kamilo@udla.edu.co', 'kamilo', 'kamilo', '1 - copia (1).png', 'Sistemas', 3),
	(28, 'ex.@udla.edu.co', NULL, NULL, '1 - copia (1).png', 'Sistemas', 3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla sigepi.usuario_has_proyecto
CREATE TABLE IF NOT EXISTS `usuario_has_proyecto` (
  `usuario_id_usuario` int(11) NOT NULL,
  `proyecto_id_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id_usuario`,`proyecto_id_proyecto`),
  KEY `FK_usuario_has_proyecto_proyecto` (`proyecto_id_proyecto`),
  CONSTRAINT `FK_usuario_has_proyecto_proyecto` FOREIGN KEY (`proyecto_id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_usuario_has_proyecto_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.usuario_has_proyecto: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_has_proyecto` DISABLE KEYS */;
REPLACE INTO `usuario_has_proyecto` (`usuario_id_usuario`, `proyecto_id_proyecto`) VALUES
	(11, 20),
	(13, 20),
	(13, 21),
	(11, 22),
	(14, 25),
	(14, 26),
	(24, 27),
	(17, 28),
	(24, 28),
	(24, 29),
	(16, 30),
	(21, 30),
	(21, 31),
	(22, 31),
	(22, 32),
	(23, 33),
	(18, 34),
	(19, 34),
	(24, 34),
	(18, 35),
	(19, 35),
	(18, 36),
	(19, 36),
	(16, 37),
	(18, 37),
	(19, 37),
	(16, 38),
	(18, 38),
	(16, 39),
	(17, 39),
	(18, 39);
/*!40000 ALTER TABLE `usuario_has_proyecto` ENABLE KEYS */;

-- Volcando estructura para vista sigepi.view_grupo_investi
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

-- Volcando estructura para vista sigepi.view_miembro_semillero
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_miembro_semillero` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_miembro_x
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_miembro_x` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`id_usuario` INT(11) NOT NULL,
	`proyecto_id_proyecto` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_proyectos_x
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_proyectos_x` (
	`nom_proyecto` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`estado_proyecto` TINYINT(4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista sigepi.view_semilleros
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

-- Volcando estructura para procedimiento sigepi.proced_consul_grupo_has_usu
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo_has_usu`(
	IN `id_usuario` INT



)
BEGIN

select grupo.nom_grupo from grupo_inve_semillero as grupo
inner join integrante_has_grupo_inve_semillero pertenece on pertenece.grupo_inve_semillero_id_grupo = grupo.id_grupo
where pertenece.usuario_id_usuario=id_usuario;


END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_miembros
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembros`(
	IN `nom_grupo` VARCHAR(500)



)
begin 

SELECT   usuario.nom_usuario,  semillero.nom_grupo
FROM grupo_inve_semillero 
INNER JOIN grupo_inve_semillero AS semillero ON grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
inner join integrante_has_grupo_inve_semillero integra on integra.grupo_inve_semillero_id_grupo = semillero.id_grupo
inner join usuario on usuario.id_usuario = integra.usuario_id_usuario
WHERE 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo AND
grupo_inve_semillero.nom_grupo=nom_grupo
 
ORDER by semillero.id_grupo;

end//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_miembro_simple
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembro_simple`(
	IN `nom_grupo` VARCHAR(500)


)
BEGIN

SELECT  usuario.Programa, usuario.nom_usuario
FROM grupo_inve_semillero 
INNER JOIN grupo_inve_semillero AS semillero ON grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
inner join integrante_has_grupo_inve_semillero integra on integra.grupo_inve_semillero_id_grupo = semillero.id_grupo
inner join usuario on usuario.id_usuario = integra.usuario_id_usuario
WHERE 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo AND
grupo_inve_semillero.nom_grupo=nom_grupo
 GROUP by usuario.id_usuario
ORDER by usuario.id_usuario;
END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_proyecto
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyecto`(
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

-- Volcando estructura para procedimiento sigepi.proced_consul_proyec_act
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyec_act`(
	IN `nombre` VARCHAR(500)

)
BEGIN



select 
proyecto.id_proyecto,proyecto.nom_proyecto


from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as grupo	ON proyec.grupo_inve_semillero_id_grupo=grupo.id_grupo


where 

grupo.nom_grupo=nombre
and proyecto.estado_proyecto=1; 
	


END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_proyec_inac
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyec_inac`(
	IN `nombre` VARCHAR(500)

)
BEGIN



select 
proyecto.id_proyecto,proyecto.nom_proyecto


from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as grupo	ON proyec.grupo_inve_semillero_id_grupo=grupo.id_grupo


where 

grupo.nom_grupo=nombre
and proyecto.estado_proyecto=0; 
	



END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_proye_user_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proye_user_grupo`(
	IN `grupo_perte` VARCHAR(50),
	IN `id_proyec` INT
)
BEGIN

SELECT usuario.nom_usuario as Colaboradores FROM usuario
INNER JOIN usuario_has_proyecto ON usuario_has_proyecto.usuario_id_usuario=usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_proyecto = usuario_has_proyecto.proyecto_id_proyecto
INNER JOIN proyecto_has_grupo_inve_semillero AS proye_has ON proye_has.proyecto_id_proyecto=proyecto.id_proyecto
INNER JOIN grupo_inve_semillero grupo ON grupo.id_grupo=proye_has.grupo_inve_semillero_id_grupo
WHERE grupo.nom_grupo=grupo_perte AND proyecto.id_proyecto=id_proyec;

END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_semilleros
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

-- Volcando estructura para procedimiento sigepi.proced_consul_user_proye_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user_proye_grupo`(
	IN `grupo_perte` VARCHAR(500),
	IN `id_user` INT

)
    COMMENT 'trae los proyectos que tiene un usuario en grupo x'
BEGIN


SELECT proyecto.nom_proyecto as proyectos FROM usuario
INNER JOIN usuario_has_proyecto ON usuario_has_proyecto.usuario_id_usuario=usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_proyecto = usuario_has_proyecto.proyecto_id_proyecto
INNER JOIN proyecto_has_grupo_inve_semillero AS proye_has ON proye_has.proyecto_id_proyecto=proyecto.id_proyecto
INNER JOIN grupo_inve_semillero grupo ON grupo.id_grupo=proye_has.grupo_inve_semillero_id_grupo
WHERE grupo.nom_grupo=grupo_perte AND usuario.id_usuario=id_user;

END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_validar_user
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_validar_user`(
	IN `email_usuari` varchar(45),
	IN `contra` varchar(45)










)
begin 
 
 declare nombreUsuario varchar(60);
 declare idUsuario int;
 declare tipoUsuario int;
 declare tipoU varchar(60);
 declare foto varchar(60);

 
 
select 
	usu.id_usuario into idUsuario
	
from usuario usu
where usu.email_usuario=email_usuari 
and usu.contra_usuario=contra;
 




if( idUsuario is null) then
	select "nada perroooo" as mensaje;
else 
	select 
		nom_usuario into nombreUsuario
		
	from usuario usu
	where usu.email_usuario=email_usuari 
	and usu.contra_usuario=contra;
	
	select
	
	url_foto_usuario into foto
	
	from usuario usu
	where usu.email_usuario=email_usuari 
	and usu.contra_usuario=contra;
	
	select 
	usu.fk_tipo_usuario into tipoUsuario from usuario usu
	where idUsuario=usu.id_usuario ;

	
	select 
	tipo.nom_tipo_usuario into tipoU from tipo_usuario tipo
	where tipoUsuario=tipo.id_tipo_usuario ;
	

	select "bueeeeena perro" as mensaje,
	idUsuario as usuari,
	nombreUsuario as nombreeee,
	tipoUsuario as tipo,
	tipoU as grupo_de_investigacio,
	foto as foto_perfil;
	
	end if;


end//
DELIMITER ;

-- Volcando estructura para vista sigepi.view_grupo_investi
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_grupo_investi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grupo_investi` AS select `grupo_inve_semillero`.`nom_grupo` AS `nom_grupo`,`grupo_inve_semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`grupo_inve_semillero`.`objetivo_grupo` AS `objetivo_grupo`,`grupo_inve_semillero`.`programa_grupo` AS `programa_grupo`,`grupo_inve_semillero`.`mision_grupo` AS `mision_grupo`,`grupo_inve_semillero`.`vision_grupo` AS `vision_grupo`,`grupo_inve_semillero`.`justif_grupo` AS `justif_grupo`,`grupo_inve_semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from `grupo_inve_semillero` where (`grupo_inve_semillero`.`id_grupo` = `grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_miembro_semillero
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro_semillero`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_miembro_semillero` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`semillero`.`nom_grupo` AS `nom_grupo` from ((`grupo_inve_semillero` `semillero` join `integrante_has_grupo_inve_semillero` `integra` on((`integra`.`grupo_inve_semillero_id_grupo` = `semillero`.`id_grupo`))) join `usuario` on((`usuario`.`id_usuario` = `integra`.`usuario_id_usuario`))) where (`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_miembro_x
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_miembro_x` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`id_usuario` AS `id_usuario`,`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`usuario` join `usuario_has_proyecto` on((`usuario`.`id_usuario` = `usuario_has_proyecto`.`usuario_id_usuario`))) join `proyecto` on((`usuario_has_proyecto`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) join `proyecto_has_grupo_inve_semillero` on((`proyecto`.`id_proyecto` = `proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`))) where (`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo` = 111);

-- Volcando estructura para vista sigepi.view_proyectos_x
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_proyectos_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_proyectos_x` AS select `proyecto`.`nom_proyecto` AS `nom_proyecto`,`proyecto`.`estado_proyecto` AS `estado_proyecto` from ((`grupo_inve_semillero` join `proyecto_has_grupo_inve_semillero` on((`grupo_inve_semillero`.`id_grupo` = `proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`))) join `proyecto` on((`proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto` = `proyecto`.`id_proyecto`))) where (`grupo_inve_semillero`.`nom_grupo` = 'giecom');

-- Volcando estructura para vista sigepi.view_semilleros
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semilleros`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_semilleros` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where (`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_semillero_x
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semillero_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_semillero_x` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`grupo_inve_semillero` join `grupo_inve_semillero` `semillero` on((`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where ((`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`) and (`semillero`.`grupo_inve_semillero_id_grupo` = 111));


-- Volcando estructura de base de datos para viewgroup
CREATE DATABASE IF NOT EXISTS `viewgroup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup`;

-- Volcando estructura para tabla viewgroup.actividad
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_Actividad` int(11) NOT NULL,
  `fk_id_produc` int(11) DEFAULT NULL,
  `nom_actividad` varchar(255) DEFAULT NULL,
  `descripcion_actividad` varchar(255) DEFAULT NULL,
  `fecha_actividad` date DEFAULT NULL,
  `estado_actividad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Actividad`),
  KEY `fk_id_producto` (`fk_id_produc`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`fk_id_produc`) REFERENCES `producto` (`id_produc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.auditoria
CREATE TABLE IF NOT EXISTS `auditoria` (
  `id_auditoria` int(11) NOT NULL,
  `nom_grupo` varchar(500) DEFAULT NULL,
  `nom_usurio` varchar(500) DEFAULT NULL,
  `fecha_action` date DEFAULT NULL,
  `fk_tipo_action` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`),
  KEY `FK_auditoria_tipo_action` (`fk_tipo_action`),
  CONSTRAINT `FK_auditoria_tipo_action` FOREIGN KEY (`fk_tipo_action`) REFERENCES `tipo_action` (`id_tipo_action`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.auditoria: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
REPLACE INTO `auditoria` (`id_auditoria`, `nom_grupo`, `nom_usurio`, `fecha_action`, `fk_tipo_action`) VALUES
	(1, 'fdsafjshakfkjhsdf', 'fdsaf', '2019-02-03', 2),
	(2, 'puto', 'hoal', '2019-02-03', 1),
	(3, 'puto', 'root@localhost', '2019-02-03', 1);
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.diseno
CREATE TABLE IF NOT EXISTS `diseno` (
  `id_diseno` int(11) NOT NULL,
  `Color_diseno` varchar(45) DEFAULT NULL,
  `plantilla_id_plantilla` int(11) NOT NULL,
  PRIMARY KEY (`id_diseno`,`plantilla_id_plantilla`),
  KEY `fk_Diseno_plantilla1_idx` (`plantilla_id_plantilla`),
  CONSTRAINT `fk_Diseno_plantilla1` FOREIGN KEY (`plantilla_id_plantilla`) REFERENCES `mydb`.`plantilla` (`id_plantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.diseno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `diseno` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseno` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.grupo_invest
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `nom_grupo` varchar(255) DEFAULT NULL,
  `url_logo_grupo` varchar(255) DEFAULT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  `estado_grupo` tinyint(4) DEFAULT NULL,
  `fk_id_semillero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`),
  KEY `FK_grupo_invest_grupo_invest` (`fk_id_semillero`),
  CONSTRAINT `FK_grupo_invest_grupo_invest` FOREIGN KEY (`fk_id_semillero`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.grupo_invest: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
REPLACE INTO `grupo_invest` (`id_grupo_invest`, `nom_grupo`, `url_logo_grupo`, `email_grupo`, `telefo_grupo`, `direcc_grupo`, `estado_grupo`, `fk_id_semillero`) VALUES
	(1, 'kjfdkljkflsdajf', 'jfakjdflkjasldkfjlkasdjfljkhba', 'jsdhfkjahjkfhjkasdhjkfh', 'hdfjkahj31313', 'fadfasfd', 1, 1),
	(2, 'kjfdkljkflsdajf', 'jfakjdflkjasldkfjlkasdjfljkhba', 'jsdhfkjahjkfhjkasdhjkfh', 'hdfjkahj31313', 'fadfasfd', 1, 2);
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.informacion_integrantes_proyecto
CREATE TABLE IF NOT EXISTS `informacion_integrantes_proyecto` (
  `pk_fk_id_evento` int(11) NOT NULL,
  `pk_fk_id_usuario` int(11) NOT NULL,
  `funcion_miembro` varchar(255) DEFAULT NULL,
  `Descrip_miembro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_fk_id_evento`,`pk_fk_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.informacion_integrantes_proyecto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(500) DEFAULT NULL,
  `id_menu_padre` int(11) DEFAULT NULL,
  `url_pagina` varchar(500) DEFAULT NULL,
  `icono` varchar(500) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `FK_menu_menu` (`id_menu_padre`),
  CONSTRAINT `FK_menu_menu` FOREIGN KEY (`id_menu_padre`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.menu: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id_menu`, `nom_menu`, `id_menu_padre`, `url_pagina`, `icono`, `comentario`) VALUES
	(1, 'Grupo', NULL, NULL, NULL, 'solo para lider'),
	(2, 'Mi Pagina', NULL, NULL, NULL, 'para creadores y miembro'),
	(3, 'Crear Pagina', 2, NULL, NULL, NULL),
	(4, 'Actualizar Pagina', 2, NULL, NULL, NULL),
	(5, 'Eliminar Pagina', 2, NULL, NULL, NULL),
	(6, 'Las Paginas', NULL, NULL, NULL, 'las paginas de todos los grupos super admi'),
	(7, 'Lista de Miembros', NULL, NULL, NULL, NULL),
	(8, 'Noticias', NULL, NULL, NULL, NULL),
	(9, 'Nueva Noticia', 8, 'NoticiaNueva.aspx', 'grid_on', NULL),
	(10, 'Modificar Noticia', 8, NULL, NULL, NULL),
	(11, 'Elinimar Noticia', 8, NULL, NULL, NULL),
	(12, 'Actividades ', NULL, NULL, NULL, NULL),
	(13, 'Consultar Actividades', 12, NULL, NULL, NULL),
	(14, 'Crear Actividad', 12, NULL, NULL, NULL),
	(15, 'Modificar Actividad', 12, NULL, NULL, NULL),
	(16, 'Eliminar Actividad ', 12, NULL, NULL, NULL),
	(17, 'Reporte', NULL, NULL, NULL, 'reporte interno de los grupos'),
	(18, 'Grupos', NULL, NULL, NULL, NULL),
	(19, 'Pagina', 2, NULL, NULL, 'consulta pagina 1'),
	(20, 'Reporte de grupos', NULL, NULL, NULL, 'super administrador');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.pagina_web
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(255) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  `estado_pagina` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `mydb`.`grupo_invest` (`id_grupo_invest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `mydb`.`plantilla` (`id_plantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.pagina_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.plantilla
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
CREATE TABLE IF NOT EXISTS `producto` (
  `id_produc` int(11) NOT NULL,
  `nom_producto` varchar(400) NOT NULL,
  `fecha_de_produc` date DEFAULT NULL,
  `estado_produc` tinyint(4) DEFAULT NULL,
  `lugar_produc` varchar(45) DEFAULT NULL,
  `publico_produc` tinyint(4) DEFAULT NULL,
  `fk_id_grupo_invest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produc`),
  KEY `fk_producto_grupo_invest1_idx` (`fk_id_grupo_invest`),
  CONSTRAINT `FK_producto_grupo_invest` FOREIGN KEY (`fk_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
REPLACE INTO `producto` (`id_produc`, `nom_producto`, `fecha_de_produc`, `estado_produc`, `lugar_produc`, `publico_produc`, `fk_id_grupo_invest`) VALUES
	(1, 'afdsafsdfas', '1999-08-23', 1, 'tyguigug', 1, 1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.soporte
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(255) DEFAULT NULL,
  `pk_fk_id_produc` int(11) NOT NULL,
  `titulo_soporte` varchar(255) NOT NULL,
  `descrip_soporte` varchar(255) NOT NULL,
  `estado_soporte` int(11) DEFAULT NULL,
  `fecha_publicado` date DEFAULT NULL,
  PRIMARY KEY (`id_soporte`,`pk_fk_id_produc`),
  KEY `fk_soporte_producto1_idx` (`pk_fk_id_produc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.soporte: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
REPLACE INTO `soporte` (`id_soporte`, `url_imagene`, `pk_fk_id_produc`, `titulo_soporte`, `descrip_soporte`, `estado_soporte`, `fecha_publicado`) VALUES
	(1, 'hola.png', 1, 'afkdja', 'kjflkanmfmano', 1, '1999-08-23'),
	(2, NULL, 1, 'fdsafsdf', 'fsdfasfd', NULL, NULL),
	(3, 'fdsfs', 1, 'vcxvcxsda', 'mk.m.,m', NULL, NULL),
	(4, 'dsadasdfmnbm,a', 1, 'fdsfsv,.mcx.v', '-.,-df.s,', NULL, NULL);
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.tipo_action
CREATE TABLE IF NOT EXISTS `tipo_action` (
  `id_tipo_action` int(11) NOT NULL DEFAULT '0',
  `nom_tipo_action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.tipo_action: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_action` DISABLE KEYS */;
REPLACE INTO `tipo_action` (`id_tipo_action`, `nom_tipo_action`) VALUES
	(1, 'Creado'),
	(2, 'Modificado'),
	(3, 'Eliminado');
/*!40000 ALTER TABLE `tipo_action` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.tipo_has_menu
CREATE TABLE IF NOT EXISTS `tipo_has_menu` (
  `pk_fk_tipo_usuario` int(11) NOT NULL,
  `pk_fk_menu` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`pk_fk_tipo_usuario`,`pk_fk_menu`),
  KEY `FK_Permisos_menu` (`pk_fk_menu`),
  CONSTRAINT `FK_Permisos_menu` FOREIGN KEY (`pk_fk_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Permisos_tipo_usuario` FOREIGN KEY (`pk_fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.tipo_has_menu: ~39 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_has_menu` DISABLE KEYS */;
REPLACE INTO `tipo_has_menu` (`pk_fk_tipo_usuario`, `pk_fk_menu`, `fecha`) VALUES
	(1, 1, '2019-02-05'),
	(1, 2, '2019-02-05'),
	(1, 3, '2019-02-05'),
	(1, 4, '2019-02-05'),
	(1, 5, '2019-02-05'),
	(1, 7, '2019-02-05'),
	(1, 8, '2019-02-05'),
	(1, 9, '2019-02-05'),
	(1, 10, '2019-02-05'),
	(1, 11, '2019-02-05'),
	(1, 12, '2019-02-05'),
	(1, 13, '2019-02-05'),
	(1, 14, '2019-02-05'),
	(1, 15, '2019-02-05'),
	(1, 16, '2019-02-05'),
	(1, 17, '2019-02-05'),
	(2, 2, '2019-02-05'),
	(2, 7, '2019-02-05'),
	(2, 12, '2019-02-05'),
	(2, 13, '2019-02-05'),
	(2, 18, '2019-02-05'),
	(2, 19, '2019-02-05'),
	(4, 6, '2019-02-05'),
	(4, 20, '2019-02-05'),
	(5, 2, '2019-02-05'),
	(5, 3, '2019-02-05'),
	(5, 4, '2019-02-05'),
	(5, 5, '2019-02-05'),
	(5, 7, '2019-02-05'),
	(5, 8, '2019-02-05'),
	(5, 9, '2019-02-05'),
	(5, 10, '2019-02-05'),
	(5, 11, '2019-02-05'),
	(5, 12, '2019-02-05'),
	(5, 13, '2019-02-05'),
	(5, 14, '2019-02-05'),
	(5, 15, '2019-02-05'),
	(5, 16, '2019-02-05'),
	(5, 18, '2019-02-05');
/*!40000 ALTER TABLE `tipo_has_menu` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_user` int(11) NOT NULL,
  `nombre_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.tipo_usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
REPLACE INTO `tipo_usuario` (`id_user`, `nombre_user`) VALUES
	(1, 'Lider'),
	(2, 'miembro'),
	(4, 'Super Administrador'),
	(5, 'Administrador');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  `fk_tipo_usuario` int(11) DEFAULT NULL,
  `estado_usuario` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_usuario_tipo_usuario` (`fk_tipo_usuario`),
  CONSTRAINT `FK_usuario_tipo_usuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento viewgroup.proced_consultar_product_semillero
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consultar_product_semillero`(
	IN `pk_grupo` INT








)
BEGIN

select producto.nom_producto from producto
INNER JOIN grupo_invest AS grupo ON grupo.id_grupo_invest=producto.id_produc

where grupo.id_grupo_invest=pk_grupo
AND
producto.publico_produc<>0
union ALL
SELECT semillero.nom_grupo  

from grupo_invest 
inner join grupo_invest  as semillero
on grupo_invest.id_grupo_invest=semillero.fk_id_semillero
where 
semillero.id_grupo_invest <> semillero.fk_id_semillero 
and
grupo_invest.id_grupo_invest=pk_grupo;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_grupo_id
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo_id`()
BEGIN

select grupo_invest.id_grupo_invest FROM grupo_invest
order by grupo_invest.id_grupo_invest  desc 
LIMIT 1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_menu_nom
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_menu_nom`(
	IN `id_rol` INT



)
BEGIN
SELECT menu.nom_menu FROM menu
INNER JOIN tipo_has_menu ON tipo_has_menu.pk_fk_menu=menu.id_menu
INNER JOIN tipo_usuario ON tipo_usuario.id_user = tipo_has_menu.pk_fk_tipo_usuario
WHERE tipo_usuario.id_user = id_rol
AND 
menu.id_menu_padre<>null;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_menu_todo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_menu_todo`(
	IN `id_rol` INT



)
BEGIN

SELECT menu.nom_menu, menu.url_pagina, menu.id_menu_padre FROM menu
INNER JOIN tipo_has_menu ON tipo_has_menu.pk_fk_menu=menu.id_menu
INNER JOIN tipo_usuario ON tipo_usuario.id_user = tipo_has_menu.pk_fk_tipo_usuario
WHERE tipo_usuario.id_user = id_rol;

SELECT menu.nom_menu, menu.url_pagina,menu.id_menu_padre FROM menu
INNER JOIN tipo_has_menu ON tipo_has_menu.pk_fk_menu=menu.id_menu
INNER JOIN tipo_usuario ON tipo_usuario.id_user = tipo_has_menu.pk_fk_tipo_usuario
WHERE tipo_usuario.id_user = id_rol
AND 
menu.id_menu<>menu.id_menu_padre;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_menu_view
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_menu_view`(
	IN `id_rol` INT


)
BEGIN

SELECT menu.id_menu, menu.nom_menu, menu.url_pagina,if(menu.id_menu_padre is null, 'Nulo', menu.id_menu_padre)
as 'padre', menu.icono FROM menu
RIGHT JOIN tipo_has_menu ON tipo_has_menu.pk_fk_menu=menu.id_menu
RIGHT JOIN tipo_usuario ON tipo_usuario.id_user = tipo_has_menu.pk_fk_tipo_usuario
WHERE tipo_usuario.id_user = id_rol
;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_soport_pag_not
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_soport_pag_not`(
	IN `id_grupo` INT




)
BEGIN

select soporte.url_imagene,soporte.titulo_soporte,soporte.descrip_soporte,soporte.fecha_publicado FROM soporte
where soporte.estado_soporte=1
order  by soporte.id_soporte DESC
LIMIT 10;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_consul_user
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user`(
	IN `id_user` INT







)
BEGIN

  

 

 if ( (select COUNT(*) from usuario usu
 where id_user= usu.id_usuario) =0) then
	select "no wey" as mensaje;
else 
 	select "siii wey si existe :D" as mensaje ;
 	
 	end if;


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_grupo`(
	IN `nom_grupo1` VARCHAR(500),
	IN `url_logo_grupo` VARCHAR(500),
	IN `email_grupo` VARCHAR(500),
	IN `telefo_grupo` VARCHAR(500),
	IN `direcc_grupo` VARCHAR(500)





)
BEGIN

declare num int;


  
SET num =(select IFNULL(MAX(grupo_invest.id_grupo_invest),0) FROM grupo_invest);
   

  
   insert into grupo_invest VALUES((num+1),nom_grupo1,url_logo_grupo,email_grupo,telefo_grupo,direcc_grupo,1,(num+1));


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_paginajhgjhgjhjg
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_paginajhgjhgjhjg`(
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

-- Volcando estructura para procedimiento viewgroup.proced_create_semillero
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_semillero`(
	IN `id_grupo` INT,
	IN `nom_grupo1` VARCHAR(500),
	IN `url_logo_grupo` VARCHAR(500),
	IN `email_grupo` VARCHAR(500),
	IN `telefo_grupo` VARCHAR(500),
	IN `direcc_grupo` VARCHAR(500),
	IN `estado` TINYINT



)
BEGIN

DECLARE num int;


  
  SET num =(select IFNULL(MAX(grupo_invest.id_grupo_invest),0) FROM grupo_invest);
  	
   

  
   insert into grupo_invest VALUES((num+1),nom_grupo1,url_logo_grupo,email_grupo,telefo_grupo,direcc_grupo,estado,id_grupo);


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_soport_not
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_soport_not`(
	IN `pk_fk_produc` INT,
	IN `url_imagen` VARCHAR(500),
	IN `titulo_soporte` VARCHAR(500),
	IN `descrip_soporte` VARCHAR(500)






,
	IN `fecha` DATE


)
BEGIN
declare num int;

SET num =(select IFNULL(MAX(soporte.id_soporte),0) FROM soporte);

insert into soporte VALUES((num+1),url_imagen,pk_fk_produc,titulo_soporte,descrip_soporte,1,fecha);


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_create_usuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_usuario`(
	IN `id_user` INT,
	IN `nombre_user` VARCHAR(50),
	IN `url_foto_user` VARCHAR(50),
	IN `tipo_user` INT



)
BEGIN

declare num int;

SET num =(select IFNULL(MAX(usuario.id_soporte),0) FROM usuario);

 insert into usuario VALUES(num+1,nombre_user,url_foto_user,tipo_user);
   
   select * from usuario;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_delete_soport
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_delete_soport`(
	IN `id_soport` INT
)
BEGIN

UPDATE soporte
set soporte.estado_soporte=0
where soporte.id_soporte;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_registra_produc
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_registra_produc`(
	IN `nom_producto` VARCHAR(500),
	IN `fecha_de_produc` DATE,
	IN `estado_produc` TINYINT,
	IN `lugar_produc` VARCHAR(500),
	IN `publico_produc` TINYINT


,
	IN `id_grupo` INT




)
    COMMENT 'se registrara los proyectos que se quiere publicar, y los semilleros publicos'
BEGIN

DECLARE num int;


SET num =(select IFNULL(MAX(producto.id_produc),0) FROM producto);


insert into producto VALUES((num+1),nom_producto,fecha_de_produc,estado_produc,lugar_produc,publico_produc,id_grupo);

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup.proced_update_soport
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_update_soport`(
	IN `id_soport` INT,
	IN `upd_imagen` VARCHAR(500),
	IN `upd_produc` INT,
	IN `upd_titulo` VARCHAR(500),
	IN `upd_descri` VARCHAR(500)
)
BEGIN
UPDATE soporte
set soporte.url_imagene=upd_imagen, soporte.pk_fk_id_produc=upd_produc,
soporte.titulo_soporte=upd_titulo,soporte.descrip_soporte=upd_descri
where soporte.id_soporte=id_soport;

END//
DELIMITER ;

-- Volcando estructura para disparador viewgroup.tr_insert_soporte
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_insert_soporte` AFTER INSERT ON `soporte` FOR EACH ROW BEGIN
declare num int;
declare user1 varchar(100);

set user1 = (SELECT grupo_invest.nom_grupo from soporte
	inner join producto on producto.id_produc= soporte.pk_fk_id_produc
	inner join grupo_invest on grupo_invest.id_grupo_invest = producto.fk_id_grupo_invest
	);


SET num =(select IFNULL(MAX(auditoria.id_auditoria),0) FROM auditoria);



	INSERT into auditoria(auditoria.id_auditoria , auditoria.nom_grupo, auditoria.nom_usurio, 
	auditoria.fecha_action, auditoria.fk_tipo_action)
	VALUES(num+1,"puto",user1,CURDATE(),1);


END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

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
  PRIMARY KEY (`id_grupo`),
  KEY `FK_grupo_inve_semillero_grupo_inve_semillero` (`grupo_inve_semillero_id_grupo`),
  CONSTRAINT `FK_grupo_inve_semillero_grupo_inve_semillero` FOREIGN KEY (`grupo_inve_semillero_id_grupo`) REFERENCES `grupo_inve_semillero` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.grupo_inve_semillero: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_inve_semillero` DISABLE KEYS */;
INSERT INTO `grupo_inve_semillero` (`id_grupo`, `nom_grupo`, `sigla_signif_grupo`, `objetivo_grupo`, `programa_grupo`, `url_logo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `grupo_inve_semillero_id_grupo`) VALUES
	(111, 'Giecom', 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', NULL, 'Ingenieria de Sistemas', '../imagenes/grupos/giecom.jpg', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', NULL, 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', 111),
	(112, 'Alecout', NULL, 'crear contador de alevinos', 'Ingenieria de Sistemas', '(NULL)', NULL, NULL, NULL, NULL, 111),
	(113, 'Giecom Semillero', NULL, NULL, 'Ingenieria de Sistemas', '../imagenes/semilleros/giecom.jpg', NULL, NULL, NULL, NULL, 111),
	(114, 'Sara', NULL, NULL, 'Ingenieria de Sistemas', '../imagenes/semilleros/sara.jpg', NULL, NULL, NULL, NULL, 115),
	(115, 'GIIE', 'GRUPO DE INVESTIGACION EN INFORMATICA EDUCATIVA', 'Construir el grupo de investigación encargado de liderar los procesos investigativos en el área de la informática educativa en la Universidad de la Amazonia, por medio del cual se generen resultados con claridad y pertinencia, representados en productos tales como publicaciones científicas, procesos de formación y trabajos de investigación.', 'Ingenieria de Sistemas', '../imagenes/grupos/GIIE.png', 'Generar procesos de ciencia y tecnologia que contribuyan al desarrollo científico de la informática Educativa en la región Amazónica.', 'El grupo de investigación de desarrollará los elementos constitutivos en el área de la informática educativa de lineas de investigación de la Uniamazonia tales como: Educación Ambiental, Pedagogía y Didáctica, Administración y Educación, etc.', NULL, NULL, 115),
	(117, 'ECQ', 'Estrategias Computacionales en Química', NULL, 'Quimica', '../imagenes/grupos/quimica.png', 'La misión del grupo de investigación ¿Estrategias Computacionales en Química¿ es ampliar el conocimiento sobre los sistemas químicos empleando simulaciones computacionales. El grupo promueve la formación de talento humano con la capacidad de emplear los modelos computacionales modernos y desarrollar nuevas metodologías teóricas. Los proyectos de investigación están enfocados en proponer, predecir, analizar y aplicar las propiedades físicas, químicas y biológicas de compuestos químicos de interés regional, nacional o mundial.', 'Para el año 2020 nuestro grupo se habrá consolidado como uno de los grupos líderes en Colombia en el área de la química computacional. Contará con un amplio número de estudiantes de pregrado y posgrado. Los proyectos realizados por el grupo estarán estrechamente relacionados con estudios experimentales de punta, en el marco de colaboraciones interdisciplinares.', NULL, NULL, 117),
	(118, 'ESTRATEGÍAS COMPUTACIONALES ', NULL, 'El semillero de investigación Estrategias Computacionales a puesto atención a los problemas de la región amazónica intentando brindar soluciones mediante la utilización de herramienta informáticas propias de la química, los cuales en la mayoría son libre acceso, generando propuesta de de investigación de bahjo costos de financiación pero de gran interés para la región amazónica.', 'Quimica', '../imagenes/semilleros/quimica.png', 'El semillero de investigación Estrategias Computacionales, buscamos la generación de nuevos conocimientos utilizando una gran variedad de herramientas computacionales de libre acceso que pueden ser de gran utilidad para la predicción de las propiedades físicas y químicas de compuestos desconocidos o difíciles de caracterizar experimentalmente, así como el análisis de las propiedades físicas y químicas de compuestos existentes, interpretando información experimental o prediciendo propiedades aún no determinadas', 'El semillero Estrategias Computacionales familiarizar a sus nuevos integrantes con las herramientas computaciones de interés químico y corroborando los resultados teóricos obtenidos con los datos experimentales reportados en la literatura. Actualmente nuestro semillero está enfocado en el estudio de la resistencia del vector del dengue, chicunguya y Zica, Aedes aegyty, utilizando para ello tanto herramientas experimentales como teóricas. Esperando obtener resultados que puedan ser de utilidad para la solución de los problemas de salud pública.', NULL, NULL, 117),
	(120, 'PICARDIE', 'Producir, Integrar, Compartir para Aprender con Recursos Didácticos E-learning', NULL, 'Ingenieria de Sistemas', '../imagenes/semilleros/picardie.png', NULL, NULL, NULL, NULL, 115),
	(121, 'Semillero de programacion', NULL, 'Elevar el nivel de algoritmia ', 'Ingenieria de Sistemas', '../imagenes/semilleros/Sprogramacion.png', 'El Semillero de Programación de la Universidad de la Amazonia tiene como misión promover la participación de estudiantes en eventos de programación competitiva del orden nacional e internacional, propiciando espacios académicos donde por medio del aprendizaje colaborativo se desarrollen habilidades investigativas y se fortalezcan los conocimientos en estrategias de programación, todo basado en la lectura y comprensión del inglés como idioma utilizado mundialmente en estos procesos.', 'El Semillero de Programación proyecta para el 2020 representar a la Universidad de la Amazonia en competencias de programación ACM-ICPC a nivel nacional, regional y mundial, obteniendo resultados que destaquen la labor que de manera comprometida y articulada se genera desde la institución.', NULL, NULL, 111);
/*!40000 ALTER TABLE `grupo_inve_semillero` ENABLE KEYS */;

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

-- Volcando datos para la tabla sigepi.integrante_has_grupo_inve_semillero: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `integrante_has_grupo_inve_semillero` DISABLE KEYS */;
INSERT INTO `integrante_has_grupo_inve_semillero` (`usuario_id_usuario`, `grupo_inve_semillero_id_grupo`) VALUES
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
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(500) DEFAULT NULL,
  `fecha_proyecto` date DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sigepi.proyecto: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` (`id_proyecto`, `nom_proyecto`, `fecha_proyecto`, `estado_proyecto`) VALUES
	(20, 'SIGEPI', '2013-11-11', 0),
	(21, 'RQSOFT', '2013-01-13', 0),
	(22, 'Estacion Meteriologica', '2019-02-24', 1),
	(23, 'Prototipo De Un Sistema Para La Gestión De Los Procesos Electorales De La Universidad De La Amazonia', '2019-02-24', 0),
	(24, 'Semillero De Programacion', '2019-02-24', 0),
	(25, 'MDD', '2019-02-24', 0),
	(26, 'Visibilidad', '2019-02-24', 1),
	(27, 'Mercado Campesino', '2019-02-24', 0),
	(28, 'Contador de alevinos ', '2019-02-24', 1),
	(29, 'Teletrabajo', '2019-02-24', 1),
	(30, 'DESARROLLO DE PÁGINA WEB - URUKI EL MANANTIAL', '2019-02-24', 0),
	(31, 'Las TIC y Objetos Virtuales de Aprendizaje OVA, para facilitar el aprendizaje de una segunda lengua (Inglés). Proyecto de extensión en la comunidad del barrio Piedrahita en el sector Altos de Capri.', '2019-02-24', 0),
	(32, 'Tecnologías de la Información y la Comunicación para generación de cultura de paz a través del uso responsable del Internet y las redes sociales a niños y jóvenes.', '2019-02-24', 0),
	(33, 'CHARLA EDUCATIVA SOBRE LAS REDES SOCIALES', '2019-02-24', 1),
	(34, ' Estudio computacional del espectro UV-Vis de moléculas orgánicas conjugadas con posibles aplicaciones en celdas solares orgánicas ', '2016-01-05', 0),
	(35, 'Investigación, desarrollo e innovación: Desarrollo de sensores potenciométricos basados en terpiridinas', '2016-01-01', 0),
	(36, 'Estudio teórico del espectro UV-Vis de moléculas orgánicas derivadas del diestirilbenceno ', '2015-08-08', 0),
	(37, 'Diseño de compuestos potencialmente activos frente a la enfermedad de Chagas por medio de un análisis de la relación estructura actividad (QSAR) ', '2015-08-08', 1),
	(38, ' Evaluación teórica de la resistencia del Aedes aegypti frente a distintos insecticidas por medio de métodos mecano-cuánticos de tipo ab-initio y del teoría del funcional de la densidad (DFT) ', '2015-08-08', 1),
	(39, 'Determinación del origen del café por medio de espectroscopía infrarroja ', '2015-07-07', 1),
	(40, 'Proyecto de un semillero', '2019-02-23', 0);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

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

-- Volcando datos para la tabla sigepi.proyecto_has_grupo_inve_semillero: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto_has_grupo_inve_semillero` DISABLE KEYS */;
INSERT INTO `proyecto_has_grupo_inve_semillero` (`proyecto_id_proyecto`, `grupo_inve_semillero_id_grupo`) VALUES
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
	(39, 117),
	(40, 121);
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
INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nom_tipo_usuario`) VALUES
	(1, 'Lider'),
	(2, 'miembro'),
	(3, 'estudiante');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

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

-- Volcando datos para la tabla sigepi.usuario: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `nom_usuario`, `contra_usuario`, `url_foto_usuario`, `Programa`, `fk_tipo_usuario`) VALUES
	(10, 'h.ing@udla.edu.co', 'heriberto', 'giecom', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 1),
	(11, 'a.leal@udla.edu.co', 'Juan Camilo', 'contra_antorio', '../imagenes/imagen_perfil/kamilo.jpg', 'Ingenieria de Sistemas', 2),
	(12, 'c.carlos@udla.edu.co', 'carlos', '12345', '../imagenes/imagen_perfil/carlos.jpg', 'Ingenieria de Sistemas', 2),
	(13, 'j.johant@udla.edu.co', 'Johan', '12345', '../imagenes/imagen_perfil/johan.jpg', 'Ingenieria de Sistemas', 2),
	(14, 'b.yisus@udla.edu.co', 'brayan', 'yisus', '../imagenes/imagen_perfil/yisus.jpg', 'Ingenieria de Sistemas', 2),
	(15, 'd.doctor@udla.edu.co', 'Doctor Quimico', 'quimico', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 1),
	(16, 'm.agilar@udla.edu.co', 'micht', 'giecom1', '../imagenes/imagen_perfil/micht.jpg', 'Quimica', 2),
	(17, 'j.alcalde@udla.edu.co', 'alcalde', 'giecom2', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(18, 'c.doctors@udla.edu.co', 'quimico', 'quimico', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(19, 'c.laura@udla.edu.co', 'laura camila ', 'minato', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(20, 'm.ing@udla.edu.co', 'Millan', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 1),
	(21, 'j.juan@udla.edu.co', 'juanes ', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 2),
	(22, 'd.antonio@udla.edu.co', 'johan', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 2),
	(23, 'd.antonieta@udla.edu.co', 'antonieta', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 2),
	(24, 'a.cuellar@udla.edu.co', 'angela', 'cuellar', '../imagenes/imagen_perfil/anyela.jpg', 'Quimica', 2),
	(25, 'ex.algo@udla.edu.co', 'algo', 'algo', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 3),
	(26, 'ex.carlos@udla.edu.co', NULL, NULL, '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 3),
	(27, 'ex.kamilo@udla.edu.co', 'kamilo', 'kamilo', '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 3),
	(28, 'ex.@udla.edu.co', NULL, NULL, '../imagenes/imagen_perfil/1 - copia (1).png', 'Ingenieria de Sistemas', 3),
	(555, 'jp@admin.com', 'JpMurcia', 'admin', 'holii', 'Ingenieria de Sistemas', 3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

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

-- Volcando datos para la tabla sigepi.usuario_has_proyecto: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_has_proyecto` DISABLE KEYS */;
INSERT INTO `usuario_has_proyecto` (`usuario_id_usuario`, `proyecto_id_proyecto`) VALUES
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

-- Volcando estructura para vista sigepi.view_miembro_semillero
DROP VIEW IF EXISTS `view_miembro_semillero`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_miembro_semillero` (
	`nom_usuario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nom_grupo` VARCHAR(600) NULL COLLATE 'utf8_general_ci'
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
	`nom_proyecto` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
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
id_grupo,
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
DROP PROCEDURE IF EXISTS `proced_consul_grupo_has_usu`;
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

-- Volcando estructura para procedimiento sigepi.proced_consul_miembros_semi
DROP PROCEDURE IF EXISTS `proced_consul_miembros_semi`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembros_semi`(
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
DROP PROCEDURE IF EXISTS `proced_consul_miembro_simple`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembro_simple`(
	IN `nom_grupo` VARCHAR(500)





)
BEGIN

SELECT  usuario.id_usuario,usuario.Programa, usuario.nom_usuario, true as estado,usuario.url_foto_usuario, usuario.email_usuario, usuario.fk_tipo_usuario 
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
DROP PROCEDURE IF EXISTS `proced_consul_proyecto`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyecto`(
	IN `id_grupo` INT







)
BEGIN




select 
proyecto.id_proyecto,
proyecto.nom_proyecto,
proyecto.estado_proyecto,
proyecto.fecha_proyecto,
"grupo" as tipo,
grupo.id_grupo as semi

from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as grupo	ON proyec.grupo_inve_semillero_id_grupo=grupo.id_grupo




where 

grupo.id_grupo=id_grupo 

UNION


select 
proyecto.id_proyecto,
proyecto.nom_proyecto,
proyecto.estado_proyecto,
proyecto.fecha_proyecto,
"semillero" as tipo,
semillero.id_grupo as semi

from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as semillero	ON semillero.id_grupo=proyec.grupo_inve_semillero_id_grupo


where 
 

semillero.grupo_inve_semillero_id_grupo=id_grupo
 and
semillero.grupo_inve_semillero_id_grupo <> semillero.id_grupo ; 
	



END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_proyec_act
DROP PROCEDURE IF EXISTS `proced_consul_proyec_act`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyec_act`(
	IN `nombre` VARCHAR(500)


)
BEGIN



select 
proyecto.id_proyecto,proyecto.nom_proyecto, null as imagen, null as descripcion 


from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as grupo	ON proyec.grupo_inve_semillero_id_grupo=grupo.id_grupo


where 

grupo.nom_grupo=nombre
and proyecto.estado_proyecto=1; 
	


END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_proyec_inac
DROP PROCEDURE IF EXISTS `proced_consul_proyec_inac`;
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
DROP PROCEDURE IF EXISTS `proced_consul_proye_user_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proye_user_grupo`(
	IN `grupo_perte` VARCHAR(50),
	IN `id_proyec` INT

)
    COMMENT 'quienes trabajaron el el proyecto x'
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
DROP PROCEDURE IF EXISTS `proced_consul_semilleros`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_semilleros`(
	IN `nombre` VARCHAR(50)






)
begin 
select 
semillero.id_grupo,
semillero.nom_grupo,
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

-- Volcando estructura para procedimiento sigepi.proced_consul_semi_pag
DROP PROCEDURE IF EXISTS `proced_consul_semi_pag`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_semi_pag`(
	IN `nombre` VARCHAR(500)





)
    COMMENT 'concat_ws, INTO OUTFILE ''/Users/repap/Documents/eventos.txt'''
BEGIN
select semillero.id_grupo, semillero.nom_grupo, concat_ws(' ',
if(semillero.sigla_signif_grupo is null , '',concat_ws(' ','Siglas: ', semillero.sigla_signif_grupo)),

if(semillero.objetivo_grupo is null , '',concat_ws(' ','Objetivo: ', semillero.objetivo_grupo)),



if(semillero.mision_grupo is null , '',concat_ws(' ','Mision: ', semillero.mision_grupo)),

if(semillero.vision_grupo is null , '',concat_ws(' ','Vision: ', semillero.vision_grupo)),

if(semillero.justif_grupo is null , '',concat_ws(' ','Justificacion: ', semillero.justif_grupo)),

if(semillero.quien_somos_grupo is null , '',concat_ws(' ','¿Quienes somos?: ', semillero.quien_somos_grupo))



) as contenido,
semillero.url_logo_grupo
from grupo_inve_semillero 
inner join grupo_inve_semillero  as semillero
on grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
where 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo 
and
grupo_inve_semillero.nom_grupo=nombre ;


END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_consul_user_proye_grupo
DROP PROCEDURE IF EXISTS `proced_consul_user_proye_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user_proye_grupo`(
	IN `grupo_perte` INT,
	IN `id_user` INT




)
    COMMENT 'trae los proyectos que tiene un usuario en grupo x'
BEGIN


SELECT  proyecto.id_proyecto as identificador,proyecto.nom_proyecto as trabajo,"no"as cargo  FROM usuario
INNER JOIN usuario_has_proyecto ON usuario_has_proyecto.usuario_id_usuario=usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_proyecto = usuario_has_proyecto.proyecto_id_proyecto
INNER JOIN proyecto_has_grupo_inve_semillero AS proye_has ON proye_has.proyecto_id_proyecto=proyecto.id_proyecto
INNER JOIN grupo_inve_semillero grupo ON grupo.id_grupo=proye_has.grupo_inve_semillero_id_grupo
WHERE grupo.id_grupo=grupo_perte AND usuario.id_usuario=id_user
UNION
SELECT  grupo.id_grupo as identificador ,grupo.nom_grupo as trabajo,
usuario.fk_tipo_usuario as cargo FROM usuario
inner join integrante_has_grupo_inve_semillero integra on integra.usuario_id_usuario=usuario.id_usuario
inner join grupo_inve_semillero as grupo on grupo.id_grupo=integra.grupo_inve_semillero_id_grupo
where grupo.grupo_inve_semillero_id_grupo=grupo_perte AND usuario.id_usuario=id_user;
END//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.proced_validar_user
DROP PROCEDURE IF EXISTS `proced_validar_user`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_validar_user`(
	IN `email_usuari` varchar(45),
	IN `contra` varchar(45)
















)
begin 
 
 declare nombreUsuario varchar(60);
 declare idUsuario int;
 declare tipoUsuario int;
 declare grupo varchar(60);
 declare foto varchar(60);
 declare pertenece varchar(60);
 declare id_pertenece int;
  declare programa varchar(60);
 
  declare email varchar(60);

 
 
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
	tipo.nom_tipo_usuario into grupo from tipo_usuario tipo
	where tipoUsuario=tipo.id_tipo_usuario ;
	
	select 
	grupo_inve_semillero.nom_grupo into pertenece
	 from grupo_inve_semillero 
	inner JOIN integrante_has_grupo_inve_semillero inter on inter.grupo_inve_semillero_id_grupo= grupo_inve_semillero.id_grupo
	inner JOIN usuario on usuario.id_usuario=inter.usuario_id_usuario
	where usuario.id_usuario=idUsuario
	limit 1 ;
	
	select 
	usuario.Programa into programa from usuario 
	where usuario.id_usuario= idUsuario;
	
	
	select 
	grupo_inve_semillero.id_grupo into id_pertenece
	 from grupo_inve_semillero 
	inner JOIN integrante_has_grupo_inve_semillero inter on inter.grupo_inve_semillero_id_grupo= grupo_inve_semillero.id_grupo
	inner JOIN usuario on usuario.id_usuario=inter.usuario_id_usuario
	where usuario.id_usuario=idUsuario 
	limit 1;
	
	
 	set email = email_usuari;
	select "bueeeeena perro" as mensaje,
	idUsuario as usuari,
	nombreUsuario as nombreeee,
	email as correo,
	foto as foto_perfil,
	id_pertenece as id_grupo,
	pertenece as su_grupo,
	grupo as es,
	tipoUsuario as tipo_user,
	programa as pro
	;
	
	end if;


end//
DELIMITER ;

-- Volcando estructura para procedimiento sigepi.p_consul_grupo_perte
DROP PROCEDURE IF EXISTS `p_consul_grupo_perte`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_consul_grupo_perte`(
	IN `id_usuario` INT



)
BEGIN
#for(int i;(selec)){
declare conta int;
declare i int; 
#
set conta=(  select COUNT(grupo.nom_grupo) from grupo_inve_semillero as grupo
inner join integrante_has_grupo_inve_semillero pertenece on pertenece.grupo_inve_semillero_id_grupo = grupo.id_grupo
where pertenece.usuario_id_usuario=id_usuario);

select conta;


select grupo.nom_grupo from grupo_inve_semillero as grupo

inner join integrante_has_grupo_inve_semillero pertenece on pertenece.grupo_inve_semillero_id_grupo = grupo.id_grupo
where pertenece.usuario_id_usuario=id_usuario
;

 #select COUNT( CALL proced_consul_grupo_has_usu (id_usuario));





END//
DELIMITER ;

-- Volcando estructura para vista sigepi.view_grupo_investi
DROP VIEW IF EXISTS `view_grupo_investi`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_grupo_investi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_grupo_investi` AS select `sigepi`.`grupo_inve_semillero`.`nom_grupo` AS `nom_grupo`,`sigepi`.`grupo_inve_semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`sigepi`.`grupo_inve_semillero`.`objetivo_grupo` AS `objetivo_grupo`,`sigepi`.`grupo_inve_semillero`.`programa_grupo` AS `programa_grupo`,`sigepi`.`grupo_inve_semillero`.`mision_grupo` AS `mision_grupo`,`sigepi`.`grupo_inve_semillero`.`vision_grupo` AS `vision_grupo`,`sigepi`.`grupo_inve_semillero`.`justif_grupo` AS `justif_grupo`,`sigepi`.`grupo_inve_semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from `sigepi`.`grupo_inve_semillero` where (`sigepi`.`grupo_inve_semillero`.`id_grupo` = `sigepi`.`grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_miembro_semillero
DROP VIEW IF EXISTS `view_miembro_semillero`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro_semillero`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_miembro_semillero` AS select `sigepi`.`usuario`.`nom_usuario` AS `nom_usuario`,`semillero`.`nom_grupo` AS `nom_grupo` from ((`sigepi`.`grupo_inve_semillero` `semillero` join `sigepi`.`integrante_has_grupo_inve_semillero` `integra` on((`integra`.`grupo_inve_semillero_id_grupo` = `semillero`.`id_grupo`))) join `sigepi`.`usuario` on((`sigepi`.`usuario`.`id_usuario` = `integra`.`usuario_id_usuario`))) where (`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_miembro_x
DROP VIEW IF EXISTS `view_miembro_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_miembro_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_miembro_x` AS select `sigepi`.`usuario`.`nom_usuario` AS `nom_usuario`,`sigepi`.`usuario`.`id_usuario` AS `id_usuario`,`sigepi`.`usuario_has_proyecto`.`proyecto_id_proyecto` AS `proyecto_id_proyecto` from (((`sigepi`.`usuario` join `sigepi`.`usuario_has_proyecto` on((`sigepi`.`usuario`.`id_usuario` = `sigepi`.`usuario_has_proyecto`.`usuario_id_usuario`))) join `sigepi`.`proyecto` on((`sigepi`.`usuario_has_proyecto`.`proyecto_id_proyecto` = `sigepi`.`proyecto`.`id_proyecto`))) join `sigepi`.`proyecto_has_grupo_inve_semillero` on((`sigepi`.`proyecto`.`id_proyecto` = `sigepi`.`proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto`))) where (`sigepi`.`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo` = 111);

-- Volcando estructura para vista sigepi.view_proyectos_x
DROP VIEW IF EXISTS `view_proyectos_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_proyectos_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_proyectos_x` AS select `sigepi`.`proyecto`.`nom_proyecto` AS `nom_proyecto`,`sigepi`.`proyecto`.`estado_proyecto` AS `estado_proyecto` from ((`sigepi`.`grupo_inve_semillero` join `sigepi`.`proyecto_has_grupo_inve_semillero` on((`sigepi`.`grupo_inve_semillero`.`id_grupo` = `sigepi`.`proyecto_has_grupo_inve_semillero`.`grupo_inve_semillero_id_grupo`))) join `sigepi`.`proyecto` on((`sigepi`.`proyecto_has_grupo_inve_semillero`.`proyecto_id_proyecto` = `sigepi`.`proyecto`.`id_proyecto`))) where (`sigepi`.`grupo_inve_semillero`.`nom_grupo` = 'giecom');

-- Volcando estructura para vista sigepi.view_semilleros
DROP VIEW IF EXISTS `view_semilleros`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semilleros`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_semilleros` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`sigepi`.`grupo_inve_semillero` join `sigepi`.`grupo_inve_semillero` `semillero` on((`sigepi`.`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where (`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`);

-- Volcando estructura para vista sigepi.view_semillero_x
DROP VIEW IF EXISTS `view_semillero_x`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_semillero_x`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sigepi`.`view_semillero_x` AS select `semillero`.`nom_grupo` AS `nom_grupo`,`semillero`.`sigla_signif_grupo` AS `sigla_signif_grupo`,`semillero`.`objetivo_grupo` AS `objetivo_grupo`,`semillero`.`programa_grupo` AS `programa_grupo`,`semillero`.`mision_grupo` AS `mision_grupo`,`semillero`.`vision_grupo` AS `vision_grupo`,`semillero`.`justif_grupo` AS `justif_grupo`,`semillero`.`quien_somos_grupo` AS `quien_somos_grupo` from (`sigepi`.`grupo_inve_semillero` join `sigepi`.`grupo_inve_semillero` `semillero` on((`sigepi`.`grupo_inve_semillero`.`id_grupo` = `semillero`.`grupo_inve_semillero_id_grupo`))) where ((`semillero`.`id_grupo` <> `semillero`.`grupo_inve_semillero_id_grupo`) and (`semillero`.`grupo_inve_semillero_id_grupo` = 111));

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

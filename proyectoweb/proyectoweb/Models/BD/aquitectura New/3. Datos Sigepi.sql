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

-- Volcando datos para la tabla sigepi.grupo_inve_semillero: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_inve_semillero` DISABLE KEYS */;
INSERT INTO `grupo_inve_semillero` (`id_grupo`, `nom_grupo`, `sigla_signif_grupo`, `objetivo_grupo`, `programa_grupo`, `url_logo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `grupo_inve_semillero_id_grupo`) VALUES
	(111, 'Giecom', 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', NULL, 'Ingenieria de Sistema', '../imagenes/grupos/giecom.jpg', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', NULL, 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', 111),
	(112, 'Alecout', NULL, 'crear contador de alevinos', 'Ingenieria de Sistema', '(NULL)', NULL, NULL, NULL, NULL, 111),
	(113, 'Giecom Semillero', NULL, NULL, 'Ingenieria de Sistema', '../imagenes/semilleros/giecom.jpg', NULL, NULL, NULL, NULL, 111),
	(114, 'Sara', NULL, NULL, 'Ingenieria de Sistema', '../imagenes/semilleros/sara.jpg', NULL, NULL, NULL, NULL, 115),
	(115, 'GIIE', 'GRUPO DE INVESTIGACION EN INFORMATICA EDUCATIVA', 'Construir el grupo de investigación encargado de liderar los procesos investigativos en el área de la informática educativa en la Universidad de la Amazonia, por medio del cual se generen resultados con claridad y pertinencia, representados en productos tales como publicaciones científicas, procesos de formación y trabajos de investigación.', 'Ingenieria de Sistema', '../imagenes/grupos/GIIE.png', 'Generar procesos de ciencia y tecnologia que contribuyan al desarrollo científico de la informática Educativa en la región Amazónica.', 'El grupo de investigación de desarrollará los elementos constitutivos en el área de la informática educativa de lineas de investigación de la Uniamazonia tales como: Educación Ambiental, Pedagogía y Didáctica, Administración y Educación, etc.', NULL, NULL, 115),
	(117, 'ECQ', 'Estrategias Computacionales en Química', NULL, 'Quimica', '../imagenes/grupos/quimica.png', 'La misión del grupo de investigación ¿Estrategias Computacionales en Química¿ es ampliar el conocimiento sobre los sistemas químicos empleando simulaciones computacionales. El grupo promueve la formación de talento humano con la capacidad de emplear los modelos computacionales modernos y desarrollar nuevas metodologías teóricas. Los proyectos de investigación están enfocados en proponer, predecir, analizar y aplicar las propiedades físicas, químicas y biológicas de compuestos químicos de interés regional, nacional o mundial.', 'Para el año 2020 nuestro grupo se habrá consolidado como uno de los grupos líderes en Colombia en el área de la química computacional. Contará con un amplio número de estudiantes de pregrado y posgrado. Los proyectos realizados por el grupo estarán estrechamente relacionados con estudios experimentales de punta, en el marco de colaboraciones interdisciplinares.', NULL, NULL, 117),
	(118, 'ESTRATEGÍAS COMPUTACIONALES ', NULL, 'El semillero de investigación Estrategias Computacionales a puesto atención a los problemas de la región amazónica intentando brindar soluciones mediante la utilización de herramienta informáticas propias de la química, los cuales en la mayoría son libre acceso, generando propuesta de de investigación de bahjo costos de financiación pero de gran interés para la región amazónica.', 'Quimica', '../imagenes/semilleros/quimica.png', 'El semillero de investigación Estrategias Computacionales, buscamos la generación de nuevos conocimientos utilizando una gran variedad de herramientas computacionales de libre acceso que pueden ser de gran utilidad para la predicción de las propiedades físicas y químicas de compuestos desconocidos o difíciles de caracterizar experimentalmente, así como el análisis de las propiedades físicas y químicas de compuestos existentes, interpretando información experimental o prediciendo propiedades aún no determinadas', 'El semillero Estrategias Computacionales familiarizar a sus nuevos integrantes con las herramientas computaciones de interés químico y corroborando los resultados teóricos obtenidos con los datos experimentales reportados en la literatura. Actualmente nuestro semillero está enfocado en el estudio de la resistencia del vector del dengue, chicunguya y Zica, Aedes aegyty, utilizando para ello tanto herramientas experimentales como teóricas. Esperando obtener resultados que puedan ser de utilidad para la solución de los problemas de salud pública.', NULL, NULL, 117),
	(120, 'PICARDIE', 'Producir, Integrar, Compartir para Aprender con Recursos Didácticos E-learning', NULL, 'Ingenieria de Sistema', '../imagenes/semilleros/picardie.png', NULL, NULL, NULL, NULL, 115),
	(121, 'Semillero de programacion', NULL, 'Elevar el nivel de algoritmia ', 'Ingenieria de Sistema', '../imagenes/semilleros/semillero_programacion.png', 'El Semillero de Programación de la Universidad de la Amazonia tiene como misión promover la participación de estudiantes en eventos de programación competitiva del orden nacional e internacional, propiciando espacios académicos donde por medio del aprendizaje colaborativo se desarrollen habilidades investigativas y se fortalezcan los conocimientos en estrategias de programación, todo basado en la lectura y comprensión del inglés como idioma utilizado mundialmente en estos procesos.', 'El Semillero de Programación proyecta para el 2020 representar a la Universidad de la Amazonia en competencias de programación ACM-ICPC a nivel nacional, regional y mundial, obteniendo resultados que destaquen la labor que de manera comprometida y articulada se genera desde la institución.', NULL, NULL, 111);
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
	(10, 'h.ing@udla.edu.co', 'heriberto', 'giecom', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 1),
	(11, 'a.leal@udla.edu.co', 'Juan camilo', 'enano', '../imagenes/imagen_perfil/kamilo.jpg', 'Sistemas', 2),
	(12, 'c.carlos@udla.edu.co', 'carlos', '12345', '../imagenes/imagen_perfil/carlos.jpg', 'Sistemas', 2),
	(13, 'j.johan@udla.edu.co', 'johan', '12345', '../imagenes/imagen_perfil/johan.jpg', 'Sistemas', 2),
	(14, 'b.yisus@udla.edu.co', 'brayan', 'yisus', '../imagenes/imagen_perfil/yisus.jpg', 'Sistemas', 2),
	(15, 'd.doctor@udla.edu.co', 'Doctor Quimico', 'quimico', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 1),
	(16, 'm.agilar@udla.edu.co', 'micht', 'giecom1', '../imagenes/imagen_perfil/micht.jpg', 'Quimica', 2),
	(17, 'j.alcalde@udla.edu.co', 'alcalde', 'giecom2', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(18, 'c.doctors@udla.edu.co', 'quimico', 'quimico', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(19, 'c.laura@udla.edu.co', 'laura camila ', 'minato', '../imagenes/imagen_perfil/1 - copia (1).png', 'Quimica', 2),
	(20, 'm.ing@udla.edu.co', 'Millan', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 1),
	(21, 'j.juan@udla.edu.co', 'juanes ', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 2),
	(22, 'd.antonio@udla.edu.co', 'johan', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 2),
	(23, 'd.antonieta@udla.edu.co', 'antonieta', 'giie', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 2),
	(24, 'a.cuellar@udla.edu.co', 'angela', 'cuellar', '../imagenes/imagen_perfil/anyela.jpg', 'Quimica', 2),
	(25, 'ex.algo@udla.edu.co', 'algo', 'algo', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 3),
	(26, 'ex.carlos@udla.edu.co', NULL, NULL, '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 3),
	(27, 'ex.kamilo@udla.edu.co', 'kamilo', 'kamilo', '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 3),
	(28, 'ex.@udla.edu.co', NULL, NULL, '../imagenes/imagen_perfil/1 - copia (1).png', 'Sistemas', 3);
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

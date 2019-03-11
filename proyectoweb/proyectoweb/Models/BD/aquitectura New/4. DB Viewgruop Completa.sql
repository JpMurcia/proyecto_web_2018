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


-- Volcando estructura de base de datos para viewgroup3
DROP DATABASE IF EXISTS `viewgroup3`;
CREATE DATABASE IF NOT EXISTS `viewgroup3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup3`;

-- Volcando estructura para tabla viewgroup3.actividad
DROP TABLE IF EXISTS `actividad`;
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

-- Volcando datos para la tabla viewgroup3.actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.auditoria_noticia
DROP TABLE IF EXISTS `auditoria_noticia`;
CREATE TABLE IF NOT EXISTS `auditoria_noticia` (
  `id_auditoria_noti` int(11) NOT NULL,
  `nom_grupo` varchar(100) DEFAULT NULL,
  `nom_proyecto` varchar(100) DEFAULT NULL,
  `nom_noticia` varchar(100) DEFAULT NULL,
  `descrip_noticia` varchar(600) DEFAULT NULL,
  `accion` varchar(600) DEFAULT NULL,
  `fecha_accion` date DEFAULT NULL,
  PRIMARY KEY (`id_auditoria_noti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.auditoria_noticia: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria_noticia` DISABLE KEYS */;
INSERT INTO `auditoria_noticia` (`id_auditoria_noti`, `nom_grupo`, `nom_proyecto`, `nom_noticia`, `descrip_noticia`, `accion`, `fecha_accion`) VALUES
	(1, 'GIIE', 'CHARLA EDUCATIVA SOBRE LAS REDES SOCIALES', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', ' Cambio', '2019-03-10'),
	(2, 'GIIE', 'CHARLA EDUCATIVA SOBRE LAS REDES SOCIALES', NULL, 'sdfds', ' Cambio', '2019-03-10'),
	(3, 'GIIE', 'CHARLA EDUCATIVA SOBRE LAS REDES SOCIALES', NULL, 'sdfds', ' Cambio', '2019-03-10'),
	(4, 'Giecom', 'Teletrabajo', 'Actualizacion de la base datas #Teletrabajo', 'Es una base de datos recursiva bien chida ', 'registro', '2019-03-11'),
	(5, 'Giecom', 'Contador de alevinos ', '', 'sdsadsadsa', 'registro', '2019-03-11');
/*!40000 ALTER TABLE `auditoria_noticia` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.auditoria_pag
DROP TABLE IF EXISTS `auditoria_pag`;
CREATE TABLE IF NOT EXISTS `auditoria_pag` (
  `id_auditoria` int(11) NOT NULL,
  `nom_grupo` varchar(45) DEFAULT NULL,
  `fecha_accion` varchar(45) DEFAULT NULL,
  `accion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.auditoria_pag: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria_pag` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_pag` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_Categoria` int(11) NOT NULL,
  `id_nom_categoria` varchar(45) DEFAULT NULL,
  `estado_categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.categoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.facultad
DROP TABLE IF EXISTS `facultad`;
CREATE TABLE IF NOT EXISTS `facultad` (
  `id_facultad` int(11) NOT NULL,
  `nom_facultad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.facultad: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` (`id_facultad`, `nom_facultad`) VALUES
	(1, 'Ingenieria'),
	(2, 'Ciencias Basicas');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.grupo_invest
DROP TABLE IF EXISTS `grupo_invest`;
CREATE TABLE IF NOT EXISTS `grupo_invest` (
  `id_grupo_invest` int(11) NOT NULL,
  `nom_grupo` varchar(255) DEFAULT NULL,
  `email_grupo` varchar(45) DEFAULT NULL,
  `telefo_grupo` varchar(45) DEFAULT NULL,
  `direcc_grupo` varchar(45) DEFAULT NULL,
  `url_logo_grupo` varchar(255) DEFAULT NULL,
  `estado_grupo` tinyint(4) DEFAULT NULL,
  `siglas_signif_grupo` varchar(800) DEFAULT NULL,
  `objetivo_grupo` varchar(800) DEFAULT NULL,
  `mision_grupo` varchar(800) DEFAULT NULL,
  `vision_grupo` varchar(800) DEFAULT NULL,
  `justif_grupo` varchar(800) DEFAULT NULL,
  `quien_somos_grupo` varchar(800) DEFAULT NULL,
  `fk_grupo_semi` int(11) DEFAULT NULL,
  `fk_id_Programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_grupo_invest`),
  KEY `fk_grupo_invest_Programa1_idx` (`fk_id_Programa`),
  KEY `FK_grupo_invest_grupo_invest` (`fk_grupo_semi`),
  CONSTRAINT `FK_grupo_invest_grupo_invest` FOREIGN KEY (`fk_grupo_semi`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_programa` FOREIGN KEY (`fk_id_Programa`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.grupo_invest: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
INSERT INTO `grupo_invest` (`id_grupo_invest`, `nom_grupo`, `email_grupo`, `telefo_grupo`, `direcc_grupo`, `url_logo_grupo`, `estado_grupo`, `siglas_signif_grupo`, `objetivo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `fk_grupo_semi`, `fk_id_Programa`) VALUES
	(111, 'Giecom', NULL, '12213243234', 'dsadsdsad', '../imagenes/grupos/giecom.jpg', 1, 'Gestión del Conocimiento, Electrónica, Informática y Comunicaciones ', '', 'GIECOM está comprometido con la generación de conocimiento científico y tecnológico, mediante el trabajo multidisciplinario en las áreas de gestión del conocimiento, comunicación, electrónica e informática, de tal manera que los resultados promuevan el crecimiento y formación de los investigadores, así como el desarrollo tecnológico en la región Amazónica, realizando alianzas estratégicas con diferentes empresas, las cuales se beneficien de nuestros logros alcanzados y de igual forma ayuden a la financiación de los diferentes proyectos a realizar.', 'Para el año 2018, GIECOM se consolidará como un grupo de investigación reconocido a nivel nacional e internacional en la generación de conocimiento en áreas de gestión del conocimiento, comunicación, electrónica e informática, contando con un personal altamente cualificado y generando proyectos multidisciplinarios que fortalezcan el desarrollo empresarial de la Región, promoviendo los proyectos que se desarrollan a las instituciones o empresas para un mutuo beneficio.', '', 'La fecha de creacion del grupo de investigacion fue en el Año 2007, por el cual se adquirio unas unidades Académicas a la facultad de Ingeniería y su programa Ingeniería de Sistemas. Sus Líneas de Investigación estan bien definidas como son la Inteligencia Artificial, el Desarrollo de Software y en el área de control.', NULL, 1),
	(112, 'Alecout', NULL, NULL, NULL, '(NULL)', 1, '', 'crear contador de alevinos', '', '', '', '', 111, 1),
	(113, 'Giecom Semillero', NULL, NULL, NULL, '../imagenes/semilleros/giecom.jpg', 1, '', '', '', '', '', '', 111, 1),
	(121, 'Semillero de programacion', NULL, NULL, NULL, '../imagenes/semilleros/Sprogramacion.png', 1, '', 'Elevar el nivel de algoritmia ', 'El Semillero de Programación de la Universidad de la Amazonia tiene como misión promover la participación de estudiantes en eventos de programación competitiva del orden nacional e internacional, propiciando espacios académicos donde por medio del aprendizaje colaborativo se desarrollen habilidades investigativas y se fortalezcan los conocimientos en estrategias de programación, todo basado en la lectura y comprensión del inglés como idioma utilizado mundialmente en estos procesos.', 'El Semillero de Programación proyecta para el 2020 representar a la Universidad de la Amazonia en competencias de programación ACM-ICPC a nivel nacional, regional y mundial, obteniendo resultados que destaquen la labor que de manera comprometida y articulada se genera desde la institución.', '', '', 111, 1),
	(666, 'Admi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.grupo_invest_has_usuario
DROP TABLE IF EXISTS `grupo_invest_has_usuario`;
CREATE TABLE IF NOT EXISTS `grupo_invest_has_usuario` (
  `pkf_id_grupo_invest` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `fk_tipo_usuario` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkf_id_grupo_invest`,`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_usuario1_idx` (`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_grupo_invest1_idx` (`pkf_id_grupo_invest`),
  KEY `FK_grupo_invest_has_usuario_tipo_usuario` (`fk_tipo_usuario`),
  CONSTRAINT `FK_grupo_invest_has_usuario_grupo_invest` FOREIGN KEY (`pkf_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_tipo_usuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.grupo_invest_has_usuario: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest_has_usuario` DISABLE KEYS */;
INSERT INTO `grupo_invest_has_usuario` (`pkf_id_grupo_invest`, `pkf_id_usuario`, `fecha`, `fk_tipo_usuario`, `estado`) VALUES
	(111, 10, '2019-03-11', 1, 1),
	(112, 11, '2019-03-11', 2, 1),
	(112, 12, '2019-03-11', 2, 1),
	(112, 13, '2019-03-11', 2, 0),
	(112, 14, '2019-03-11', 2, 1),
	(112, 24, '2019-03-11', 2, 1),
	(113, 11, '2019-03-11', 2, 1),
	(113, 14, '2019-03-11', 2, 1),
	(121, 12, '2019-03-11', 2, 1),
	(121, 14, '2019-03-11', 2, 1);
/*!40000 ALTER TABLE `grupo_invest_has_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.habilidades
DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id_Habilidades` int(11) NOT NULL,
  `nom_Habili` varchar(45) DEFAULT NULL,
  `estado_habili` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Habilidades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.habilidades: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.habilidades_has_usuario
DROP TABLE IF EXISTS `habilidades_has_usuario`;
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

-- Volcando datos para la tabla viewgroup3.habilidades_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades_has_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.menu
DROP TABLE IF EXISTS `menu`;
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

-- Volcando datos para la tabla viewgroup3.menu: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id_menu`, `nom_menu`, `id_menu_padre`, `url_pagina`, `icono`, `comentario`, `estado`) VALUES
	(1, 'Grupo', NULL, NULL, 'group', 'solo para lider', NULL),
	(2, 'Crear Pagina', NULL, 'CrearPagina.aspx', 'image', 'para creadores y miembro', '1'),
	(3, 'Mi Pagina ', '2', NULL, 'image', NULL, '1'),
	(4, 'Actualizar Pagina', '2', NULL, 'AP', NULL, NULL),
	(5, 'Eliminar Pagina', '2', NULL, 'EP', NULL, NULL),
	(6, 'Las Paginas', NULL, NULL, 'grid_on', 'las paginas de todos los grupos super admi', NULL),
	(7, 'Lista de Miembros', NULL, 'permisos.aspx', 'assignment_ind', NULL, '1'),
	(8, 'Noticias', NULL, NULL, 'event_note', NULL, NULL),
	(9, 'Nueva Noticia', '8', 'NoticiaNueva.aspx', 'event_note', NULL, '1'),
	(10, 'Ver Noticias', '8', 'NoticiaPublicada.aspx', 'event_note', NULL, '1'),
	(11, 'Elinimar Noticia', '8', NULL, 'grid_on', NULL, NULL),
	(12, 'Actividades ', NULL, 'Actividades.aspx', 'date_range ', NULL, '1'),
	(13, 'Ver Actividades', '12', NULL, 'VA', NULL, NULL),
	(14, 'Crear Actividad', '12', NULL, 'date_range ', NULL, '1'),
	(15, 'Modificar Actividad', '12', NULL, 'grid_on', NULL, NULL),
	(16, 'Eliminar Actividad ', '12', NULL, 'grid_on', NULL, NULL),
	(17, 'Reporte', NULL, 'Reportes/Vista_Report.aspx', 'grid_on', 'reporte interno de los grupos', '1'),
	(18, 'Grupos', NULL, NULL, 'grid_on', NULL, NULL),
	(19, 'Pagina', '2', NULL, 'grid_on', 'consulta pagina 1', NULL),
	(20, 'Reporte General', NULL, 'Reportes/Vista_report_general.aspx', 'grid_on', 'super administrador', '1');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.pagina_propia
DROP TABLE IF EXISTS `pagina_propia`;
CREATE TABLE IF NOT EXISTS `pagina_propia` (
  `id_Pagina Propia` int(11) NOT NULL,
  `Nom_grupo` varchar(800) DEFAULT NULL,
  `Contenido` varchar(800) DEFAULT NULL,
  `Creadores` varchar(800) DEFAULT NULL,
  `Acredicimiento` varchar(800) DEFAULT NULL,
  `Logo` varchar(800) DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_Pagina Propia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.pagina_propia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_propia` DISABLE KEYS */;
INSERT INTO `pagina_propia` (`id_Pagina Propia`, `Nom_grupo`, `Contenido`, `Creadores`, `Acredicimiento`, `Logo`, `descrip`) VALUES
	(666, 'Viewgroup', 'ViewGroup es una plataforma para la gestiòn de grupos de investigaciòn en la universidad de la Amazonia, en esta plataforma los coordinadores de cada grupo pueden crear y publicar la pagina web del mismo, publicar noticias, crear actividades y demas ingresando unos pequeños datos, de esta manera cualquier persona puede buede visualizar la pagina web una vez este publicada en nuestra plataforma con solo presioar clic al boton visitar del card del grupo de investigacion.', 'Juan Pablo Murcia \r\nBrayane Esneider Alvarez Valencia ', NULL, '../../Content/assetsLogin/img/bg0.jpg', 'Software para la vizualizacion de grupos de investigación de la Universidad de la Amazonia');
/*!40000 ALTER TABLE `pagina_propia` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.pagina_web
DROP TABLE IF EXISTS `pagina_web`;
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(255) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  `estado_pag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `plantilla` (`id_plantilla`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.pagina_web: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
INSERT INTO `pagina_web` (`id_pagina`, `url_pagina`, `fk_id_plantilla`, `grupo_invest_id_grupo_invest`, `estado_pag`) VALUES
	(1, NULL, 1, 111, 1);
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.plantilla
DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.plantilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
INSERT INTO `plantilla` (`id_plantilla`, `nom_plantilla`, `url_imagen`) VALUES
	(1, 'Heli', NULL);
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.programa
DROP TABLE IF EXISTS `programa`;
CREATE TABLE IF NOT EXISTS `programa` (
  `id_programa` int(11) NOT NULL,
  `nom_programa` varchar(45) DEFAULT NULL,
  `fk_id_facultad` int(11) NOT NULL,
  PRIMARY KEY (`id_programa`),
  KEY `fk_Programa_facultad1_idx` (`fk_id_facultad`),
  CONSTRAINT `FK_programa_facultad` FOREIGN KEY (`fk_id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.programa: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` (`id_programa`, `nom_programa`, `fk_id_facultad`) VALUES
	(1, 'Ingenieria de Sistemas', 1),
	(2, 'Ingenieria de Agrocologica', 1),
	(3, 'Ingenieria de Alimento', 1),
	(4, 'Quimica', 2);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.proyecto
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_produc` int(11) NOT NULL,
  `nom_proyecto` varchar(600) DEFAULT NULL,
  `fecha_de_proyecto` date DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  `fk_id_grupo_invest` int(11) DEFAULT NULL,
  `proyecto_descrip` varchar(600) DEFAULT NULL,
  `url_image_proyec` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id_produc`),
  KEY `fk_producto_grupo_invest1_idx` (`fk_id_grupo_invest`),
  CONSTRAINT `FK_proyecto_grupo_invest` FOREIGN KEY (`fk_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.proyecto: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` (`id_produc`, `nom_proyecto`, `fecha_de_proyecto`, `estado_proyecto`, `fk_id_grupo_invest`, `proyecto_descrip`, `url_image_proyec`) VALUES
	(20, 'SIGEPI', NULL, 0, 111, NULL, NULL),
	(21, 'RQSOFT', NULL, 0, 111, NULL, NULL),
	(22, 'Estacion Meteriologica', NULL, 1, 111, NULL, NULL),
	(23, 'Prototipo De Un Sistema Para La Gestión De Los Procesos Electorales De La Universidad De La Amazonia', NULL, 0, 111, NULL, NULL),
	(24, 'Semillero De Programacion', NULL, 0, 111, NULL, NULL),
	(25, 'MDD', NULL, 0, 111, NULL, NULL),
	(26, 'Visibilidad', NULL, 1, 111, NULL, NULL),
	(27, 'Mercado Campesino', NULL, 0, 111, NULL, NULL),
	(28, 'Contador de alevinos ', NULL, 1, 111, NULL, NULL),
	(29, 'Teletrabajo', NULL, 1, 111, NULL, NULL),
	(40, 'Proyecto de un semillero', NULL, 0, 121, NULL, NULL);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.proyecto_has_usuario
DROP TABLE IF EXISTS `proyecto_has_usuario`;
CREATE TABLE IF NOT EXISTS `proyecto_has_usuario` (
  `pkf_id_proyecto` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkf_id_proyecto`,`pkf_id_usuario`),
  KEY `FK_proyecto_has_usuario_usuario` (`pkf_id_usuario`),
  CONSTRAINT `FK_proyecto_has_usuario_proyecto` FOREIGN KEY (`pkf_id_proyecto`) REFERENCES `proyecto` (`id_produc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.proyecto_has_usuario: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto_has_usuario` DISABLE KEYS */;
INSERT INTO `proyecto_has_usuario` (`pkf_id_proyecto`, `pkf_id_usuario`, `fecha`, `estado`) VALUES
	(20, 11, '2019-03-11', 1),
	(20, 13, '2019-03-11', 0),
	(21, 13, '2019-03-11', 0),
	(22, 11, '2019-03-11', 1),
	(25, 14, '2019-03-11', 1),
	(26, 14, '2019-03-11', 1),
	(27, 24, '2019-03-11', 1),
	(28, 24, '2019-03-11', 1),
	(29, 24, '2019-03-11', 1);
/*!40000 ALTER TABLE `proyecto_has_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.soporte
DROP TABLE IF EXISTS `soporte`;
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(255) DEFAULT NULL,
  `titulo_soporte` varchar(255) DEFAULT NULL,
  `descrip_soperte` varchar(255) DEFAULT NULL,
  `estado_soporte` tinytext,
  `Fecha_publica` date DEFAULT NULL,
  `Categoria_id_Categoria` int(11) DEFAULT NULL,
  `fk_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`id_soporte`),
  KEY `fk_soporte_Categoria1_idx` (`Categoria_id_Categoria`),
  KEY `FK_soporte_proyecto` (`fk_proyecto`),
  CONSTRAINT `FK_soporte_proyecto` FOREIGN KEY (`fk_proyecto`) REFERENCES `proyecto` (`id_produc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_soporte_Categoria1` FOREIGN KEY (`Categoria_id_Categoria`) REFERENCES `categoria` (`id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.soporte: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
INSERT INTO `soporte` (`id_soporte`, `url_imagene`, `titulo_soporte`, `descrip_soperte`, `estado_soporte`, `Fecha_publica`, `Categoria_id_Categoria`, `fk_proyecto`) VALUES
	(1, '~/Content/Soporte/WhatsApp Image 2019-03-08 at 6.49.40 PM (1).jpeg', 'Actualizacion de la base datas #Teletrabajo', 'Es una base de datos recursiva bien chida ', '1', '2019-03-11', NULL, 29),
	(2, '~/Content/Soporte/enzimas-825x510.jpg', '', 'sdsadsadsa', '1', '2019-03-11', NULL, 28);
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.tipo_has_menu
DROP TABLE IF EXISTS `tipo_has_menu`;
CREATE TABLE IF NOT EXISTS `tipo_has_menu` (
  `pk_fk_tipo_usuario` int(11) NOT NULL,
  `pk_fk_menu` int(11) NOT NULL,
  `fecha_menu` date DEFAULT NULL,
  PRIMARY KEY (`pk_fk_tipo_usuario`,`pk_fk_menu`),
  KEY `fk_tipo_usuario_has_Menu_Menu1_idx` (`pk_fk_menu`),
  KEY `fk_tipo_usuario_has_Menu_tipo_usuario1_idx` (`pk_fk_tipo_usuario`),
  CONSTRAINT `fk_tipo_usuario_has_Menu_Menu1` FOREIGN KEY (`pk_fk_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_usuario_has_Menu_tipo_usuario1` FOREIGN KEY (`pk_fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.tipo_has_menu: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_has_menu` DISABLE KEYS */;
INSERT INTO `tipo_has_menu` (`pk_fk_tipo_usuario`, `pk_fk_menu`, `fecha_menu`) VALUES
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
	(5, 20, '2019-02-05');
/*!40000 ALTER TABLE `tipo_has_menu` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.tipo_usuario
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.tipo_usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` (`id_rol`, `nom_rol`) VALUES
	(1, 'Lider'),
	(2, 'Miembro'),
	(4, 'administrador'),
	(5, 'Super aministrador');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla viewgroup3.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  `email_usaurio` varchar(45) DEFAULT NULL,
  `fk_programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_usuario_programa` (`fk_programa`),
  CONSTRAINT `FK_usuario_programa` FOREIGN KEY (`fk_programa`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla viewgroup3.usuario: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nom_usuario`, `url_foto_usuario`, `email_usaurio`, `fk_programa`) VALUES
	(10, 'heriberto', '../imagenes/imagen_perfil/1 - copia (1).png', 'h.ing@udla.edu.co', 1),
	(11, 'Juan Camilo', '../imagenes/imagen_perfil/kamilo.jpg', 'a.leal@udla.edu.co', 1),
	(12, 'carlos', '../imagenes/imagen_perfil/carlos.jpg', 'c.carlos@udla.edu.co', 1),
	(13, 'Johan', '../imagenes/imagen_perfil/johan.jpg', 'j.johant@udla.edu.co', 1),
	(14, 'brayan', '../imagenes/imagen_perfil/yisus.jpg', 'b.yisus@udla.edu.co', 1),
	(24, 'angela', '../imagenes/imagen_perfil/anyela.jpg', 'a.cuellar@udla.edu.co', 4),
	(555, 'jp', NULL, NULL, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para vista viewgroup3.view_pagina_propia
DROP VIEW IF EXISTS `view_pagina_propia`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_pagina_propia` (
	`Nom_grupo` VARCHAR(800) NULL COLLATE 'utf8_general_ci',
	`Contenido` VARCHAR(800) NULL COLLATE 'utf8_general_ci',
	`Creadores` VARCHAR(800) NULL COLLATE 'utf8_general_ci',
	`Acredicimiento` VARCHAR(800) NULL COLLATE 'utf8_general_ci',
	`Logo` VARCHAR(800) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista viewgroup3.view_pag_grupo
DROP VIEW IF EXISTS `view_pag_grupo`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_pag_grupo` (
	`id_pagina` INT(11) NOT NULL,
	`fk_id_plantilla` INT(11) NOT NULL,
	`id_grupo` INT(11) NOT NULL,
	`nom_grupo` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`url_logo_grupo` VARCHAR(258) NULL COLLATE 'utf8_general_ci',
	`siglas_signif_grupo` VARCHAR(800) NULL COLLATE 'utf8_general_ci',
	`id_grupo_invest` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento viewgroup3.Consultar_noticia
DROP PROCEDURE IF EXISTS `Consultar_noticia`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar_noticia`(
	IN `id_noticia` INT


)
BEGIN

select soporte.url_imagene,soporte.titulo_soporte,soporte.descrip_soperte,soporte.Fecha_publica, proyecto.nom_proyecto, soporte.id_soporte,proyecto.id_produc from soporte inner join
proyecto on soporte.fk_proyecto= proyecto.id_produc
where soporte.id_soporte=id_noticia;


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.Consultar__Proyecto
DROP PROCEDURE IF EXISTS `Consultar__Proyecto`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar__Proyecto`(
	IN `idProyecto` INT
)
BEGIN

select proyecto.nom_proyecto,proyecto.url_image_proyec, proyecto.proyecto_descrip
from proyecto 
where proyecto.id_produc=idProyecto;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consultar_product_semillero
DROP PROCEDURE IF EXISTS `proced_consultar_product_semillero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consultar_product_semillero`(
	IN `pk_grupo` INT














)
    COMMENT 'Ya no se utiliza'
BEGIN

select producto.id_produc, producto.nom_producto, "producto" as tipo  from producto
INNER JOIN grupo_invest AS grupo ON grupo.id_grupo_invest=producto.fk_id_grupo_invest

where grupo.id_grupo_invest=pk_grupo
AND
producto.publico_produc<>0
union ALL
SELECT semillero.id_semillero, semillero.nom_semillero, "semillero" as tipo  

from grupo_invest
inner join semillero 
on semillero.fk_id_grupo= grupo_invest.id_grupo_invest 
where 

grupo_invest.id_grupo_invest=pk_grupo;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_grupo
DROP PROCEDURE IF EXISTS `proced_consul_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo`(
	IN `id_grupo` INT

)
BEGIN

select grupo.nom_grupo, grupo.email_grupo, grupo.telefo_grupo, grupo.direcc_grupo,
grupo.siglas_signif_grupo, grupo.objetivo_grupo, grupo.mision_grupo, grupo.vision_grupo,
grupo.justif_grupo,grupo.quien_somos_grupo,programa.nom_programa,grupo.url_logo_grupo from grupo_invest as grupo
inner join programa on programa.id_programa = grupo.fk_id_Programa
where grupo.id_grupo_invest=id_grupo 
order by grupo.id_grupo_invest asc;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_grupo_id
DROP PROCEDURE IF EXISTS `proced_consul_grupo_id`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo_id`()
    COMMENT 'tampoco sirve'
BEGIN

select grupo_invest.id_grupo_invest FROM grupo_invest
order by grupo_invest.id_grupo_invest  desc 
LIMIT 1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_menu_view
DROP PROCEDURE IF EXISTS `proced_consul_menu_view`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_menu_view`(
	IN `id_rol` INT






)
BEGIN

SELECT menu.id_menu, menu.nom_menu, menu.url_pagina,if(menu.id_menu_padre is null, 'Nulo', menu.id_menu_padre)
as 'padre', menu.icono FROM menu
RIGHT JOIN tipo_has_menu ON tipo_has_menu.pk_fk_menu=menu.id_menu
RIGHT JOIN tipo_usuario ON tipo_usuario.id_rol = tipo_has_menu.pk_fk_tipo_usuario
WHERE tipo_usuario.id_rol = id_rol and menu.estado<>0
;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_semillero
DROP PROCEDURE IF EXISTS `proced_consul_semillero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_semillero`(
	IN `pk_grupo` INT


)
    COMMENT 'llano es necesario'
BEGIN

select semillero.id_grupo_invest , 
semillero.nom_grupo,
semillero.url_logo_grupo,
semillero.siglas_signif_grupo,
semillero.objetivo_grupo,
semillero.mision_grupo,
semillero.vision_grupo, 
semillero.justif_grupo, 
semillero.quien_somos_grupo
from grupo_invest as grupo
inner join grupo_invest as semillero on grupo.id_grupo_invest=semillero.fk_grupo_semi

where grupo.id_grupo_invest = pk_grupo AND semillero.estado_grupo=1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_soport_pag_not
DROP PROCEDURE IF EXISTS `proced_consul_soport_pag_not`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_soport_pag_not`(
	IN `id_grupo` INT








)
BEGIN

select soporte.url_imagene,soporte.titulo_soporte,soporte.descrip_soperte,soporte.Fecha_publica, proyecto.nom_proyecto, soporte.id_soporte FROM soporte
inner JOIN proyecto on proyecto.id_produc= soporte.fk_proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest
where soporte.estado_soporte=1 and grupo_invest.id_grupo_invest=id_grupo
order  by soporte.Fecha_publica DESC
LIMIT 10;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_user
DROP PROCEDURE IF EXISTS `proced_consul_user`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user`(
	IN `id_user` INT










)
BEGIN

  

 

 if ( (select COUNT(*) from usuario usu
 where id_user= usu.id_usuario) =0) then
	select "no wey" as mensaje, "nada" as tipo, "nada" as idtipo;
else 
 	select "siii wey si existe :D" as mensaje, tipo_usuario.nom_rol as tipo, tipo_usuario.id_rol as idtipo
	 from usuario 
	 inner join grupo_invest_has_usuario on grupo_invest_has_usuario.pkf_id_usuario = usuario.id_usuario
	 inner join tipo_usuario on tipo_usuario.id_rol = grupo_invest_has_usuario.fk_tipo_usuario
	 where usuario.id_usuario=id_user ;
 	
 	end if;
 	


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_user_datos
DROP PROCEDURE IF EXISTS `proced_consul_user_datos`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user_datos`(
	IN `id_user` INT


)
BEGIN

SELECT usuario.id_usuario,  usuario.nom_usuario,usuario.url_foto_usuario, programa.nom_programa  from usuario
inner join programa on programa.id_programa = usuario.fk_programa
WHERE usuario.id_usuario=id_user;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_grupo
DROP PROCEDURE IF EXISTS `proced_create_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_grupo`(
	IN `id_grupo` INT,
	IN `nom_grupo` VARCHAR(500),
	IN `email_grupo` VARCHAR(500),
	IN `telefo_grupo` VARCHAR(500),
	IN `direcc_grupo` VARCHAR(500)








,
	IN `url_logo_grupo` VARCHAR(500),
	IN `siglas` VARCHAR(600),
	IN `objetivo` VARCHAR(800),
	IN `mision` VARCHAR(600),
	IN `vision` VARCHAR(600),
	IN `justif` VARCHAR(600),
	IN `quien` VARCHAR(600),
	IN `fk_grupo` INT,
	IN `fk_programa` VARCHAR(50)






)
    COMMENT 'registrar toda la inforamcion del grupo.....y semillleros'
BEGIN



declare idprograma int;

set idprograma = (select programa.id_programa from programa where programa.nom_programa=fk_programa);

INSERT INTO grupo_invest (`id_grupo_invest`, `nom_grupo`, `email_grupo`, `telefo_grupo`, `direcc_grupo`, `url_logo_grupo`, `estado_grupo`, `siglas_signif_grupo`, `objetivo_grupo`, `mision_grupo`, `vision_grupo`, `justif_grupo`, `quien_somos_grupo`, `fk_grupo_semi`, `fk_id_Programa`) VALUES
	(id_grupo,nom_grupo, email_grupo,telefo_grupo, direcc_grupo, url_logo_grupo, 1, siglas, objetivo, mision, vision, justif, quien, fk_grupo, idprograma);


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_pagina_web
DROP PROCEDURE IF EXISTS `proced_create_pagina_web`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_pagina_web`(
	IN `fk_grupo` INT,
	IN `fk_plantilla` INT




)
BEGIN

  	
   Declare num int;    
  

SET num =(select IFNULL(MAX(pagina_web.id_pagina),0) FROM pagina_web);

   

  
   insert into pagina_web VALUES(num+1,null,fk_plantilla,fk_grupo,1);
   
   
  
	



END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_semillero
DROP PROCEDURE IF EXISTS `proced_create_semillero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_semillero`(
	IN `id_semillero` INT,
	IN `nom_grupo1` VARCHAR(500),
	IN `url_logo_grupo` VARCHAR(500),
	IN `fk_grupo` VARCHAR(500),
	IN `estado_semillero` INT
)
BEGIN

DECLARE num int;

DECLARE id_grupo int;


  
  SET num =(select IFNULL(MAX(grupo_invest.id_grupo_invest),0) FROM grupo_invest);
  	

set id_grupo=(select grupo_invest.id_grupo_invest from grupo_invest 
					ORDER by grupo_invest.id_grupo_invest desc
					LIMIT 1);
  
   insert into grupo_invest VALUES((num+1),nom_grupo1,url_logo_grupo,1,id_grupo);


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_soport_not
DROP PROCEDURE IF EXISTS `proced_create_soport_not`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_soport_not`(
	IN `pk_fk_produc` INT,
	IN `url_imagen` VARCHAR(500),
	IN `titulo_soporte` VARCHAR(500),
	IN `descrip_soporte` VARCHAR(500)








)
BEGIN
declare num int;

SET num =(select IFNULL(MAX(soporte.id_soporte),0) FROM soporte);

insert into soporte VALUES((num+1),url_imagen,titulo_soporte,
descrip_soporte,1,(select CURDATE()),null,pk_fk_produc);


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_usuario
DROP PROCEDURE IF EXISTS `proced_create_usuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_create_usuario`(
	IN `id_user` INT,
	IN `nombre_user` VARCHAR(50),
	IN `url_foto_user` VARCHAR(50)
,
	IN `email` VARCHAR(50)
,
	IN `fk_programa` VARCHAR(50)

)
BEGIN

#declare num int;
declare idprograma int;
#SET num =(select IFNULL(MAX(usuario.id_usuario),0) FROM usuario)+1;
set idprograma = (select programa.id_programa from programa where programa.nom_programa=fk_programa);

 insert into usuario VALUES(id_user,nombre_user,url_foto_user,email,idprograma);
   
  
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_delete_soport
DROP PROCEDURE IF EXISTS `proced_delete_soport`;
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

-- Volcando estructura para procedimiento viewgroup3.proced_registra_produc
DROP PROCEDURE IF EXISTS `proced_registra_produc`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_registra_produc`(
	IN `nom_producto` VARCHAR(500),
	IN `fecha_de_produc` DATE,
	IN `estado_produc` TINYINT,
	IN `publico_produc` TINYINT




)
    COMMENT 'se registrara los proyectos que se quiere publicar, y los semilleros publicos'
BEGIN
declare id_grupo int;
DECLARE num int;


SET num =(select IFNULL(MAX(producto.id_produc),0) FROM producto);

set id_grupo=(select grupo_invest.fk_id_semillero from grupo_invest 
					ORDER by grupo_invest.id_grupo_invest desc
					LIMIT 1);

insert into producto VALUES((num+1),nom_producto,fecha_de_produc,estado_produc,publico_produc,id_grupo);

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_report_Noticias
DROP PROCEDURE IF EXISTS `proced_report_Noticias`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_report_Noticias`(
	IN `id_grupo` INT

)
BEGIN
select 
soporte.id_soporte as Codigo ,
soporte.titulo_soporte as Titulo,
soporte.descrip_soperte as Detalle,
soporte.Fecha_publica as Fecha,
 proyecto.nom_proyecto as Vinculado

FROM soporte
inner JOIN proyecto on proyecto.id_produc= soporte.fk_proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest
where soporte.estado_soporte=1 and grupo_invest.id_grupo_invest=id_grupo
order  by soporte.Fecha_publica DESC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_update_grupo
DROP PROCEDURE IF EXISTS `proced_update_grupo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_update_grupo`(
	IN `id_grupo` INT,
	IN `email` VARCHAR(50),
	IN `telefo` VARCHAR(50),
	IN `direcc` VARCHAR(50),
	IN `logo` VARCHAR(500),
	IN `sigla` VARCHAR(500),
	IN `objetivo` VARCHAR(600),
	IN `mision` VARCHAR(600),
	IN `vision` VARCHAR(600),
	IN `justif` VARCHAR(600),
	IN `quien` VARCHAR(600)





)
BEGIN
update grupo_invest as g
set g.email_grupo=(if(email = '', g.email_grupo, email)), 
g.telefo_grupo=(if(telefo = '', g.telefo_grupo, telefo)),
g.direcc_grupo=(if(direcc = '', g.direcc_grupo, direcc)),

 
  g.siglas_signif_grupo= (if(sigla = '', g.siglas_signif_grupo,sigla)),
 g.objetivo_grupo=(if(objetivo = '', g.objetivo_grupo,objetivo)),
g.mision_grupo=(if(mision = '', g.mision_grupo,mision)),
 g.vision_grupo=(if(vision = '', g.vision_grupo,vision)),
 g.justif_grupo=(if(justif = '', g.justif_grupo,justif)), 
 g.quien_somos_grupo=(if(quien = '', g.quien_somos_grupo,quien))
where g.id_grupo_invest=id_grupo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_update_proyecto
DROP PROCEDURE IF EXISTS `proced_update_proyecto`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_update_proyecto`(
	IN `id_proyec` INT,
	IN `descrip` VARCHAR(600),
	IN `imagen` VARCHAR(500)
)
    COMMENT 'se actualiza la descripcion y una imagen '
BEGIN
update proyecto as p
set p.proyecto_descrip = descrip, p.url_image_proyec = imagen
where p.id_produc = id_proyec;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_update_soport
DROP PROCEDURE IF EXISTS `proced_update_soport`;
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
set soporte.url_imagene=upd_imagen, soporte.fk_proyecto=upd_produc,
soporte.titulo_soporte=upd_titulo,soporte.descrip_soperte=upd_descri
where soporte.id_soporte=id_soport;



END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_view_consul_paginas
DROP PROCEDURE IF EXISTS `proced_view_consul_paginas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_view_consul_paginas`()
BEGIN

SELECT * from view_pag_grupo;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proyec_semi_trabajo_consul
DROP PROCEDURE IF EXISTS `proyec_semi_trabajo_consul`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proyec_semi_trabajo_consul`(
	IN `grupo_perte` INT,
	IN `id_user` INT




)
    COMMENT 'para ser modificadas '
BEGIN
SELECT  proyecto.id_produc as identificador,proyecto.nom_proyecto as trabajo,"no"as cargo,
if(proyecto_has_usuario.estado = 1, 'true' , 'false')  as estado
FROM usuario
INNER JOIN proyecto_has_usuario ON proyecto_has_usuario.pkf_id_usuario= usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_produc = proyecto_has_usuario.pkf_id_proyecto

INNER JOIN grupo_invest grupo ON grupo.id_grupo_invest=proyecto.fk_id_grupo_invest
WHERE grupo.id_grupo_invest=grupo_perte AND usuario.id_usuario=id_user
UNION
SELECT  grupo.id_grupo_invest as identificador ,grupo.nom_grupo as trabajo,
"semillero" as cargo, 
 if(integra.estado = 1, 'true' , 'false') as estado
 FROM usuario
inner join grupo_invest_has_usuario integra on integra.pkf_id_usuario=usuario.id_usuario
inner join grupo_invest as grupo on grupo.id_grupo_invest=integra.pkf_id_grupo_invest
where grupo.fk_grupo_semi=grupo_perte AND usuario.id_usuario=id_user;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_consul_act_proced
DROP PROCEDURE IF EXISTS `proye_consul_act_proced`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_consul_act_proced`(
	IN `pk_grupo` INT








)
BEGIN

select proyecto.id_produc,proyecto.nom_proyecto,proyecto.estado_proyecto ,
proyecto.proyecto_descrip, proyecto.url_image_proyec , proyecto.fecha_de_proyecto
FROM proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest

WHERE proyecto.estado_proyecto=1 and (proyecto.fk_id_grupo_invest= pk_grupo or grupo_invest.fk_grupo_semi =pk_grupo )
order by proyecto.fecha_de_proyecto ASC
;

/*
select 
proyecto. id_proyecto,
proyecto.nom_proyecto,
proyecto.estado_proyecto,
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
"semillero" as tipo,
semillero.id_grupo as semi

from proyecto
inner join proyecto_has_grupo_inve_semillero as proyec on proyecto.id_proyecto=proyec.proyecto_id_proyecto
INNER JOIN  grupo_inve_semillero as semillero	ON semillero.id_grupo=proyec.grupo_inve_semillero_id_grupo


where 
 

semillero.grupo_inve_semillero_id_grupo=id_grupo
 and
semillero.grupo_inve_semillero_id_grupo <> semillero.id_grupo ; 
	*/


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_consul_act_proced_pag
DROP PROCEDURE IF EXISTS `proye_consul_act_proced_pag`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_consul_act_proced_pag`(
	IN `pk_grupo` INT

)
BEGIN
select proyecto.id_produc,proyecto.nom_proyecto,proyecto.estado_proyecto ,
proyecto.proyecto_descrip, proyecto.url_image_proyec , proyecto.fecha_de_proyecto
FROM proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest

WHERE proyecto.estado_proyecto=1 and (proyecto.fk_id_grupo_invest= pk_grupo or grupo_invest.fk_grupo_semi =pk_grupo )
order by proyecto.fecha_de_proyecto ASC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_consul_int_proced
DROP PROCEDURE IF EXISTS `proye_consul_int_proced`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_consul_int_proced`(
	IN `pk_grupo` INT



)
BEGIN

select proyecto.id_produc,proyecto.nom_proyecto,proyecto.estado_proyecto,
proyecto.proyecto_descrip, proyecto.url_image_proyec  , proyecto.fecha_de_proyecto
FROM proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest

WHERE proyecto.estado_proyecto=0 and (proyecto.fk_id_grupo_invest= pk_grupo or grupo_invest.fk_grupo_semi =pk_grupo );



END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_crearte_proced
DROP PROCEDURE IF EXISTS `proye_crearte_proced`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_crearte_proced`(
	IN `id_proyec` INT,
	IN `nom_proyec` VARCHAR(500),
	IN `estado_proyec` TINYINT,
	IN `fk_grupo` INT

,
	IN `fecha` DATETIME


)
BEGIN

insert into proyecto (proyecto.id_produc,proyecto.fecha_de_proyecto,proyecto.nom_proyecto, proyecto.estado_proyecto, proyecto.fk_id_grupo_invest)
values(id_proyec,fecha,nom_proyec,estado_proyec,fk_grupo);

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_inser_enlases_usuario
DROP PROCEDURE IF EXISTS `proye_inser_enlases_usuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_inser_enlases_usuario`(
	IN `tipo` VARCHAR(50),
	IN `id_user` INT,
	IN `identificador` INT








)
BEGIN



IF(tipo = "no") then
 insert into proyecto_has_usuario values(identificador,id_user,CURDATE(),1);
else 
	
	insert into grupo_invest_has_usuario values(identificador,id_user,Curdate(),(SELECT (tipo *1)),1);
end if;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.p_consul_miebros_total
DROP PROCEDURE IF EXISTS `p_consul_miebros_total`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_consul_miebros_total`(
	IN `pk_grupo` INT
)
BEGIN

SELECT  usuario.id_usuario id , usuario.nom_usuario  nom,usuario.url_foto_usuario foto, usuario.email_usaurio email, programa.nom_programa progra
FROM grupo_invest 
INNER JOIN grupo_invest AS semillero ON grupo_invest.id_grupo_invest=semillero.fk_grupo_semi
inner join grupo_invest_has_usuario integra on integra.pkf_id_grupo_invest = semillero.id_grupo_invest
inner join usuario on usuario.id_usuario = integra.pkf_id_usuario
inner join programa on programa.id_programa=usuario.fk_programa
WHERE 
(semillero.id_grupo_invest = pk_grupo or
grupo_invest.id_grupo_invest=pk_grupo)

union

SELECT  usuario.id_usuario id ,usuario.nom_usuario nom , usuario.url_foto_usuario foto, usuario.email_usaurio email, programa.nom_programa progra
FROM grupo_invest 
INNER JOIN grupo_invest AS semillero ON grupo_invest.id_grupo_invest=semillero.fk_grupo_semi
inner join proyecto on proyecto.fk_id_grupo_invest=semillero.id_grupo_invest
inner join proyecto_has_usuario has_p on has_p.pkf_id_proyecto = proyecto.id_produc
inner join usuario on usuario.id_usuario = has_p.pkf_id_usuario
inner join programa on programa.id_programa = usuario.fk_programa
where (semillero.fk_grupo_semi =pk_grupo OR
grupo_invest.id_grupo_invest = pk_grupo) ;
-- 


END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.p_consul_miembro_pag
DROP PROCEDURE IF EXISTS `p_consul_miembro_pag`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_consul_miembro_pag`(
	IN `pk_grupo` INT






)
    COMMENT 'sirve para mostrar en la pagina creada todos los mienbros cuando son activos en los trabajos'
BEGIN

#CONCAT("SQL ", "Tutorial ", "is ", "fun!")

SELECT  usuario.id_usuario id , usuario.nom_usuario  nom,CONCAT("../",usuario.url_foto_usuario)  foto, usuario.email_usaurio email, programa.nom_programa progra
FROM grupo_invest 
INNER JOIN grupo_invest AS semillero ON grupo_invest.id_grupo_invest=semillero.fk_grupo_semi
inner join grupo_invest_has_usuario integra on integra.pkf_id_grupo_invest = semillero.id_grupo_invest
inner join usuario on usuario.id_usuario = integra.pkf_id_usuario
inner join programa on programa.id_programa=usuario.fk_programa
WHERE 
(semillero.id_grupo_invest = pk_grupo or
grupo_invest.id_grupo_invest=pk_grupo) and integra.estado =1

union

SELECT  usuario.id_usuario id ,usuario.nom_usuario nom , CONCAT("../",usuario.url_foto_usuario)  foto, usuario.email_usaurio email, programa.nom_programa progra
FROM grupo_invest 
INNER JOIN grupo_invest AS semillero ON grupo_invest.id_grupo_invest=semillero.fk_grupo_semi
inner join proyecto on proyecto.fk_id_grupo_invest=semillero.id_grupo_invest
inner join proyecto_has_usuario has_p on has_p.pkf_id_proyecto = proyecto.id_produc
inner join usuario on usuario.id_usuario = has_p.pkf_id_usuario
inner join programa on programa.id_programa = usuario.fk_programa
where (semillero.fk_grupo_semi =pk_grupo OR
grupo_invest.id_grupo_invest = pk_grupo) and has_p.estado=1;
-- 





END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.Reporte_General
DROP PROCEDURE IF EXISTS `Reporte_General`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reporte_General`()
BEGIN
select 
g.nom_grupo as Grupo,

proyecto.nom_proyecto as Vinculado,
soporte.id_soporte as Codigo ,
soporte.titulo_soporte as Noticia,
soporte.descrip_soperte as Detalle,
soporte.Fecha_publica as Fecha


FROM grupo_invest g

inner join proyecto on proyecto.fk_id_grupo_invest=g.id_grupo_invest

inner JOIN soporte on proyecto.id_produc= soporte.fk_proyecto

where soporte.estado_soporte=1 
order  by soporte.Fecha_publica DESC;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.update_proye_enlases_usuario
DROP PROCEDURE IF EXISTS `update_proye_enlases_usuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_proye_enlases_usuario`(
	IN `id_user` INT,
	IN `estado` VARCHAR(50),
	IN `tipo_Semi_Proye` VARCHAR(50),
	IN `identificador` INT


)
BEGIN


IF(tipo_Semi_Proye = "no") then
	UPDATE proyecto_has_usuario as p_has_u
	set p_has_u.estado= ( if(estado = 'true', 1, 0))
	where p_has_u.pkf_id_proyecto=identificador and p_has_u.pkf_id_usuario=id_user;
 
else 
	UPDATE grupo_invest_has_usuario as integra
	set integra.estado=( if(estado = 'true', 1, 0))
	where integra.pkf_id_grupo_invest=identificador and integra.pkf_id_usuario=id_user;

end if;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.validar_pagina
DROP PROCEDURE IF EXISTS `validar_pagina`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `validar_pagina`(
	IN `id_grupo` INT


)
BEGIN

if ( (select COUNT(*) from pagina_web p
 where id_grupo= p.grupo_invest_id_grupo_invest and p.estado_pag=1) =0 )  then
	select "no wey" as mensaje;
else 
 	select "siii wey si existe :D" as mensaje;
 	
 	end if;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.vista_apropia
DROP PROCEDURE IF EXISTS `vista_apropia`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `vista_apropia`()
BEGIN

select *  from view_pagina_propia;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.vista_pagina_propia
DROP PROCEDURE IF EXISTS `vista_pagina_propia`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `vista_pagina_propia`(
	IN `nada` INT

)
BEGIN
SELECT pagina_propia.Nom_grupo, pagina_propia.Contenido, pagina_propia.Creadores, pagina_propia.Acredicimiento,pagina_propia.Logo
from pagina_propia ;
END//
DELIMITER ;

-- Volcando estructura para disparador viewgroup3.soporte_before_insert
DROP TRIGGER IF EXISTS `soporte_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `soporte_before_insert` AFTER INSERT ON `soporte` FOR EACH ROW BEGIN

   Declare num int;    
declare nom_grupo varchar(60);

declare nom_proyecto varchar(60);
declare nom_noticia varchar(60);
declare descrip_not varchar(60);

set nom_grupo = (SELECT grupo_invest.nom_grupo FROM grupo_invest
	inner join proyecto on proyecto.fk_id_grupo_invest = grupo_invest.id_grupo_invest
	inner join soporte on soporte.fk_proyecto = proyecto.id_produc
	where soporte.id_soporte= NEW.id_soporte); 



set nom_noticia= NEW.titulo_soporte; 
	
set nom_proyecto = (SELECT proyecto.nom_proyecto from proyecto 	
		where proyecto.id_produc= NEW.fk_proyecto); 
	
set descrip_not= NEW.descrip_soperte; 
 



SET num =(select IFNULL(MAX(auditoria_noticia.id_auditoria_noti),0) FROM auditoria_noticia);

insert into auditoria_noticia values (num+1,nom_grupo ,nom_proyecto ,nom_noticia, descrip_not, "registro" ,(SELECT CURDATE() ) );


END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador viewgroup3.soporte_before_update
DROP TRIGGER IF EXISTS `soporte_before_update`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `soporte_before_update` BEFORE UPDATE ON `soporte` FOR EACH ROW BEGIN

   Declare num int;    
declare nom_grupo varchar(60);

declare nom_proyecto varchar(60);
declare nom_noticia varchar(60);
declare descrip_not varchar(60);

set nom_grupo = (SELECT grupo_invest.nom_grupo FROM grupo_invest
	inner join proyecto on proyecto.fk_id_grupo_invest = grupo_invest.id_grupo_invest
	inner join soporte on soporte.fk_proyecto = proyecto.id_produc
	where soporte.id_soporte= OLD.id_soporte); 



set nom_noticia= OLD.titulo_soporte; 
	
set nom_proyecto = (SELECT proyecto.nom_proyecto from proyecto 	
		where proyecto.id_produc= OLD.fk_proyecto); 
	
set descrip_not= OLD.descrip_soperte; 
 



SET num =(select IFNULL(MAX(auditoria_noticia.id_auditoria_noti),0) FROM auditoria_noticia);

insert into auditoria_noticia values (num+1,nom_grupo,nom_proyecto,nom_noticia, descrip_not," Cambio" ,(SELECT CURDATE() ) );

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador viewgroup3.tr_be_dele_pag
DROP TRIGGER IF EXISTS `tr_be_dele_pag`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_be_dele_pag` BEFORE UPDATE ON `pagina_web` FOR EACH ROW BEGIN


   Declare num int;    
declare nom_grupo varchar(60);

set nom_grupo = (SELECT grupo_invest.nom_grupo FROM grupo_invest where NEW.grupo_invest_id_grupo_invest = grupo_invest.id_grupo_invest); 

SET num =(select IFNULL(MAX(auditoria_pag.id_auditoria),0) FROM auditoria_pag);

insert into auditoria_pag values (num,nom_grupo, (SELECT CURDATE() ) ,"Eliminacion");



END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador viewgroup3.tr_be_ins_pag
DROP TRIGGER IF EXISTS `tr_be_ins_pag`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_be_ins_pag` BEFORE INSERT ON `pagina_web` FOR EACH ROW BEGIN


-- Declare num int;
-- declare nom_grupo varchar(60);
-- 
-- set nom_grupo = (SELECT grupo_invest.nom_grupo FROM grupo_invest where NEW.grupo_invest_id_grupo_invest = grupo_invest.id_grupo_invest);
-- 
-- SET num =(select IFNULL(MAX(auditoria_pag.id_auditoria),0) FROM auditoria_pag);
-- 
-- insert into auditoria_pag values (num+1,nom_grupo, (SELECT CURDATE() ) ,Creacion);

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para vista viewgroup3.view_pagina_propia
DROP VIEW IF EXISTS `view_pagina_propia`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_pagina_propia`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pagina_propia` AS select `pagina_propia`.`Nom_grupo` AS `Nom_grupo`,`pagina_propia`.`Contenido` AS `Contenido`,`pagina_propia`.`Creadores` AS `Creadores`,`pagina_propia`.`Acredicimiento` AS `Acredicimiento`,`pagina_propia`.`Logo` AS `Logo` from `pagina_propia`;

-- Volcando estructura para vista viewgroup3.view_pag_grupo
DROP VIEW IF EXISTS `view_pag_grupo`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_pag_grupo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pag_grupo` AS select `pagina_web`.`id_pagina` AS `id_pagina`,`pagina_web`.`fk_id_plantilla` AS `fk_id_plantilla`,`pagina_web`.`grupo_invest_id_grupo_invest` AS `id_grupo`,`grupo_invest`.`nom_grupo` AS `nom_grupo`,concat('../',`grupo_invest`.`url_logo_grupo`) AS `url_logo_grupo`,`grupo_invest`.`siglas_signif_grupo` AS `siglas_signif_grupo`,`grupo_invest`.`id_grupo_invest` AS `id_grupo_invest` from ((`plantilla` join `pagina_web` on((`pagina_web`.`fk_id_plantilla` = `plantilla`.`id_plantilla`))) join `grupo_invest` on((`pagina_web`.`grupo_invest_id_grupo_invest` = `grupo_invest`.`id_grupo_invest`))) where (`pagina_web`.`estado_pag` = 1) order by `pagina_web`.`id_pagina` desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

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

-- Volcando datos para la tabla viewgroup.actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.auditoria: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` (`id_auditoria`, `nom_grupo`, `nom_usurio`, `fecha_action`, `fk_tipo_action`) VALUES
	(1, 'fdsafjshakfkjhsdf', 'fdsaf', '2019-02-03', 2),
	(2, 'puto', 'hoal', '2019-02-03', 1),
	(3, 'puto', 'root@localhost', '2019-02-03', 1);
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.categoria: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id_categoria`, `nom_categoria`, `estado_categoria`) VALUES
	(1, 'Software', 1),
	(2, 'Extesión social', 1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.facultad: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` (`id_facultad`, `nom_facultad`) VALUES
	(1, 'Ingenieria'),
	(2, 'Licenciatura '),
	(3, 'Ciencias basicas');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.grupo_invest: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
INSERT INTO `grupo_invest` (`id_grupo_invest`, `nom_grupo`, `url_logo_grupo`, `email_grupo`, `telefo_grupo`, `direcc_grupo`, `estado_grupo`, `fk_id_programa`) VALUES
	(1, 'afdsfdsf', 'afdfdasdffad', 'afdfadf', 'asfdsdfadf', 'afdafdfa', 1, 1),
	(2, 'giie', 'jfkdsljafkl', 'kfjdsdslakjf', 'klfdjlkajsf', 'jfslkddjklasjfkl', 1, 1);
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.habilidades: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
INSERT INTO `habilidades` (`id_habilidades`, `nom_habilidades`, `estado_habilidades`) VALUES
	(1, 'Desarrollo web', 1);
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.informacion_integrantes_proyecto: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` DISABLE KEYS */;
INSERT INTO `informacion_integrantes_proyecto` (`pk_fk_id_produc`, `pk_fk_id_usuario`, `funcion_miembro`, `Descrip_miembro`) VALUES
	(2, 15, 'no hiso nada', 'algo');
/*!40000 ALTER TABLE `informacion_integrantes_proyecto` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.menu: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id_menu`, `nom_menu`, `id_menu_padre`, `url_pagina`, `icono`, `comentario`, `estado`) VALUES
	(1, 'Grupo', NULL, NULL, 'group', 'solo para lider', NULL),
	(2, 'Crear Pagina', NULL, 'CrearPagina.aspx', 'image', 'para creadores y miembro', 1),
	(3, 'Mi Pagina ', 2, NULL, 'image', NULL, 1),
	(4, 'Actualizar Pagina', 2, NULL, 'AP', NULL, NULL),
	(5, 'Eliminar Pagina', 2, NULL, 'EP', NULL, NULL),
	(6, 'Las Paginas', NULL, NULL, 'grid_on', 'las paginas de todos los grupos super admi', NULL),
	(7, 'Lista de Miembros', NULL, 'permisos.aspx', 'assignment_ind', NULL, 1),
	(8, 'Noticias', NULL, NULL, 'event_note', NULL, NULL),
	(9, 'Nueva Noticia', 8, 'NoticiaNueva.aspx', 'event_note', NULL, 1),
	(10, 'Ver Noticias', 8, 'NoticiaPublicada.aspx', 'event_note', NULL, 1),
	(11, 'Elinimar Noticia', 8, NULL, 'grid_on', NULL, NULL),
	(12, 'Actividades ', NULL, 'Actividades.aspx', 'date_range ', NULL, 1),
	(13, 'Ver Actividades', 12, NULL, 'VA', NULL, NULL),
	(14, 'Crear Actividad', 12, NULL, 'date_range ', NULL, 1),
	(15, 'Modificar Actividad', 12, NULL, 'grid_on', NULL, NULL),
	(16, 'Eliminar Actividad ', 12, NULL, 'grid_on', NULL, NULL),
	(17, 'Reporte', NULL, NULL, 'grid_on', 'reporte interno de los grupos', 1),
	(18, 'Grupos', NULL, NULL, 'grid_on', NULL, NULL),
	(19, 'Pagina', 2, NULL, 'grid_on', 'consulta pagina 1', NULL),
	(20, 'Reporte de grupos', NULL, NULL, 'grid_on', 'super administrador', NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.pagina_propia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_propia` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_propia` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.pagina_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.plantilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.producto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id_produc`, `nom_producto`, `fecha_de_produc`, `estado_produc`, `publico_produc`, `fk_id_grupo_invest`) VALUES
	(1, 'producto ', '2019-02-18', 1, 1, 1),
	(2, 'purphjb1', '2019-02-18', 1, 1, 2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.programa: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` (`id_programa`, `nom_programa`, `fk_id_facultad`) VALUES
	(1, 'Ingenieria de Sistema', 1),
	(2, 'Ingenieria Agrocologica', 1),
	(3, 'Ingenieria de Alimento', 1),
	(4, 'Quimica', 3);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.semillero: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `semillero` DISABLE KEYS */;
INSERT INTO `semillero` (`id_semillero`, `nom_semillero`, `url_logo_semi`, `estado_semillero`, `fk_id_grupo`) VALUES
	(1, 'dsaffda', 'sdfasfd', NULL, 1),
	(2, 'alecon', 'jfalkjfdj', NULL, 1),
	(3, 'sara', 'sar.', NULL, 2);
/*!40000 ALTER TABLE `semillero` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.soporte: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.tipo_action: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_action` DISABLE KEYS */;
INSERT INTO `tipo_action` (`id_tipo_action`, `nom_tipo_action`) VALUES
	(1, 'Creado'),
	(2, 'Modificado'),
	(3, 'Eliminado');
/*!40000 ALTER TABLE `tipo_action` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.tipo_has_menu: ~37 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_has_menu` DISABLE KEYS */;
INSERT INTO `tipo_has_menu` (`pk_fk_tipo_usuario`, `pk_fk_menu`, `fecha`) VALUES
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

-- Volcando datos para la tabla viewgroup.tipo_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_has_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.tipo_usuario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` (`id_user`, `nombre_user`) VALUES
	(1, 'Lider'),
	(2, 'miembro'),
	(5, 'Administrador');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.usuario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nom_usuario`, `url_foto_usuario`, `estado_usuario`) VALUES
	(12, 'carlos', '1 - copia (1).png', 1),
	(15, 'antonio', 'fdaf', 1),
	(21, 'fjskldajf', 'sadsad', 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup.usuario_has_semillero: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_has_semillero` DISABLE KEYS */;
INSERT INTO `usuario_has_semillero` (`fk_id_usuario`, `fk_id_semillero`, `fecha`) VALUES
	(12, 1, '2019-02-18'),
	(12, 2, '2019-02-18'),
	(12, 3, '2019-02-18');
/*!40000 ALTER TABLE `usuario_has_semillero` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

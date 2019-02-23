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

-- Volcando datos para la tabla viewgroup3.actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.auditoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.categoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.facultad: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` (`id_facultad`, `nom_facultad`) VALUES
	(1, 'Ingenieria'),
	(2, 'Ciencias Basicas');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.grupo_invest: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_invest` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.grupo_invest_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_invest_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_invest_has_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.habilidades: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.habilidades_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades_has_usuario` ENABLE KEYS */;

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
	(17, 'Reporte', NULL, NULL, 'grid_on', 'reporte interno de los grupos', '1'),
	(18, 'Grupos', NULL, NULL, 'grid_on', NULL, NULL),
	(19, 'Pagina', '2', NULL, 'grid_on', 'consulta pagina 1', NULL),
	(20, 'Reporte de grupos', NULL, NULL, 'grid_on', 'super administrador', NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.pagina_propia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_propia` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_propia` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.pagina_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagina_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagina_web` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.plantilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.programa: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` (`id_programa`, `nom_programa`, `fk_id_facultad`) VALUES
	(1, 'Ingenieria de Sistema', 1),
	(2, 'Ingenieria Agrocologica', 1),
	(3, 'Ingenieria de Alimento', 1),
	(4, 'Quimica', 2);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.proyecto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.proyecto_has_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proyecto_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_has_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.soporte: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.tipo_usuario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` (`id_rol`, `nom_rol`, `grupo_invest_has_usuario_grupo_invest_id_grupo_invest`, `grupo_invest_has_usuario_usuario_id_usuario`) VALUES
	(1, 'Lider', 0, 0),
	(2, 'miembro', 0, 0),
	(5, 'Administrador', 0, 0);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.tipo_usuario_has_menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario_has_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_usuario_has_menu` ENABLE KEYS */;

-- Volcando datos para la tabla viewgroup3.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nom_usuario`, `url_foto_usuario`, `email_usaurio`) VALUES
	(1, 'fdsafdsf', 'fsfasdf', 'asfsdvcvcxv'),
	(2, 'fsdfdf', 'sdafdf', 'gfdgfdg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

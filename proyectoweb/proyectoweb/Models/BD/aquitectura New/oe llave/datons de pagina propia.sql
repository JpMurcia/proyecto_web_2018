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
CREATE DATABASE IF NOT EXISTS `viewgroup3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup3`;

-- Volcando estructura para tabla viewgroup3.pagina_propia
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

INSERT INTO `pagina_propia` (`id_Pagina Propia`, `Nom_grupo`, `Contenido`, `Creadores`, `Acredicimiento`, `Logo`, `descrip`) VALUES
	(666, 'Viewgroup', 'ViewGroup es una plataforma para la gestiòn de grupos de investigaciòn en la universidad de la Amazonia, en esta plataforma los coordinadores de cada grupo pueden crear y publicar la pagina web del mismo, publicar noticias, crear actividades y demas ingresando unos pequeños datos, de esta manera cualquier persona puede buede visualizar la pagina web una vez este publicada en nuestra plataforma con solo presioar clic al boton visitar del card del grupo de investigacion.', 'Juan Pablo Murcia \r\nBrayane Esneider Alvarez Valencia ', NULL, '../../Content/assetsLogin/img/bg0.jpg', 'Software para la vizualizacion de grupos de investigación de la Universidad de la Amazonia');

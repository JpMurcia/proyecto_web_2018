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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.auditoria
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE IF NOT EXISTS `auditoria` (
  `id_auditoria` int(11) NOT NULL,
  `nom_grupo` varchar(45) DEFAULT NULL,
  `nom_usuario` varchar(45) DEFAULT NULL,
  `fecha_acciion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_Categoria` int(11) NOT NULL,
  `id_nom_categoria` varchar(45) DEFAULT NULL,
  `estado_categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.facultad
DROP TABLE IF EXISTS `facultad`;
CREATE TABLE IF NOT EXISTS `facultad` (
  `id_facultad` int(11) NOT NULL,
  `nom_facultad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.grupo_invest_has_usuario
DROP TABLE IF EXISTS `grupo_invest_has_usuario`;
CREATE TABLE IF NOT EXISTS `grupo_invest_has_usuario` (
  `pkf_id_grupo_invest` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `fk_tipo_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkf_id_grupo_invest`,`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_usuario1_idx` (`pkf_id_usuario`),
  KEY `fk_grupo_invest_has_usuario_grupo_invest1_idx` (`pkf_id_grupo_invest`),
  KEY `FK_grupo_invest_has_usuario_tipo_usuario` (`fk_tipo_usuario`),
  CONSTRAINT `FK_grupo_invest_has_usuario_grupo_invest` FOREIGN KEY (`pkf_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_tipo_usuario` FOREIGN KEY (`fk_tipo_usuario`) REFERENCES `tipo_usuario` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_invest_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.habilidades
DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id_Habilidades` int(11) NOT NULL,
  `nom_Habili` varchar(45) DEFAULT NULL,
  `estado_habili` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Habilidades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.pagina_propia
DROP TABLE IF EXISTS `pagina_propia`;
CREATE TABLE IF NOT EXISTS `pagina_propia` (
  `id_Pagina Propia` int(11) NOT NULL,
  `Nom_grupo` varchar(45) DEFAULT NULL,
  `Contenido` varchar(45) DEFAULT NULL,
  `Creadores` varchar(45) DEFAULT NULL,
  `Acredicimiento` varchar(45) DEFAULT NULL,
  `Logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Pagina Propia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.pagina_web
DROP TABLE IF EXISTS `pagina_web`;
CREATE TABLE IF NOT EXISTS `pagina_web` (
  `id_pagina` int(11) NOT NULL,
  `url_pagina` varchar(255) DEFAULT NULL,
  `fk_id_plantilla` int(11) NOT NULL,
  `grupo_invest_id_grupo_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `fk_pagina_web_plantilla1_idx` (`fk_id_plantilla`),
  KEY `fk_pagina_web_grupo_invest1_idx` (`grupo_invest_id_grupo_invest`),
  CONSTRAINT `fk_pagina_web_grupo_invest1` FOREIGN KEY (`grupo_invest_id_grupo_invest`) REFERENCES `grupo_invest` (`id_grupo_invest`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pagina_web_plantilla1` FOREIGN KEY (`fk_id_plantilla`) REFERENCES `plantilla` (`id_plantilla`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.plantilla
DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE IF NOT EXISTS `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nom_plantilla` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.proyecto_has_usuario
DROP TABLE IF EXISTS `proyecto_has_usuario`;
CREATE TABLE IF NOT EXISTS `proyecto_has_usuario` (
  `pkf_id_proyecto` int(11) NOT NULL,
  `pkf_id_usuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`pkf_id_proyecto`,`pkf_id_usuario`),
  KEY `FK_proyecto_has_usuario_usuario` (`pkf_id_usuario`),
  CONSTRAINT `FK_proyecto_has_usuario_proyecto` FOREIGN KEY (`pkf_id_proyecto`) REFERENCES `proyecto` (`id_produc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proyecto_has_usuario_usuario` FOREIGN KEY (`pkf_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.soporte
DROP TABLE IF EXISTS `soporte`;
CREATE TABLE IF NOT EXISTS `soporte` (
  `id_soporte` int(11) NOT NULL,
  `url_imagene` varchar(255) DEFAULT NULL,
  `titulo_soporte` varchar(255) DEFAULT NULL,
  `descrip_soperte` varchar(255) DEFAULT NULL,
  `estado_soporte` varchar(45) DEFAULT NULL,
  `Fecha_publica` date DEFAULT NULL,
  `Categoria_id_Categoria` int(11) NOT NULL,
  `fk_proyecto` int(11) NOT NULL,
  PRIMARY KEY (`id_soporte`),
  KEY `fk_soporte_Categoria1_idx` (`Categoria_id_Categoria`),
  KEY `FK_soporte_proyecto` (`fk_proyecto`),
  CONSTRAINT `FK_soporte_proyecto` FOREIGN KEY (`fk_proyecto`) REFERENCES `proyecto` (`id_produc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_soporte_Categoria1` FOREIGN KEY (`Categoria_id_Categoria`) REFERENCES `categoria` (`id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.tipo_usuario
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_rol` int(11) NOT NULL,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla viewgroup3.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(255) DEFAULT NULL,
  `url_foto_usuario` varchar(255) DEFAULT NULL,
  `email_usaurio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para procedimiento viewgroup3.proced_consultar_product_semillero
DROP PROCEDURE IF EXISTS `proced_consultar_product_semillero`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consultar_product_semillero`(
	IN `pk_grupo` INT













)
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

-- Volcando estructura para procedimiento viewgroup3.proced_consul_grupo_id
DROP PROCEDURE IF EXISTS `proced_consul_grupo_id`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo_id`()
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

-- Volcando estructura para procedimiento viewgroup3.proced_consul_semillero_XXX
DROP PROCEDURE IF EXISTS `proced_consul_semillero_XXX`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_semillero_XXX`(
	IN `pk_grupo` INT

)
    COMMENT 'llano es necesario'
BEGIN
SELECT semillero.id_grupo_invest, semillero.nom_grupo, semillero.url_logo_grupo   

from grupo_invest 
inner join grupo_invest  as semillero
on grupo_invest.id_grupo_invest=semillero.fk_id_semillero
where 
semillero.id_grupo_invest <> semillero.fk_id_semillero 
and
grupo_invest.id_grupo_invest=pk_grupo;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_soport_pag_not
DROP PROCEDURE IF EXISTS `proced_consul_soport_pag_not`;
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

-- Volcando estructura para procedimiento viewgroup3.proced_consul_user
DROP PROCEDURE IF EXISTS `proced_consul_user`;
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

-- Volcando estructura para procedimiento viewgroup3.proced_create_paginajhgjhgjhjg
DROP PROCEDURE IF EXISTS `proced_create_paginajhgjhgjhjg`;
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
  

SET num =(select IFNULL(MAX(grupo_invest.id_grupo_invest),0) FROM grupo_invest);

   

  
   insert into grupo_invest VALUES(num+1,nom_grupo1,url_logo_grupo,email_grupo,telefo_grupo,direcc_grupo,1);
   
   
  
	



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






,
	IN `fecha` DATE


)
BEGIN
declare num int;

SET num =(select IFNULL(MAX(soporte.id_soporte),0) FROM soporte);

insert into soporte VALUES((num+1),url_imagen,pk_fk_produc,titulo_soporte,descrip_soporte,1,fecha);


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
)
BEGIN

#declare num int;

#SET num =(select IFNULL(MAX(usuario.id_usuario),0) FROM usuario)+1;

 insert into usuario VALUES(id_user,nombre_user,url_foto_user,email);
   
  
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
set soporte.url_imagene=upd_imagen, soporte.pk_fk_id_produc=upd_produc,
soporte.titulo_soporte=upd_titulo,soporte.descrip_soporte=upd_descri
where soporte.id_soporte=id_soport;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proye_consul_act_proced
DROP PROCEDURE IF EXISTS `proye_consul_act_proced`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_consul_act_proced`(
	IN `pk_grupo` INT



)
BEGIN

select proyecto.id_produc,proyecto.nom_proyecto,proyecto.estado_proyecto FROM proyecto

WHERE proyecto.estado_proyecto=1 and proyecto.fk_id_grupo_invest= pk_grupo;
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

-- Volcando estructura para procedimiento viewgroup3.proye_consul_int_proced
DROP PROCEDURE IF EXISTS `proye_consul_int_proced`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proye_consul_int_proced`(
	IN `pk_grupo` INT

)
BEGIN

select proyecto.id_produc,proyecto.nom_proyecto,proyecto.estado_proyecto FROM proyecto

WHERE proyecto.estado_proyecto=0 and proyecto.fk_id_grupo_invest= pk_grupo;




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

declare rol int;

IF(tipo = "no") then
 insert into proyecto_has_usuario values(identificador,id_user,CURDATE());
else 
	
	insert into grupo_invest_has_usuario values(identificador,id_user,Curdate(),(SELECT (tipo *1)));
end if;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

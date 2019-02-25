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

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.proyecto
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(500) DEFAULT NULL,
  `fecha_proyecto` date DEFAULT NULL,
  `estado_proyecto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla sigepi.tipo_usuario
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nom_tipo_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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
	tipoUsuario as tipo_user
	;
	
	end if;


end//
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

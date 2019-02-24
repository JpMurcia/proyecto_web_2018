-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.21 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sigepi
CREATE DATABASE IF NOT EXISTS `sigepi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sigepi`;

-- Dumping structure for procedure sigepi.proced_consul_grupo
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

-- Dumping structure for procedure sigepi.proced_consul_grupo_has_usu
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

-- Dumping structure for procedure sigepi.proced_consul_miembros_semi
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

-- Dumping structure for procedure sigepi.proced_consul_miembro_simple
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_miembro_simple`(
	IN `nom_grupo` VARCHAR(500)




)
BEGIN

SELECT  usuario.id_usuario,usuario.Programa, usuario.nom_usuario, true as estado,usuario.url_foto_usuario, usuario.email_usuario 
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

-- Dumping structure for procedure sigepi.proced_consul_proyecto
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_proyecto`(
	IN `id_grupo` INT





)
BEGIN




select 
proyecto.id_proyecto,
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
	



END//
DELIMITER ;

-- Dumping structure for procedure sigepi.proced_consul_proyec_act
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

-- Dumping structure for procedure sigepi.proced_consul_proyec_inac
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

-- Dumping structure for procedure sigepi.proced_consul_proye_user_grupo
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

-- Dumping structure for procedure sigepi.proced_consul_semilleros
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

-- Dumping structure for procedure sigepi.proced_consul_semi_pag
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

-- Dumping structure for procedure sigepi.proced_consul_user_proye_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user_proye_grupo`(
	IN `grupo_perte` VARCHAR(500),
	IN `id_user` INT


)
    COMMENT 'trae los proyectos que tiene un usuario en grupo x'
BEGIN


SELECT  proyecto.id_proyecto,proyecto.nom_proyecto as proyectos FROM usuario
INNER JOIN usuario_has_proyecto ON usuario_has_proyecto.usuario_id_usuario=usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_proyecto = usuario_has_proyecto.proyecto_id_proyecto
INNER JOIN proyecto_has_grupo_inve_semillero AS proye_has ON proye_has.proyecto_id_proyecto=proyecto.id_proyecto
INNER JOIN grupo_inve_semillero grupo ON grupo.id_grupo=proye_has.grupo_inve_semillero_id_grupo
WHERE grupo.nom_grupo=grupo_perte AND usuario.id_usuario=id_user;

END//
DELIMITER ;

-- Dumping structure for procedure sigepi.proced_validar_user
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

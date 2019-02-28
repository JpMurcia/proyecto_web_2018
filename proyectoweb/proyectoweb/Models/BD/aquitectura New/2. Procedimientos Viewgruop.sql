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
CREATE DATABASE IF NOT EXISTS `viewgroup3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `viewgroup3`;

-- Volcando estructura para procedimiento viewgroup3.proced_consultar_product_semillero
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

-- Volcando estructura para procedimiento viewgroup3.proced_consul_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo`(
	IN `id_grupo` INT
)
BEGIN

select grupo.nom_grupo, grupo.email_grupo, grupo.telefo_grupo, grupo.direcc_grupo,
grupo.siglas_signif_grupo, grupo.objetivo_grupo, grupo.mision_grupo, grupo.vision_grupo,
grupo.justif_grupo,grupo.quien_somos_grupo from grupo_invest as grupo
where grupo.id_grupo_invest=id_grupo 
order by grupo.id_grupo_invest asc;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_grupo_id
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_grupo_id`()
BEGIN

select grupo_invest.id_grupo_invest FROM grupo_invest
order by grupo_invest.id_grupo_invest  desc 
LIMIT 1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_menu_view
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
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_soport_pag_not`(
	IN `id_grupo` INT






)
BEGIN

select soporte.url_imagene,soporte.titulo_soporte,soporte.descrip_soperte,soporte.Fecha_publica FROM soporte
inner JOIN proyecto on proyecto.id_produc= soporte.fk_proyecto
inner join grupo_invest on grupo_invest.id_grupo_invest = proyecto.fk_id_grupo_invest
where soporte.estado_soporte=1 and grupo_invest.id_grupo_invest=id_grupo
order  by soporte.id_soporte DESC
LIMIT 10;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_consul_user
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

-- Volcando estructura para procedimiento viewgroup3.proced_consul_user_date
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_consul_user_date`(
	IN `id_user` INT

)
BEGIN

SELECT usuario.id_usuario,  usuario.nom_usuario,usuario.url_foto_usuario from usuario
WHERE usuario.id_usuario=id_user;

END//
DELIMITER ;

-- Volcando estructura para procedimiento viewgroup3.proced_create_grupo
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

-- Volcando estructura para procedimiento viewgroup3.proced_update_grupo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proced_update_grupo`(
	IN `id_grupo` INT,
	IN `email` VARCHAR(50),
	IN `telefo` VARCHAR(50),
	IN `direcc` VARCHAR(50),
	IN `logo` VARCHAR(500),
	IN `sigla` VARCHAR(500),
	IN `objetivo` VARCHAR(500),
	IN `mision` VARCHAR(500),
	IN `vision` VARCHAR(500),
	IN `justif` VARCHAR(500),
	IN `quien` VARCHAR(500)


)
BEGIN
update grupo_invest as g
set g.email_grupo=(if(email = '', g.email_grupo, email)), 
g.telefo_grupo=(if(telefo = '', g.telefo_grupo, telefo)),
g.direcc_grupo=(if(direcc = '', g.direcc_grupo, direcc)),
 g.url_logo_grupo= (if(logo = '', g.url_logo_grupo,logo)),
 
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

-- Volcando estructura para procedimiento viewgroup3.proyec_semi_trabajo_consul
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

-- Volcando estructura para procedimiento viewgroup3.update_proye_enlases_usuario
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

-- Volcando estructura para procedimiento viewgroup3.vista_pagina_propia
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `vista_pagina_propia`(
	IN `nada` INT

)
BEGIN
SELECT pagina_propia.Nom_grupo, pagina_propia.Contenido, pagina_propia.Creadores, pagina_propia.Acredicimiento,pagina_propia.Logo
from pagina_propia ;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

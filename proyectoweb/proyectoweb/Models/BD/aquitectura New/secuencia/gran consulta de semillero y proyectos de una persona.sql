SELECT  proyecto.id_produc as identificador,proyecto.nom_proyecto as trabajo,"no"as cargo  FROM usuario
INNER JOIN proyecto_has_usuario ON proyecto_has_usuario.pkf_id_usuario= usuario.id_usuario 
INNER JOIN proyecto ON proyecto.id_produc = proyecto_has_usuario.pkf_id_proyecto

INNER JOIN grupo_invest grupo ON grupo.id_grupo_invest=proyecto.fk_id_grupo_invest
WHERE grupo.id_grupo_invest=111 AND usuario.id_usuario=24
UNION
SELECT  grupo.id_grupo_invest as identificador ,grupo.nom_grupo as trabajo,
"nose wey" as cargo FROM usuario
inner join grupo_invest_has_usuario integra on integra.pkf_id_usuario=usuario.id_usuario
inner join grupo_invest as grupo on grupo.id_grupo_invest=integra.pkf_id_grupo_invest
where grupo.fk_grupo_semi=111 AND usuario.id_usuario=24;
BEGIN

SELECT  usuario.id_usuario,usuario.Programa, usuario.nom_usuario, true as estado,usuario.url_foto_usuario, usuario.email_usuario ,"semillero" as tipo 
FROM grupo_inve_semillero 
INNER JOIN grupo_inve_semillero AS semillero ON grupo_inve_semillero.id_grupo=semillero.grupo_inve_semillero_id_grupo
inner join integrante_has_grupo_inve_semillero integra on integra.grupo_inve_semillero_id_grupo = semillero.id_grupo
inner join usuario on usuario.id_usuario = integra.usuario_id_usuario
WHERE 
semillero.id_grupo <> semillero.grupo_inve_semillero_id_grupo AND
grupo_inve_semillero.nom_grupo=nom_grupo
 GROUP by usuario.id_usuario
union

SELECT  usuario.id_usuario,usuario.Programa, usuario.nom_usuario, true as estado,usuario.url_foto_usuario, usuario.email_usuario,"proyecto" as tipo 
FROM usuario
inner join usuario_has_proyecto as user_has on user_has.usuario_id_usuario= usuario.id_usuario
inner join proyecto on proyecto.id_proyecto=user_has.proyecto_id_proyecto
INNER JOIN proyecto_has_grupo_inve_semillero AS proyec_has ON proyec_has.proyecto_id_proyecto=proyecto.id_proyecto
inner join grupo_inve_semillero grupo on grupo.id_grupo = proyec_has.grupo_inve_semillero_id_grupo

WHERE 
grupo.nom_grupo = nom_grupo
  GROUP by usuario.id_usuario
;



END
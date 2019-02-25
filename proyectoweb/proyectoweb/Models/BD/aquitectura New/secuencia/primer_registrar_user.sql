

 # Este existe?, si es asi traigame id_user y todos us datos y grupo alque pertenece
CALL `proced_validar_user`('h.ing@udla.edu.co', 'giecom');

 # traer todo los datos del grupo ,  
CALL `proced_consul_grupo`('giecom');

 # traer todos los semillero perteneciente al grupo de investigacion(puede ser N)  
CALL `proced_consul_semilleros`('giecom');


 # traer del grupo de investigacion y semillero 
CALL `proced_consul_proyecto`('111');



 # traer los miembros de los grupos tanto de semillero, como los que tiene en proyecto
CALL `proced_consul_miembro_simple`('giecom');


 
 
  # traer los proyecto relacionado con "X" grupo y "X" id_mienbro solo para consultar en la modal
CALL `proced_consul_user_proye_grupo`('111', '14');



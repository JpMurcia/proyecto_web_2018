SELECT pagina_web.id_pagina, pagina_web.fk_id_plantilla, pagina_web.grupo_invest_id_grupo_invest, 
grupo_invest.nom_grupo, CONCAT("../",grupo_invest.url_logo_grupo) as url_logo_grupo ,grupo_invest.siglas_signif_grupo from plantilla
inner join pagina_web on pagina_web.fk_id_plantilla =plantilla.id_plantilla
inner join grupo_invest on pagina_web.grupo_invest_id_grupo_invest=grupo_invest.id_grupo_invest
where pagina_web.estado_pag=1
order by pagina_web.id_pagina Desc;
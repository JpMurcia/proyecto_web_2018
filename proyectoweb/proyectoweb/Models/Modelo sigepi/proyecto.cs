
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{
    public class proyecto
    {
        
        public string idProyecto { get; set; }
        public string nombre { get; set; }

    }

    //public DataTable consultarProyecto(modelUsuario obj)
    //{
    //    List<Parametro> p = new List<Parametro>();
    //    p.Add(new Parametro(
    //        "grupo_perte",
    //        obj.grupo,
    //        "VARCHAR",
    //        ParameterDirection.Input
    //        ));
    //    p.Add(new Parametro(
    //        "contra",
    //        obj.id,
    //        "VARCHAR",
    //        ParameterDirection.Input
    //        ));

    //    return conect.ExecuteProcedure("proced_consul_user_proye_grupo", p);

    //}
}
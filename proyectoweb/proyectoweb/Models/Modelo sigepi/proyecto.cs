using proyectoweb.Models.conexion;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{
    public class proyecto
    {
        private Conexion conect = new Conexion();
        public string idProyecto { get; set; }
        public string nombre { get; set; }



        public DataTable consultarProyectoDeMiembro(usuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "grupo_perte",
                obj.grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "id_user",
                obj.idUsuario,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_user_proye_grupo", p);


        }
    }
}
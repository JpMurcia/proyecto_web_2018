using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class Pagina_Heli_MasterController
    {
        grupo_investigacion grupoVG = new grupo_investigacion();
        proyecto proyecto = new proyecto();

        public DataTable consultarsemilleroControllerVG(grupo_investigacion groupvg)
        {
            return grupoVG.consultarSemillero(groupvg);
        }

        public DataTable consultarsemilleroDatos(grupo_investigacion groupvg)
        {
            return grupoVG.consultar_data_grupo(groupvg);
        }
        public DataTable consultarProyectosAct(grupo_investigacion grupo)
        {

            return grupoVG.consultarproductos(grupo);
        }
        public DataTable consultarProyecto(proyecto proyec)
        {

            return proyecto.consul_proyecto(proyec);
        }




    }
}
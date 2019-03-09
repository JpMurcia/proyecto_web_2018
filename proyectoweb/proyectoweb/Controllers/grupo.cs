using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using proyectoweb.Models.ModelosViewGroup;
using System.Data;

namespace proyectoweb.Controllers
{
    public class grupo
    {
        grupo_investigacion grupoinv = new grupo_investigacion();


        public DataTable consultarGrupo(grupo_investigacion grupo)
        {

            return grupoinv.consultar_data_grupo(grupo);

        }

        public DataTable consultarProyectosAct(grupo_investigacion grupo)
        {

            return grupoinv.consultarproductos(grupo);
        }

        public DataTable consultarProyectosInt(grupo_investigacion grupo)
        {

            return grupoinv.consultarProyectoInac(grupo);
        }
    }
}
using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.Modelo_viewGroup
{

  

    public class pagina_propia
    {

        private ConexionPropio conect = new ConexionPropio();






        public DataTable consul_dato()
        {
            List<Parametro> p = new List<Parametro>();


            return conect.ExecuteProcedure("vista_apropia", p);


        }


    }

    
}
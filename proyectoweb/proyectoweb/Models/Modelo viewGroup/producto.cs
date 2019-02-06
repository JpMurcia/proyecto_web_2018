using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class producto
    {
        public string idProducto { get; set; }
        public string nom_producto { get; set; }
        public DateTime fecha_producto { get; set; }
        public Boolean estado { get; set; }
        public string lugarProducto { get; set; }
        public Boolean publicProducto { get; set; }
        public grupo_investigacion grupoInvestigacion { get; set; }

        private ConexionPropio conect = new ConexionPropio();



        //public DataTable consultar_menu_nom(menu obj)
        //{
        //    List<Parametro> p = new List<Parametro>();
        //    p.Add(new Parametro(
        //        "id_rol",
        //        obj.fk_rol,
        //        "VARCHAR",
        //        ParameterDirection.Input
        //        ));


        //    return conect.ExecuteProcedure("proced_consul_menu_view", p);
        //}

        public DataTable consultar_producto_semillero(producto obj) {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_rol",
                obj.idProducto,
                "VARCHAR",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("proced_consul_menu_view", p);
        }


    }
}
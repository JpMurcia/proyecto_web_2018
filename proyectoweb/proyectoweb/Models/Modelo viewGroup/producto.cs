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
        private ConexionPropio conect = new ConexionPropio();
        public string idProducto { get; set; }
        public string nom_producto { get; set; }


        public Boolean estado { get; set; }
        public DateTime fechaProducto { get; set; }
        public Boolean publicProducto { get; set; }
        public string fk_grupo { get; set; }


        public DataTable  CrearProductoModelo (producto obj){

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "pk_grupo",
                obj.fk_grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consultar_product_semillero", p);


        }


    }
}
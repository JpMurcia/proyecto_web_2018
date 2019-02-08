using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class producto
    {
        public string idProducto { get; set; }
        public DateTime fechaProducto { get; set; }
        public Boolean estado { get; set; }
        public string lugarProducto { get; set; }
        public Boolean publicProducto { get; set; }
        public grupo_investigacion grupoInvestigacion { get; set; }
        public producto fkProducto { get; set; }
        public tipoProducto tipo_producto { get; set; }
    }
}
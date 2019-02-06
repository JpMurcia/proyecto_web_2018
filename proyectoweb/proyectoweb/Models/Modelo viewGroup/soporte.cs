using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class soporta
    {
        public string idSoporte { get; set; }
        public string urlImage { get; set; }
        public string titulo { get; set; }
        public string descrip { get; set; }
        public Boolean estado { get; set; }
        public DateTime fecha { get; set; }
        public producto fkProducto { get; set; }
    }
}
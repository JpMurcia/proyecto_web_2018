using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class Diseño
    {
        public string id_diseno { get; set; }
        public string ColorDiseño { get; set; }
        public plantilla fk_platilla { get; set; }


    }
}
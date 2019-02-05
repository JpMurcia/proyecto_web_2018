using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.Modelo_viewGroup
{
    public class tipo_has_menu
    {
        public tipo_usuario pk_fk_tipo_usuario { get; set; }
        public menu pk_fk_menu { get; set; }
    }
}
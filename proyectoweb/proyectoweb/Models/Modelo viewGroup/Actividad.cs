using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class Actividad
    {
        public string idActividad { get; set; }
    
        public string nombreActividad { get; set; }
        public string descripcion { get; set; }
        public DateTime fechaActividad { get; set; }
        public string entregas { get; set; }
        public string conclusion { get; set; }
        public string avance { get; set; }
        public string apreaciacion { get; set; }
    }
}
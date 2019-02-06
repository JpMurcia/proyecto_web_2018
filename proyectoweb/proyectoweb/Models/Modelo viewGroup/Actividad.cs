using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class Actividad

    {
        public string idActividad { get; set; }
        public producto MyProperty { get; set; }
        public string nombreActividad { get; set; }
        public string descripcion { get; set; }
        public DateTime fechaActividad { get; set; }

        public Actividad(string idActividad, producto myProperty, string nombreActividad, string descripcion, DateTime fechaActividad)
        {
            this.idActividad = idActividad;
            MyProperty = myProperty;
            this.nombreActividad = nombreActividad;
            this.descripcion = descripcion;
            this.fechaActividad = fechaActividad;
        }

        
        
    }
}
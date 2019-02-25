using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class faseCronograma
    {
        public string idCronograma { get; set; }
        public string nombreCronograma { get; set; }
        public producto fkProductoCronograma { get; set; }
    }
}
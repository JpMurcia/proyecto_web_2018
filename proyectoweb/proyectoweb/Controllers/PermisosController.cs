using proyectoweb.Models.ModeloSigepi;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class PermisosController
    {
        private Grupo_inve_semillero grupo = new Grupo_inve_semillero();


        public DataTable consultarMiembroController(Grupo_inve_semillero group)
        {
            return grupo.consultarMiembros(group);
        }

    }
}
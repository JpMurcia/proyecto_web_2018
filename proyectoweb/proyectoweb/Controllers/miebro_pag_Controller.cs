using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class miebro_pag_Controller
    {

        private grupo_investigacion grupoVG = new grupo_investigacion();

        public DataTable consultar_miembros(grupo_investigacion group) {



            return grupoVG.consul_miembro_pagina(group);
        }


    }
}


using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class NoticiaController


    {
         
        proyecto product = new proyecto();

        grupo_investigacion semillero = new grupo_investigacion();

        //public DataTable ConsultarProduc(proyecto produc)
        //{
        //    return product.CrearProductoModelo(produc);
        //}

        public DataTable consultarSemillero(grupo_investigacion semi) {

            return semillero.consultarSemillero(semi);
        }

    }
}
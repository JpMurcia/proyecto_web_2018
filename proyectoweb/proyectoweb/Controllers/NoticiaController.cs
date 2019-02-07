

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
         
        producto product = new producto();

        grupo_investigacion semillero = new grupo_investigacion();

        public DataTable ConsultarProduc(producto produc)
        {
            return product.CrearProductoModelo(produc);
        }

        public DataTable consultarSemillero(grupo_investigacion semi) {

            return semillero.consultarSemillero(semi);
        }

    }
}
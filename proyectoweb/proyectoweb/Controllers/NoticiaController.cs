

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

        soporta noticia = new soporta();
        grupo_investigacion grupovg = new grupo_investigacion();

        //public DataTable ConsultarProduc(proyecto produc)
        //{
        //    return product.CrearProductoModelo(produc);
        //}

        //public DataTable consultarSemillero(grupo_investigacion semi) {

        //    return semillero.consultarSemillero(semi);
        //}

        public DataTable consultarProductos(grupo_investigacion grupo) {

            return grupovg.consultarproductos(grupo);

        }

        public DataTable crearNoticias(soporta noti)
        {

            return noticia.crear_soporte(noti);

        }

        public DataTable consulNoticias(soporta noti)
        {

            return noticia.consul_soporte(noti);

        }
        public DataTable consulNoticiaDatos(soporta noti)
        {

            return noticia.consultar_DatoSoporte(noti);

        }

        public DataTable updateNoticias(soporta noti)
        {

            return noticia.update_soporte(noti);

        }

        public DataTable deleNoticias(soporta noti)
        {

            return noticia.dele_soporte(noti);

        }

        public DataTable ResporteGrupoNotica(soporta noti)
        {

            return noticia.consultar_ReporteNoticia(noti);

        }

        public DataTable ResporteGeneral()
        {

            return noticia.consultar_ReporteGeneral();

        }


    }
}
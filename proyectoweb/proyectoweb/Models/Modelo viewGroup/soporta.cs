using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class soporta
    {

        public string idSoporte { get; set; }
        public string urlImage { get; set; }
        public string titulo { get; set; }
        public string descrip { get; set; }
        public string estado { get; set; }
        public string fecha { get; set; }
        public string fk_proyec { get; set; }
        public string id_grupo { get; set; }

        private ConexionPropio conect = new ConexionPropio();



        public DataTable crear_soporte(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
              "pk_fk_produc",
              obj.fk_proyec,
              "VARCHAR",
              ParameterDirection.Input
              ));

            p.Add(new Parametro(
                "url_imagen",
                obj.urlImage,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "titulo_soporte",
                obj.titulo,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
               "descrip_soporte",
               obj.descrip,
               "VARCHAR",
               ParameterDirection.Input
               ));


            return conect.ExecuteProcedure("proced_create_soport_not", p);

        }


        public DataTable update_soporte(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
             "id_soport",
             obj.idSoporte,
             "VARCHAR",
             ParameterDirection.Input
             ));

            p.Add(new Parametro(
               "upd_imagen",
               obj.urlImage,
               "VARCHAR",
               ParameterDirection.Input
               ));

            p.Add(new Parametro(
              "upd_produc",
              obj.fk_proyec,
              "VARCHAR",
              ParameterDirection.Input
              ));

           
            p.Add(new Parametro(
                "upd_titulo",
                obj.titulo,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
               "upd_descri",
               obj.descrip,
               "VARCHAR",
               ParameterDirection.Input
               ));


            return conect.ExecuteProcedure("proced_update_soport", p);

        }

        public DataTable consul_soporte(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
             "id_grupo",
             obj.id_grupo,
             "VARCHAR",
             ParameterDirection.Input
             ));



            return conect.ExecuteProcedure("proced_consul_soport_pag_not", p);

        }
        public DataTable consultar_DatoSoporte(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
             "id_noticia",
             obj.idSoporte,
             "VARCHAR",
             ParameterDirection.Input
             ));



            return conect.ExecuteProcedure("Consultar_noticia", p);

        }


        public DataTable dele_soporte(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
             "id_soport",
             obj.idSoporte,
             "VARCHAR",
             ParameterDirection.Input
             ));



            return conect.ExecuteProcedure("proced_delete_soport", p);

        }

        public DataTable consultar_ReporteNoticia(soporta obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
             "id_grupo",
             obj.id_grupo,
             "VARCHAR",
             ParameterDirection.Input
             ));



            return conect.ExecuteProcedure("proced_report_Noticias", p);

        }

        public DataTable consultar_ReporteGeneral()
        {


            List<Parametro> p = new List<Parametro>();

           



            return conect.ExecuteProcedure("Reporte_General", p);

        }




    }
}
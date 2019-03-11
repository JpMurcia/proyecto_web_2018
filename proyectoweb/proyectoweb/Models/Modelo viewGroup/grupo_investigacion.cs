using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class grupo_investigacion
    {
        private ConexionPropio conect = new ConexionPropio();


        public string idGrupoInvestigacion { get; set; }
        public string grupo_nombre { get; set; }

        public string siglas { get; set; }
        public string objetivo { get; set; }
        public string ProgramaGrupo { get; set; }
        public string urlLogo { get; set; }
        public string mision { get; set; }
        public string vision { get; set; }
        public string justificacion { get; set; }
        public string quienesSomos { get; set; }
    
       // public string url_imagen { get; set; }
        public string estado { get; set; }
        public string fk_id_grupo { get; set; }
        public string telefono { get; set; }
        public string correo   { get; set; }
        public string direccion { get; set; }
        

        public DataTable consultarSemillero(grupo_investigacion obj) {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "pk_grupo",
                obj.idGrupoInvestigacion,
                "INT",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_semillero", p);

        }
        public DataTable consultarProyectoInac(grupo_investigacion obj)
        {


            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "pk_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proye_consul_int_proced", p);

        }

        public DataTable consultarproductos(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "pk_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proye_consul_act_proced", p);

        }


        public DataTable consultar_data_grupo(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_grupo", p);

        }


        public DataTable update_grupo(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));
                      
            p.Add(new Parametro(
                "email",
                 obj.correo,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "telefo",
                obj.telefono,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "direcc",
                obj.direccion,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "logo",
                 obj.urlLogo,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "sigla",
                obj.siglas,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "objetivo",
                obj.objetivo,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "mision",
                 obj.mision,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "vision",
                obj.vision,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "justif",
                obj.justificacion,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "quien",
                 obj.quienesSomos,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
          






            return conect.ExecuteProcedure("proced_update_grupo", p);

        }

        public DataTable consul_miembro_pagina(grupo_investigacion obj)
        {
            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
               "pk_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
               ));

            return conect.ExecuteProcedure("p_consul_miembro_pag", p);
        }



        public DataTable Crear_grupo(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "nom_grupo",
                 obj.grupo_nombre,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "email_grupo",
                 obj.correo,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "telefo_grupo",
                obj.telefono,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "direcc_grupo",
                obj.direccion,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "url_logo_grupo",
                 obj.urlLogo,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "siglas",
                obj.siglas,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "objetivo",
                obj.objetivo,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "mision",
                 obj.mision,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "vision",
                obj.vision,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "justif",
                obj.justificacion,
                "VARCHAR",
                ParameterDirection.Input
                 ));
            p.Add(new Parametro(
                "quien",
                 obj.quienesSomos,
                 "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "fk_grupo",
                obj.fk_id_grupo,
                "VARCHAR",
                 ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "fk_programa",
                obj.ProgramaGrupo,
                "VARCHAR",
                ParameterDirection.Input
                 ));






            return conect.ExecuteProcedure("proced_create_grupo", p);

        }

        public DataTable validar_paginaPublicada(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("validar_pagina", p);

        }



    }
}
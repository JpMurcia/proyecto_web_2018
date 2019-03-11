using proyectoweb.Models.Modelo_viewGroup;
using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class FormularioDepaginaController
    {


        private Models.ModelosViewGroup.proyecto proyec = new Models.ModelosViewGroup.proyecto();

        private enlace enlace = new enlace();

        private Grupo_inve_semillero grupo = new Grupo_inve_semillero();

        private grupo_investigacion grupoVG = new grupo_investigacion();

        private modelUsuario miembro = new modelUsuario();

        private usuario usur = new usuario();


        public DataTable consultarsemilleroControllerVG(grupo_investigacion groupvg)
        {
            return grupoVG.consultarSemillero(groupvg);
        }

        public FormularioDepaginaController()
        {

        }

        public DataTable consultar_grupo_Controller(grupo_investigacion group)
        {
            return grupoVG.consultar_data_grupo(group);
        }


        public DataTable consultarGrupoController(Grupo_inve_semillero group)
        {
            return grupo.consultargrupoModel(group);
        }



        public DataTable consultarsemilleroController(Grupo_inve_semillero group)
        {
            return grupo.consultarsemilleroModel(group);
        }

        public DataTable consultarmiembroController(Grupo_inve_semillero group)
        {
            return grupo.consultarMiembros(group);
        }

        public DataTable consultarProyectoActController(grupo_investigacion grupo)
        {
            return grupoVG.consultarproductos(grupo);
        }

        public DataTable consultarProyectoInacController(grupo_investigacion grupo)
        {
            return grupoVG.consultarProyectoInac(grupo);
        }

        //public DataTable consultarProyectoDeMiembroController(modelUsuario user)
        //{
        //    return miembro.consultarProyecto(user);
        //}
        public DataTable update_grupo(grupo_investigacion grup) {

            return grupoVG.update_grupo(grup);
        }


        public DataTable consultarProyectoDeMiembroController(usuario user)
        {
            return usur.consultarProyectodeMiembro(user);
        }

        public DataTable update_proyec(Models.ModelosViewGroup.proyecto pro)
        {

            return proyec.update_proyecto(pro);
        }


        public DataTable update_enlace(enlace enla)
        {

            return enlace.update_enlace(enla);
        }

        public DataTable consul_data_user(usuario user) {

            return usur.consul_data_basi(user);
        }

        public DataTable consulProyecto(Models.ModelosViewGroup.proyecto pro)
        {
            return proyec.consul_proyecto(pro);
        }



        pagina_web pagWeb = new pagina_web();


        public DataTable create_paginaWeb(pagina_web pag) {

            return pagWeb.CrearPagina(pag);

        }

        public DataTable validar_paginaWeb(grupo_investigacion grupo)
        {

            return grupoVG.validar_paginaPublicada(grupo);

        }



    }
}
 

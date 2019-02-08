using proyectoweb.Models.Modelo_viewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class administracion : System.Web.UI.MasterPage
    {

        menu menuD = new menu();

        public DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            llenarmenu();
        }

        public void llenarmenu()
        {

            // tipo_menu.pk_fk_tipo_usuario.id_tipo_usuario = "1";
            // tipo_menu.pk_fk_tipo_usuario.id_tipo_usuario = Session["tipo"].ToString();
            Session["tipo"] = "1";
            menuD.fk_rol = Session["tipo"].ToString();

            dt = menuD.consultar_menu_view(menuD);

            List<menuPadres> obj2 = new List<menuPadres>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["padre"].ToString().Equals("Nulo"))
                {

                    List<menuMostrar> obj = new List<menuMostrar>();
                    menuPadres mp = new menuPadres();
                    mp.nombre = dt.Rows[i]["nom_menu"].ToString();
                    mp.url = dt.Rows[i]["url_pagina"].ToString();
                    mp.icon = dt.Rows[i]["icono"].ToString();
                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        if (dt.Rows[i]["id_menu"].ToString() == dt.Rows[j]["padre"].ToString())
                        {

                            menuMostrar me = new menuMostrar();
                            me.nombre = dt.Rows[j]["nom_menu"].ToString();
                            me.url = dt.Rows[j]["url_pagina"].ToString();
                            me.icon = dt.Rows[j]["icono"].ToString();
                            obj.Add(me);
                        }
                    }
                    mp.hijos = obj;
                    obj2.Add(mp);
                }

            }

            Padre.DataSource = obj2;
            Padre.DataBind();

            //menuD.nom_menu = dt.Rows[0]["nom_menu"].ToString();

            //RepeaterMenu.DataSource = dt;

            //RepeaterMenu.DataBind();

            // grupo.justificacion = dt.Rows[0]["justif_grupo"].ToString();
        }
    }
    class menuMostrar
    {
        public String nombre { get; set; }
        public String icon { get; set; }
        public String url { get; set; }

    }

    class menuPadres
    {
        public String nombre { get; set; }
        public String icon { get; set; }
        public String url { get; set; }
        public List<menuMostrar> hijos { get; set; }

    }

    //protected void ItemBound(object sender, RepeaterItemEventArgs args)
    //{
    //if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
    //{
    //    Repeater childRepeater = (Repeater)args.Item.FindControl("ChildRepeater");
    //    childRepeater.DataSource = ...;
    //    childRepeater.DataBind();
    //}
    //}
}
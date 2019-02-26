using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views.ViewsUser
{
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        public DataTable cosultarA()
        {

            return activy.consul_acti(act);
        }

        public void llenar() {


        }
    }
}
using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace proyectoweb.Models.conexion
{
    public class ConexionPropio
    {

        public string schema = "viewgroup3";
        public string Connection()
        {
            return ConfigurationManager.ConnectionStrings["conn2"].ConnectionString;
        }
        public DataTable ExecuteProcedure(String procedure, List<Parametro> parametros)
        {
            MySqlConnection conn2 = new MySqlConnection(this.Connection());
            conn2.Open();
            MySqlCommand comando = new MySqlCommand(procedure, conn2);
            comando.CommandType = CommandType.StoredProcedure;
            DataTable datos = new DataTable();
            if (parametros != null)
            {
                foreach (Parametro p in parametros)
                {
                    comando.Parameters.Add(new MySqlParameter(p.nombre, p.tipo));
                    comando.Parameters[p.nombre].Direction = p.direccion;
                    if (p.direccion == ParameterDirection.Input)
                    {
                        comando.Parameters[p.nombre].Value = p.valor;
                    }
                }
            }
            try
            {
                datos.Load(comando.ExecuteReader());
            }
            catch (Exception ex)
            {
                datos = this.ManejadorDeError(ex.Message);
            }
            finally
            {
                if (conn2 != null)
                {
                    if (conn2.State == ConnectionState.Open)
                    {
                        conn2.Close();
                    }
                }
            }

            return datos;
        }
        public DataTable ManejadorDeError(string ef)
        {
            DataTable datos = new DataTable();
            datos.Columns.Add("TIPO");
            datos.Columns.Add("MENSAJE");
            datos.Columns.Add("VALORES");
            //dt.Rows.Add("Ha ocurrido un error, por favor verifique e intente nuevamente", "D");
            datos.Rows.Add("D", ef, "");
            return datos;
        }

    }
}
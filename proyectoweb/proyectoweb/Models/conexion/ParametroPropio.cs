using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.conexion
{
    public class ParametroPropio
    {


        public string nombre { get; set; }
        public object valor { get; set; }
        public MySqlDbType tipo { get; set; }
        public ParameterDirection direccion { get; set; }

        public ParametroPropio(string nombre, object valor, string tipo, ParameterDirection direccion)
        {
            this.nombre = nombre;
            this.valor = valor;
            this.tipo = this.MsyqlConversion(tipo);
            this.direccion = direccion;
        }
        public MySqlDbType MsyqlConversion(string type)
        {
            switch (type)
            {
                case "INTEGER":
                    return MySqlDbType.Int32;
                case "VARCHAR":
                    return MySqlDbType.VarChar;
                case "DATE":
                    return MySqlDbType.Date;
                case "DATETIME":
                    return MySqlDbType.DateTime;
                case "TIME":
                    return MySqlDbType.Time;
                case "CHAR":
                    return MySqlDbType.VarChar;
                case "BLOB":
                    return MySqlDbType.Blob;
                case "TEXT":
                    return MySqlDbType.Text;
                default:
                    return MySqlDbType.VarChar;
            }
        }

    }
}
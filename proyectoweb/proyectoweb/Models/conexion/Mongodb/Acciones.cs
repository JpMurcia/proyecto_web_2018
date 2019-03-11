using MongoDB.Bson;
using MongoDB.Driver;
using MongoDB.Driver.Builders;
using paginaPropia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace paginaPropia
{
    public class Acciones
    {
        private MongoDatabase cliente = new MongoClient("mongodb://TallerG1:root@127.0.0.1").GetServer().GetDatabase("viewgroup");//si un cliente se crea sin parametro se conectara automaticamente en local houst

        // var client = new MongoClient("mongodb://host:27017,host2:27017/?replicaSet=rs0"); //se aguega la cadena de conexion para que se conecte para otro servidor 
      

        //public List<paginaPropia> obtenerSoporte()
        //{

            
        //    return cliente.GetCollection<paginaPropia>("pagina_propia").AsQueryable().ToList(); //pasamos la coleccion y asi se trae toda la coleccion 
        //}

        public string obtnerSoportePorID(string id)
        {
            var id_1 = new ObjectId(id);


            var con = Query<paginaPropia>.EQ(p => p.id, id_1);
            MongoCollection mc = cliente.GetCollection<paginaPropia>("pagina_propia");
            var ar = mc.FindAs<paginaPropia>(con).ToString();
            return ar; //solo una es por el id 
        }

        public bool  insertar_soporte(paginaPropia nuevo)
        {
            try{


               cliente.GetCollection<paginaPropia>("pagina_propia").Insert(nuevo); //pasamos la coleccion y asi se trae toda la coleccion 

                return true;
            }

            catch(Exception)

            {
                return false;
            }
          
        }


    }
}

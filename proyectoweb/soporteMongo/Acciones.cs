using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace soporteMongo
{
    public class Acciones
    {
        private MongoClient cliente = new MongoClient();//si un cliente se crea sin parametro se conectara automaticamente en local houst

        // var client = new MongoClient("mongodb://host:27017,host2:27017/?replicaSet=rs0"); //se aguega la cadena de conexion para que se conecte para otro servidor 

        public List<soporteMongo> obtenerSoporte()
        {

            var db = cliente.GetDatabase("jp");//nobre de la la base de datos
            return db.GetCollection<soporteMongo>("soportes").AsQueryable().ToList(); //pasamos la coleccion y asi se trae toda la coleccion 
        }

        public soporteMongo obtnerSoportePorID(string id)
        {
            var id_1 = new ObjectId(id);

            var db = cliente.GetDatabase("jp");//nobre de la la base de datos


            return db.GetCollection<soporteMongo>("soportes").Find(p=> p.id == id_1).SingleOrDefault(); //solo una es por el id 
        }

        public bool  insertar_soporte(soporteMongo nuevo)
        {
            try{


                var db = cliente.GetDatabase("jp");//nobre de la la base de datos
               db.GetCollection<soporteMongo>("soportes").InsertOne(nuevo); //pasamos la coleccion y asi se trae toda la coleccion 

                return true;
            }

            catch(Exception)

            {
                return false;
            }
          
        }


    }
}

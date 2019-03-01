using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace soporteMongo
{
    public class soporteMongo
    {
        public ObjectId id { get; set; }

        public string nombre { get; set; }



        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public string imagen { get; set; }
       


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public string descrp { get; set; }


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public ObjectId apellido { get; set; }


    }
}

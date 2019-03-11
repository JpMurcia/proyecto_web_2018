using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace paginaPropia
{
    public class paginaPropia
    {
        public ObjectId id { get; set; }

        public string nom_pagina { get; set; }



        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public string contenido { get; set; }
       


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public string creadores { get; set; }


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public ObjectId acredicimiento { get; set; }


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public ObjectId logo { get; set; }


        [BsonIgnoreIfNull] //si es nullo no la almacene 
        [BsonIgnoreIfDefault]//no la alacene si tiene su valor por defecto
        public ObjectId descripcion { get; set; }

    }
}

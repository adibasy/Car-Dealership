using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace DibasyAuto.App_Code
{
    [DataContract]

    public class Vehicle
    {
       
        public string Make { get; set; }
        public string Model { get; set; }
        public string Year { get; set; }
        public string Milage { get; set; }
        public string Price { get; set; }
        public string description { get; set; }

    }
}
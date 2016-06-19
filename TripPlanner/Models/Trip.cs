using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripPlanner.Models
{


    public class Trip
    {

        public int ID { get; set; }

        public string Destination { get; set; }

        public DateTime Departure { get; set; }

        public DateTime Return { get; set; }

        public int Distance { get; set; }

    }

}
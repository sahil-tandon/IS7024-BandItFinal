using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WcfService1
{
    public class BandJSON
    {
        private string bandId;
        string bandName;
        string members;
        string genre;
        string origin;
        string website;
        string image;
        string datefounded;
        string managerName;

        public string BandName { get => bandName; set => bandName = value; }
        public string Members { get => members; set => members = value; }
        public string Genre { get => genre; set => genre = value; }
        public string Origin { get => origin; set => origin = value; }
        public string Website { get => website; set => website = value; }
        public string Image { get => image; set => image = value; }
        public string Datefounded { get => datefounded; set => datefounded = value; }
        public string ManagerName { get => managerName; set => managerName = value; }
        public string BandId { get => bandId; set => bandId = value; }
    }
}
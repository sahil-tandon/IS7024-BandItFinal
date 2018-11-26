using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace WcfService1
{
    [Serializable()]
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



        [System.Xml.Serialization.XmlElement("BandName")]
        public string BandName { get => bandName; set => bandName = value; }

        [System.Xml.Serialization.XmlElement("Members")]
        public string Members { get => members; set => members = value; }

        [System.Xml.Serialization.XmlElement("Genre")]
        public string Genre { get => genre; set => genre = value; }

        [System.Xml.Serialization.XmlElement("Origin")]
        public string Origin { get => origin; set => origin = value; }

        [System.Xml.Serialization.XmlElement("Website")]
        public string Website { get => website; set => website = value; }

      //  [System.Xml.Serialization.XmlElement("StockNumber")]
        //public string Image { get => image; set => image = value; }

        [System.Xml.Serialization.XmlElement("DateFounded")]
        public string Datefounded { get => datefounded; set => datefounded = value; }

        [System.Xml.Serialization.XmlElement("ManagerName")]
        public string ManagerName { get => managerName; set => managerName = value; }

        public string BandId { get => bandId; set => bandId = value; }
    }

    [Serializable()]
    [System.Xml.Serialization.XmlRoot("BandsCollection")]
    public class BandsCollection
    {
        [XmlArray("Bands")]
        [XmlArrayItem("Band", typeof(BandJSON))]
        public BandJSON[] band { get; set; }
    }
}
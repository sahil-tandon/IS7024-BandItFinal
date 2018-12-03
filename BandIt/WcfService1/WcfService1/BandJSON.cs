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
        string imagePath;
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

        [System.Xml.Serialization.XmlElement("ImagePath")]
        public string ImagePath { get => imagePath; set => imagePath = value; }

        [System.Xml.Serialization.XmlElement("DateFounded")]
        public string Datefounded { get => datefounded; set => datefounded = value; }

        [System.Xml.Serialization.XmlElement("ManagerName")]
        public string ManagerName { get => managerName; set => managerName = value; }

        [XmlArray("Songs")]
        [XmlArrayItem("SongDetails", typeof(Songs))]
        public List<Songs> Songs { get; set; }

        public string BandId { get => bandId; set => bandId = value; }

    }

    [Serializable()]
    [System.Xml.Serialization.XmlRoot("BandsCollection")]
    public class BandsCollection
    {
        [XmlArray("Bands")]
        [XmlArrayItem("Band", typeof(BandJSON))]
        public List<BandJSON> band { get; set; }
    }

    [Serializable()]
    public class Songs {


        private string songName;
        private string duration;
        private string rating;

        //JSON variable to associate the band name to the 
        private string bandName;

        [System.Xml.Serialization.XmlElement("SongName")]
        public string SongName { get => songName; set => songName = value; }

        [System.Xml.Serialization.XmlElement("Duration")]
        public string Duration { get => duration; set => duration = value; }

        [System.Xml.Serialization.XmlElement("Rating")]
        public string Rating { get => rating; set => rating = value; }
        public string BandName { get => bandName; set => bandName = value; }
    }
}
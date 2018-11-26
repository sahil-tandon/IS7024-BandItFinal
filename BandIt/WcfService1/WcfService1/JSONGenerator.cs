using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace WcfService1
{
    public class JSONGenerator
    {
        public string generateBandJSON() {

            string bandJson = "";

            BandsCollection bands = null;
            string path = "BandSchema.xml";

            XmlSerializer serializer = new XmlSerializer(typeof(BandsCollection));

            StreamReader reader = new StreamReader(path);
            bands = (BandsCollection)serializer.Deserialize(reader);

            

            reader.Close();



            return bandJson;
        }
    }
}